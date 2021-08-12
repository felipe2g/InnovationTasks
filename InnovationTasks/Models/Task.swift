//
//  Task.swift
//  InnovationTasks
//
//  Created by Felipe Guimarães on 11/08/21.
//

import Foundation
import UIKit

struct Task {
    var id = UUID()
    var name: String = ""
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: .black)
}
