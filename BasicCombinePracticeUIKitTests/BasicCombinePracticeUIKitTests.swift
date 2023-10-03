//
//  BasicCombinePracticeUIKitTests.swift
//  BasicCombinePracticeUIKitTests
//
//  Created by 강민혜 on 10/4/23.
//

import XCTest
import Combine
@testable import BasicCombinePracticeUIKit

final class BasicCombinePracticeUIKitTests: XCTestCase {
    
    var sut: QuoteViewModel!
    var quoteService: MockQuoteServiceType!
    
    override func setUp() {
        quoteService = MockQuoteServiceType()
        sut = QuoteViewModel(quoteServiceType: quoteService)
    }

    override func tearDown() {
        
    }

}

class MockQuoteServiceType: QuoteServiceType {
    
    var value: AnyPublisher<Quote, Error>?
    
    func getRandomQuote() -> AnyPublisher<Quote, Error> {
        return value ?? Empty().eraseToAnyPublisher()
    }
}
