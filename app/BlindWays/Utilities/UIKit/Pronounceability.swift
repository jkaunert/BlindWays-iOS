//
//  Pronounceability.swift
//  BlindWays
//
//  Created by Zev Eisenberg on 7/1/16.
//  Copyright© 2016 Perkins School for the Blind
//
//  All "Perkins Bus Stop App" Software is licensed under Apache Version 2.0.
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit

extension UILabel {

    func rz_setTextPronounceable(_ string: String) {
        text = string
        accessibilityLabel = String.makeLocationVoiceOverPronounceable(string)
    }

    func rz_setAttributedTextPronounceable(_ string: NSAttributedString) {
        attributedText = string
        accessibilityLabel = String.makeLocationVoiceOverPronounceable(string.string)
    }

}

extension UINavigationItem {

    func rz_setTextPronounceable(_ string: String) {
        title = string
        accessibilityLabel = String.makeLocationVoiceOverPronounceable(string)
    }

}
