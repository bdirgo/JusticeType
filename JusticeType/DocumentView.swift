//
//  DocumentView.swift
//  JusticeType
//
//  Created by Benjamin Dirgo on 5/28/20.
//  Copyright © 2020 Benjamin Dirgo. All rights reserved.
//

import SwiftUI
import UIKit

struct TextView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        view.contentInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return view
    }
    func updateUIView(_ uiView: UITextView, context: Context) {
        
    }
}

struct DocumentView: View {
    var document: UIDocument
    var dismiss: () -> Void

    var body: some View {
        VStack {
            HStack {
                Text("File Name")
                    .foregroundColor(.secondary)

                Text(document.fileURL.lastPathComponent)
            }
            TextView()
            Button("Done", action: dismiss)
        }
    }
}
