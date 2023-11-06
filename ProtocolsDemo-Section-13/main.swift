protocol CanFly {
    // Func body is empty here. It should be defined in class method.
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg(){
        if(isFemale){
            print("The bird makes a new bird in a shell")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky")
    }
    
    func soar(){
        print("The eagle glides in the air using air currents")
    }
}

class Penguin: Bird {
    func swim(){
        print("The penguin paddles through the water")
    }
}

struct FlyingMuseum {
    // We can use protocol as a dataType(CanFly).
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air")
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
myEagle.fly()

let museum = FlyingMuseum()
// We can pass object(myPlane) instead of protocol
museum.flyingDemo(flyingObject: myPlane)


