//
//  View+Extensions.swift
//  View+Extensions
//
//  Created by Michel Garlandat on 04/09/2021.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI

extension View {
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
