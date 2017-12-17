//
//  Configuration.swift
//
//  Copyright (c) 2017 OpenLocate
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

public typealias Headers = [String: String]

// Configuration

public struct Configuration {

    public struct Endpoint {
        let url: URL
        let headers: Headers?
    }

    let endpoints: [Endpoint]
    let collectingFieldsConfiguration: CollectingFieldsConfiguration

    public init(endpoints: [Endpoint], collectingFieldsConfiguration: CollectingFieldsConfiguration = .default) {
        self.endpoints = endpoints
        self.collectingFieldsConfiguration = collectingFieldsConfiguration
    }

    public init(url: URL,
                headers: Headers? = nil,
                collectingFieldsConfiguration: CollectingFieldsConfiguration = .default) {

        self.init(endpoints: [Endpoint(url: url, headers: headers)],
                  collectingFieldsConfiguration: collectingFieldsConfiguration)
    }
}
