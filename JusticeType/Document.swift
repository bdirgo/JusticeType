//
//  Document.swift
//  JusticeType
//
//  Created by Benjamin Dirgo on 5/28/20.
//  Copyright © 2020 Benjamin Dirgo. All rights reserved.
//

import UIKit

class Document: UIDocument {
    
    override func contents(forType typeName: String) throws -> Any {
        // Encode your document with an instance of NSData or NSFileWrapper
        return Data()
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        // Load your document from contents
    }
}

