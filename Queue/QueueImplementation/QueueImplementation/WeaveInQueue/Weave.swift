//
//  Weave.swift
//  QueueImplementation
//
//  Created by Monica Mishipay on 03/09/21.
//

import Foundation
/**
 Implement a "peek " method in the Queue class.
 .Peek should return the last element ( the next one to be returned from the queue without removing it

 Example
 let q = new Queue()
 q.add(1)
 q.add(2)

 q.peek()

 Implement the 'weave' function
 => Weave receives two queues as argument and combine the contents of each into new, third queue.
 => The third queue should contain the a;ternating content of the tow queues
 => The function should handle queues of differnet lengths without inserting 'undefined' into the new one.
 => Donot access the array inside of any queue, only use the add, remove and peek functions

 const queueOne = new Queue()
 queueOne.add(1);
 queueOne.add(2);

 const queueTwo = new Queue()
 queueTwo.add('Hi')
 queueTwo.add('There')

 comst q =  weave(queueOne, queueTwo)
 q.remove() //1
 q.remove() //'Hi'
 q.remove() // 2
 q.remove() //"Three"

 ======= Output 1,Hi, 2, There =========

 */

struct Queue<T> {
    var items: [T]

    mutating func add(val: T) {
        self.items.append(val)
    }

    mutating func removeElement() {
        self.items.removeLast()
    }

    func peek() -> T? {

        if let lastItem = self.items.last {
            return lastItem
        }
        return nil
    }
}

struct MergeArray<T>: Equatable {


     func mergeTheAlternativeValIn<T : Equatable>(queueOne: [T], queueTwo: [T]) -> [T] {
        var finalArray = [T]()
        let maxCount = queueOne.count > queueTwo.count ? queueOne.count : queueTwo.count

        for val in 0..<maxCount {
            if queueOne.count > val {
                let firstVal = queueOne[val]
                finalArray.append(firstVal)
            }

            if queueTwo.count > val {
                let secondVal = queueTwo[val]
                finalArray.append(secondVal)
            }
        }
        print(finalArray)
        return finalArray
    }

    func combine<T>(_ arrays: Array<T>?...) -> Set<T> {
        return arrays.compactMap{$0}.compactMap{Set($0)}.reduce(Set<T>()){$0.union($1)}
    }

//    mutating func mergeTheAlternativeValWithFlatMap<T : Equatable>(queueOne: [T], queueTwo: [T]) {
//        let newArray = zip(queueOne, queueTwo).map {$0 + " " + $1}
//        print(newArray)
//    }

}

struct Weave {

    func checkForWeaveQueue() {
        var queueOne = Queue<Int>(items: [])

        queueOne.add(val: 5)
        queueOne.add(val: 6)
//        queueOne.add(val: 7)
//        queueOne.add(val: 8)

       // print(queueOne.peek())

        var queueTwo = Queue<Int>(items: [])

        queueTwo.add(val: 5)
        queueTwo.add(val: 6)
        queueTwo.add(val: 7)
       // queueTwo.add(val: 8)


        var mergeArray = MergeArray<Int>()
        let finalArray = mergeArray.mergeTheAlternativeValIn(queueOne: queueOne.items, queueTwo: queueTwo.items)
        let mergedArrays = mergeArray.combine([queueOne.items,  queueTwo.items])
        print(mergedArrays.flatMap{$0})


        var mergeObject = Queue<Int>(items: finalArray)
        print(mergeObject.peek())




    }
}
