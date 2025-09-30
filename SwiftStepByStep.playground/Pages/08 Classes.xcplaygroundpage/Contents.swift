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


// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Crea una subclase `Cat` con el método `sound()` que devuelva "Miau".
// Crea un array [Animal] que contenga un Dog y un Cat
// y recorre el array imprimiendo cada sonido mediante polimorfismo.
