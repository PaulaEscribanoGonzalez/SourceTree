// STEP 8: Classes – Reference Semantics, Inheritance
class Animal {
    let name: String
    init(name: String) { self.name = name }
    func sound() -> String { "..." }
}

class Dog: Animal {
    override func sound() -> String { "Guau" } // con override sobreescribimos el código de Animal
}

let a: Animal = Dog(name: "Dobby")
print("\(a.name) dice \(a.sound())")

copy1.value = 5
print("copy1.value: \(copy1.value), copy2.value : \(copy2.value)")

// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Crea una subclase `Cat` con el método `sound()` que devuelva "Miau".
// Crea un array [Animal] que contenga un Dog y un Cat
// y recorre el array imprimiendo cada sonido mediante polimorfismo.

class Animal {
    let name: String
    init(name: String) { self.name = name }
    func sound() -> String { "..." }
}

class Dog: Animal {
    override func sound() -> String { "Guau" }
}

class Cat: Animal {
    override func sound() -> String { "Miau" }
}

// Creamos un array de animales
let animals: [Animal] = [
    Dog(name: "Dobby"),
    Cat(name: "Misu")
]

// Recorremos el array
for animal in animals {
    print("\(animal.name) dice \(animal.sound())")
}

