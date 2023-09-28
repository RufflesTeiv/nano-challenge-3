//
//  NestedItem.swift
//  NanoChallenge3
//
//  Created by Rafa (Ruffles) on 28/09/23.
//

import Foundation

class NestedItem<Properties>: Identifiable, Hashable {
    static func == (lhs: NestedItem, rhs: NestedItem) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    let id = UUID()
    var nestedItems: [NestedItem<Properties>] = []
    var properties: Properties
    
    init(properties: Properties) {
        self.properties = properties
    }
    
    func addItem(item: NestedItem<Properties>) {
        nestedItems.append(item)
    }
    func removeItem(item: NestedItem<Properties>) {
        nestedItems.removeAll(where: {$0 == item})
    }
    func updateProperties(properties: Properties) {
        self.properties = properties
    }
}
