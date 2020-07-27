@testable import LatestNews
import SnapshotTesting
import XCTest

final class NewsListTableViewCellSnapshotTests: SnapshotTestCase {
    
    var sut: NewsListTableViewCell!
    
    override func setUp() {
        super.setUp()
        sut = NewsListTableViewCell()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testEmptyImage() {
        let viewModel = NewsListTableViewCellViewModel(imageUrl: nil, title: "title")
        sut.update(with: viewModel)
        assertSnapshot(matching: sut, as: .image)
    }
    
    func testUrlImage() {
        let viewModel = NewsListTableViewCellViewModel(imageUrl: "https://www.telegraaf.nl/images/1200x630/filters:format(jpeg):quality(80)/cdn-kiosk-api.telegraaf.nl/eebba4f2-cfca-11ea-acd2-0217670beecd.jpg", title: "title")
        sut.update(with: viewModel)
        assertView(for: sut)
    }
}
