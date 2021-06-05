//
//  LazyView.swift
//  TwitterSwiftUITutorial
//
//  Created by yunus olgun on 5.06.2021.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}


