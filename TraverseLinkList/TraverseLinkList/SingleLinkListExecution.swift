//
//  LinkList.swift
//  TraverseLinkList
//
//  Created by Monica Mishipay on 11/08/21.
//

public class Node<T>
{
    var value: T
    var next: Node<T>?
    init(value: T) {
        self.value = value
    }
}

class SingleLinkedList<T> {
    var head: Node<T>?
    public var isEmpty: Bool {
        return head == nil
    }

    public var first: Node<T>? {
        return head
    }

    public func append(value: T) {
        let newNode = Node(value: value)
        if var temp = head {
            while temp.next != nil {
                temp = temp.next!
                print("\(temp.value)")
            }
            temp.next = newNode
        } else{
           head = newNode
        }
    }

    func insert(data: T, at position: Int) {
        let newNode = Node(value: data)
        if position == 0 {
        newNode.next = head
        head = newNode
        } else {
            var previous = head
            var current = head

            for _ in 0..<position {
                previous = current
                current = current?.next
            }
            newNode.next = previous?.next
            previous?.next = newNode
        }
    }

    func deleteNode(at position: Int) {
        if head == nil {
            return
        }
        var temp = head
        if position == 0 {
            head = temp?.next
            return
        }

        for _ in 0..<position-1 where temp != nil {
            temp = temp?.next
        }

        if temp == nil || temp?.next == nil {
            return
        }
        let nextToNextNode = temp?.next?.next
        temp?.next = nextToNextNode

    }

    func printList () {
        var current: Node? = head
        while (current != nil), let currentVal = current?.value {
            print("\(currentVal)")
            current = current?.next
        }
    }
}
struct SingleLinkListExecution{
    static func performTheOperationOnSingleLinkList() {
      let sll = SingleLinkedList<String>()
        sll.append(value: "Kim")
        sll.append(value: "Nik")
        sll.append(value: "Ashu")
        sll.append(value: "Bhavi")
        sll.append(value: "Ishu")
        sll.printList()

        sll.deleteNode(at: 4)
        sll.printList()
    }
}
