//
//  TabViewRouter.swift
//  DisneyPulsClone
//
//  Created by cmStudent on 2022/08/26.
//

import SwiftUI

final class TabViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}

enum Page {
    case home
    case search
    case downloads
    case profile
}
