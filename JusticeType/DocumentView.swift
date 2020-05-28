//
//  DocumentView.swift
//  JusticeType
//
//  Created by Benjamin Dirgo on 5/28/20.
//  Copyright © 2020 Benjamin Dirgo. All rights reserved.
//

import SwiftUI

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

            Button("Done", action: dismiss)
        }
    }
}
