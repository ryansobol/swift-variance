// Subclass types are covariant
class Animal {}

class Cat : Animal {}

// covariant
let animal : Animal = Cat()

// contravariant
//let cat : Cat = Animal()


// Generic types are invariant
class PetOwner<T> {}

// covariant
//let catOwner : PetOwner<Cat> = PetOwner<Animal>()

// contravariant
//let animalOwner : PetOwner<Animal> = PetOwner<Cat>()


// Collection generic types are covariant
// covariant
let animals : [Animal] = [Cat()]

// contravariant
//let cats : [Cat] = [Animal()]


// Function return types are covariant
let intBuiler : () -> Int = { 5 }

// covariant
let anyBuilder : () -> Any = intBuiler

let anyBuilder2 : () -> Any = { 5 }

// contravariant
//let intBuilder2 : () -> Int = anyBuilder2


// Function parameter types are contravariant
let intHandler : (Int) -> Void = { print($0) }

// covariant
//let anyHandler : (Any) -> Void = intHandler

let anyHandler2 : (Any) -> Void = { print($0) }

// contravariant
let intHandler2 : (Int) -> Void = anyHandler2


// Function parameter types of function parameter types are covariant
let intResolver : ((Int) -> Void) -> Void = { $0(0) }

// covariant
let anyResolver : ((Any) -> Void) -> Void = intResolver

let anyResolver2 : ((Any) -> Void) -> Void = { $0(0) }

// contravariant
//let intResolver2 : ((Int) -> Void) -> Void = anyResolver2
