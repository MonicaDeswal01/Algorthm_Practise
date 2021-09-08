import UIKit

var greeting = "Hello, playground"

//var wrapper : [PropertyWrapper]

//var name1 = "name"
//
//var name: String {
//    return "name"
//}
//
//var grade: Int{
//    get {
//
//    }
//    set {
//      return newValue + 3
//    }
//}
//
//struct ABC {
//    let val: Int
//
//    init(val:Int) {
//        self.val = val
//    }
//}
//
//
//var closure = { []
//
//
//}


extension String {

//var updatedCountNew = self.count * 3

var updatedCount: Int {
return self.count * 3
}
}





//DispatchQueue.main.async {
//    print("Hello World")
//    DispatchQueue.main.sync {
//        print("A")
//    }
//    print ("B")
//}

DispatchQueue.main.async {
    print("Hello World")
    DispatchQueue.global().sync {
        print("A")
    }
    print ("B")
}





struct A {

    var number = 10

    lazy var fibonacciOfNumber: Int?  = {
        return fibonacci(of: number)
    }()

    func fibonacci(of num: Int) -> Int {
        if num < 2 {
            return num
        } else {
            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
        }
    }
}

//[number]
//        return fibonacci(of: number)
//    }()
//
//    func fibonacci(of num: Int) -> Int {
//        if num < 2 {
//            return num
//        } else {
//            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
//        }
//    }
//}
//
//var current = A()
//print (current.fibonacciOfNumber)
//
//print(A().fibonacciOfNumber)





protocol SomeProtocol {
    func someMethod()
}

extension SomeProtocol {
    func someMethod() {
        print("A")
    }
}

class OtherClass: SomeProtocol {
    func callToPrint() {
        someMethod()
    }


     func someMethod() {
        print("B")
    }
}

class AnotherClass: OtherClass {
    let instance1: OtherClass = OtherClass()

    func output() {
        callToPrint()
        super.someMethod()
    }

     override func someMethod() {
        print("C")
    }
}

let instance = AnotherClass()
instance.output()
instance.instance1.callToPrint()
instance.instance1.someMethod()


//====================================================================

let group = DispatchGroup()
let date = Date()

// Concurrent queue
let queue = DispatchQueue(label: "dipatch.queue.group",
                          attributes: .concurrent)

queue.async(group: group) {
    Thread.sleep(forTimeInterval: 3)
    let differece = Date().timeIntervalSince(date)
    print("Task1 done with a difference of \(differece.rounded()) seonds")
    
}
    //Serial queue
    let queue2 = DispatchQueue(label: "dispatch.queue2.group")
    queue2.async(group: group) {
        Thread.sleep(forTimeInterval: 1)
        let difference = Date().timeIntervalSince(date)
        print("Task 2 done with a difference of \(difference.rounded()) seconds")
    }

    //notify completion of tasks on main thread
    group.notify(queue: DispatchQueue.main) {
        Thread.sleep(forTimeInterval: 1)
        let difference = Date().timeIntervalSince(date)
        print("All tasks executed with a difference of \(difference.rounded()) seconds")
    }

//Task 2 done with a difference of 1.0 seconds
//Task1 done with a difference of 3.0 seonds
//All tasks executed with a difference of 4.0 seconds


/**
let higherPriority = DispatchQueue.global(qos: .userInitiated)
let lowerPriority = DispatchQueue.global(qos: .utility)

func asyncPrint(queue: DispatchQueue, symbol: String) {
    queue.async {
        for i in 0...10 {
            print(symbol, i)
        }
    }
}

asyncPrint(queue: higherPriority, symbol: "Hey")
asyncPrint(queue: lowerPriority, symbol: "Hi")

**/

/**
let higherPriority = DispatchQueue.global(qos: .userInitiated)
let lowerPriority = DispatchQueue.global(qos: .utility)

let semaphore = DispatchSemaphore(value: 1)

func asyncPrint(queue: DispatchQueue, symbol: String) {
    queue.async {
        print("\(symbol) waiting")
        semaphore.wait()

        for i in 0...10 {
            print(symbol, i)
        }

        print("\(symbol) signal")
        semaphore.signal()
    }
}

asyncPrint(queue: higherPriority, symbol: "Hey")
asyncPrint(queue: lowerPriority, symbol: "Hi")

**/

/**
let higherPriority = DispatchQueue.global(qos: .userInitiated)
let lowerPriority = DispatchQueue.global(qos: .utility)

let semaphoreA = DispatchSemaphore(value: 1)
let semaphoreB = DispatchSemaphore(value: 1)

func asyncPrint(queue: DispatchQueue,
                symbol: String,
                firstResource: String,
                firstSemaphore: DispatchSemaphore,
                secondResource: String,
                secondSemaphore: DispatchSemaphore) {

    func requestResource(_ resource: String,
                         with semaphore: DispatchSemaphore) {
        print("\(symbol) waiting resource \(resource)")
        semaphore.wait()
    }

    queue.async {
        requestResource(firstResource, with: firstSemaphore)
        for i in 0...10 {
            if i == 5 {
                requestResource(secondResource, with: secondSemaphore)
            }
            print("Check check")
            print(symbol, i)
        }

        print("\(symbol) releasing resources")
        firstSemaphore.signal()
        secondSemaphore.signal()
    }
}

asyncPrint(queue: higherPriority,
           symbol: "Hey",
           firstResource: "A",
           firstSemaphore: semaphoreA,
           secondResource: "B",
           secondSemaphore: semaphoreB)

asyncPrint(queue: lowerPriority,
           symbol: "Hi",
           firstResource: "B",
           firstSemaphore: semaphoreB,
           secondResource: "A",
           secondSemaphore: semaphoreA)

**/

/**
func dispatchSemaphoreCheck() {
    let semaphore = DispatchSemaphore(value: 2)

    DispatchQueue.global().async {
    semaphore.wait()
    print("check check 111")
    }
    semaphore.signal()
}

dispatchSemaphoreCheck()

**/

/**
func semaphoreTest1() {
    let semaphore = DispatchSemaphore(value: 1)
    let queueA = DispatchQueue(label: "Q1")
    let queueB = DispatchQueue(label: "Q2")
    let queueC = DispatchQueue(label: "Q3")

    queueA.async {
        semaphore.wait()
        semaphore.wait()
        print("QueueA gonna sleep")
        sleep(3)
        print("QueueA woke up")
        semaphore.signal()
    }

    queueA.async {
        semaphore.signal()
        print("QueueB gonna sleep")
        sleep(3)
    }

    queueA.async {
        semaphore.signal()
        print("QueueC gonna sleep")
        sleep(1)
        print("QueueC woke up")
    }
}

semaphoreTest1()
**/

/**

class Animal {
    func makeNoice()  {
        fatalError("Must overrride to get specific noise")
    }
}

class Cat: Animal {
    override func makeNoice() {
         print("Mews")
    }
}

let cat = Cat()
cat.makeNoice()
**/


/**
struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()

    var center: Point {
        get {
            print("the valie of new center hfjhjrkehrjhrje")
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            print("the valie of new center \(newCenter)")
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0)
                  , size: Size(width: 10.0, height: 10.0))
print("GETTER SETTER")
print(square.center.x)
print(square.center.y)

let initialSquareCenter = square.center
square.center = Point(x: 15, y: 15.0)


**/

class StepCounter {
    var totalStep: Int = 0 {
        willSet(newTotalSteps){
          print("About to set totalSteps to \(newTotalSteps)")
        } didSet {
            print("the vaue of old totalSteps is \(totalStep)")
            print("the vaue of old steps is \(oldValue)")
            if totalStep > oldValue {
                print("Added \(totalStep - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalStep = 200

stepCounter.totalStep = 360
