//
//  BaseRouter.swift
//  LatestNews
//
//  Created by avanees on 23/07/2020.
//  Copyright © 2020 ave. All rights reserved.
//

import UIKit
import os
import SafariServices

protocol RouterInterface: class {
    func popFromNavigationController(animated: Bool)
    func showAlert(_ alert: UIAlertController)
    func showError(error: Error)
    func dismissNav(animated: Bool)
    func dismissView(animated: Bool)
    func showSafariServicesViewWithUrl(_ url: String)
}

class BaseRouter {
    
    private weak var _viewController: UIViewController?
    
    // To retain view controller reference upon first access
    private var _temporaryStoredViewController: UIViewController?
    
    init(viewController: UIViewController) {
        _temporaryStoredViewController = viewController
        _viewController = viewController
    }
}

extension BaseRouter: RouterInterface {
    func popFromNavigationController(animated: Bool) {
        _ = navigationController?.popViewController(animated: animated)
    }
    
    func showAlert(_ alert: UIAlertController) {
        viewController?.present(alert, animated: true, completion: nil)
    }
    
    func showError(error: Error) {
        let alert = UIAlertController(title: "error.title".localized(),
                                      message: error.localizedDescription,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok".localized(), style: .default, handler: nil)
        alert.addAction(okAction)
        showAlert(alert)
    }
    
    func dismissNav(animated: Bool) {
        navigationController?.dismiss(animated: animated)
    }
    func dismissView(animated: Bool) {
        viewController?.dismiss(animated: animated)
    }
    
    func showSafariServicesViewWithUrl(_ url: String) {
        guard let url = URL(string: url) else { return }
        let safariVC = SFSafariViewController(url: url)
        viewController?.present(safariVC, animated: true)
    }
}

extension BaseRouter {
    
    var viewController: UIViewController? {
        defer { _temporaryStoredViewController = nil }
        return _viewController
    }
    
    var navigationController: UINavigationController? {
        return viewController?.navigationController
    }
    
    func setAsNewNavigationRootForWindow(window: UIWindow?) {
        let nav = UINavigationController()
        window?.rootViewController = nav
        nav.setRootRouter(self)
        window?.makeKeyAndVisible()
    }
}

extension UIViewController {
    
    func presentRouter(_ router: BaseRouter, animated: Bool = true, completion: (() -> Void)? = nil) {
        guard let viewController = router.viewController else { return }
        present(viewController, animated: animated, completion: completion)
    }
    
    func presentRouterNavigationController(_ router: BaseRouter, animated: Bool = true) {
        if let nav = router.navigationController {
            self.present(nav, animated: true)
        }
    }
}

extension UINavigationController {
    
    func pushRouter(_ router: BaseRouter, animated: Bool = true) {
        guard let viewController = router.viewController else { return }
        self.pushViewController(viewController, animated: animated)
    }
    
    func setRootRouter(_ router: BaseRouter, animated: Bool = true) {
        guard let viewController = router.viewController else { return }
        self.setViewControllers([viewController], animated: animated)
    }
}
