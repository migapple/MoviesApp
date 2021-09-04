//
//  ViewModelBase.swift
//  ViewModelBase
//
//  Created by Michel Garlandat on 04/09/2021.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModel: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
