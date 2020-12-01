import XCTest
import Printer

class PrinterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBlocks() throws {
        let ticket = Ticket(Block.blank)
        
        XCTAssertEqual(ticket.blocks.count, 1)
    }

    func testAttributedString() throws {
        let ticket = Ticket(Block.blank)
        
        XCTAssertEqual(ticket.attributedString(), NSAttributedString(string: ""))
    }

    func testTextAttributedString() throws {
        let ticket = Ticket(.title("Restaurant"),
                            .blank,
                            .plainText("Palo Alto Californlia 94301"),
                            .plainText("378-0987893742"))
        
        XCTAssertEqual(ticket.attributedString(), NSAttributedString(string: "Restaurant\n\nPalo Alto Californlia 94301\n378-0987893742"))
    }
}
