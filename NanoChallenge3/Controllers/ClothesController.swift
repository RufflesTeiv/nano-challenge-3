//
//  ClothesController.swift
//  NanoChallenge3
//
//  Created by Rafa (Ruffles) on 28/09/23.
//

import Foundation

class ClothesController : ObservableObject {
    static var shared: ClothesController = {
        let instance = ClothesController()
        return instance
    }()
    
    @Published var nestedClothes : [NestedItem<ClothesProperties>] = []
    
    private init() {}
    
    func addBaseLevelNest(item: NestedItem<ClothesProperties>) -> Void {
        nestedClothes.append(item)
    }
}
