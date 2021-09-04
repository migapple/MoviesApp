//
//  String+Extension.swift
//  String+Extension
//
//  Created by Michel Garlandat on 04/09/2021.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

extension String {
    func trimmedAndEscaped() -> String {
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
