//
//  UserController.swift
//  NanoChallenge3
//
//  Created by Rafa (Ruffles) on 28/09/23.
//

import Foundation

class UserController: ObservableObject {
    static var shared: UserController = {
        let instance = UserController()
        return instance
    }()
    
    @Published var user : User
    
    private init() {
        if let userSaved = UserDefaults().object(forKey: "userSaved") as? Data, let userSaved = try? JSONDecoder().decode(User.self, from: userSaved) {
            self.user = userSaved
        } else {
            self.user = User(clothesCategories: [])
        }
    }
    
    func saveData() {
        if let encoded = try? JSONEncoder().encode(user) {
            UserDefaults().set(encoded, forKey: "userSaved")
        } else {
            print("JSON encoding error!")
        }
    }
    
    func addClothesCategory(item: NestedItem<ClothesProperties>) -> Void {
        user.clothesCategories.append(item)
    }
}
