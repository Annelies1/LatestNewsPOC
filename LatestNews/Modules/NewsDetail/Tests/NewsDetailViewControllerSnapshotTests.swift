@testable import LatestNews
import SnapshotTesting
import XCTest

final class NewsDetailViewControllerSnapshotTests: SnapshotTestCase {
    
    var sut: NewsDetailViewController!
    var presenterMock: NewsDetailPresenterMock!
    
    override func setUp() {
        super.setUp()
        sut = NewsDetailViewController()
        presenterMock = NewsDetailPresenterMock()
        sut.presenter = presenterMock
    }

    override func tearDown() {
        super.tearDown()
    }

    func testViewWithData() {
        let viewModel = NewsDetailViewModel(imageUrl: "https://www.telegraaf.nl/images/1200x630/filters:format(jpeg):quality(80)/cdn-kiosk-api.telegraaf.nl/eebba4f2-cfca-11ea-acd2-0217670beecd.jpg",
                                            title: "Test title",
                                            author: "Author",
                                            publishingDate: "2020-07-27T10:11:12Z",
                                            description: "description",
                                            content: "content")
        sut.update(with: viewModel)
        assertViewController(for: sut)
    }
}
