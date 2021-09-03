//
//  QueueImplementation.swift
//  QueueImplementation
//
//  Created by Monica Mishipay on 02/09/21.
//

import Foundation

class QueueImplementation<T> {
    /**
        Create a queue data structure
           1. The queue should be a class with methods "add" and "remove"
           2. Adding to the queue should store an element until it is removed
     */



     func performQueueOperations() {
        var tos = TOS<String>()
        tos.add(item: "Swift 4")
        tos.add(item: "Swift 5")
        tos.add(item: "Swift 1")

        tos.pop()
        tos.pop()
    }
}

struct TOS<T> {
   var items = [T]()
   mutating func add(item: T) {
      items.append(item)
   }
   mutating func pop() -> T {
      return items.removeFirst()
   }
}
