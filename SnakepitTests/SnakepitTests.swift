//
//  SlashTests.swift
//  SlashTests
//
//  Created by Xinyi Zhuang on 12/02/2018.
//  Copyright © 2018 x52. All rights reserved.
//

import XCTest
import Snakepit

class SnakepitTests: XCTestCase {

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
  }

  enum Story: String, StoryboardGettable {
    var bundle: Bundle? {
      return Bundle.init(for: TableViewController.self)
    }
    case Main
  }

  func testStoryboardGettable() {
    let viewController = Story.Main.get(TestViewController.self)
    XCTAssertNotNil(viewController)
    XCTAssertEqual(viewController.testNumber, 10)
    XCTAssertNotNil(Story.Main.initialViewController)
  }

  func testTableViewCellGettable() {
    let controller = TableViewController(style: .plain)
    let indexPath = IndexPath(row: 99, section: 0)
    let cell = controller.tableView.deque(cell: TestCell.self, for: indexPath)
    XCTAssertNotNil(cell)
  }
}
