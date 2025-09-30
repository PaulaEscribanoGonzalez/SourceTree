// Functions – Parameters, Labels, Return, Overloads
func sayHello() {
    print("Hola a todos")
}

sayHello()

func greet(name: String) -> String {
    return "Hola, \(name)!"
}

print(greet(name: "Euneiz"))

// Al poner "_" delante de un parámetro, no hace falta escribir su nombre al llamar a la función
func sumar(_ a: Int, _ b: Int) -> Int {
    return a + b
}

print(sumar(3, 4)) // ya no hace falta escribir "a:" y "b:" al poner "_" al declarar la función

// Versión 1: recibe un nombre
func greetings(nombre: String) -> String {
    return "Hola, \(nombre)!"
}

// Versión 2 (sobrecarga): no recibe parámetros
func greetings() -> String {
    return "Hola a todos!"
}

print(greetings(nombre: "Euneiz")) // Hola, Euneiz!
print(greetings())                // Hola a todos!

// ------------------------------------------------------------
// 🧪 Mini‑reto
// ------------------------------------------------------------
// TODO: Crea una función `area(width:height:)` que devuelva un Int.
// Después sobrecárgala para que acepte un único parámetro `side` para un cuadrado.
// Ejemplo esperado:
// area(width: 3, height: 4) -> 12
// area(side: 5) -> 25

// Rectángulo: ancho x alto
func area(width: Int, height: Int) -> Int {
    return width * height
}

// Cuadrado: lado x lado
func area(side: Int) -> Int {
    return side * side
}

// Pruebas
print(area(width: 3, height: 4)) // 12
print(area(side: 5))             // 25

