//
//  User.swift
//  NanoChallenge3
//
//  Created by Rafa (Ruffles) on 28/09/23.
//

import Foundation

struct User: Codable {
    var clothesCategories: [NestedItem<ClothesProperties>]
}
