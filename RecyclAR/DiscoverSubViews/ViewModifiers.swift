//
//  ViewModifiers.swift
//  RecyclAR
//
//  Created by Philipp Hemkemeyer on 4/6/23.
//

import SwiftUI

struct HeadingDiscoverTab: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .tracking(0.16)
            .padding(.bottom, 10)
            .padding(.top, 16)
            .padding(.leading, 28)
    }
}

extension View {
    func headingDiscoverTab() -> some View {
        modifier(HeadingDiscoverTab())
    }
}
