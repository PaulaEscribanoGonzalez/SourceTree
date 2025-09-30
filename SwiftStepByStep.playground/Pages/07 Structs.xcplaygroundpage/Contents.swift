// STEP 7: Structs – Value Semantics, mutating methods
struct Counter {
    private(set) var value: Int = 0 //privada, no se puede editar desde fuera
    mutating func increment() { value += 1 } //mutating indica que el método cambiar el valor de la estructura
    mutating func add(_ n: Int) { value += n }
}

var c1 = Counter()
c1.increment()
c1.add(5)
print("Counter c1:", c1.value)

var c2 = c1 // value copy
c2.increment()
print("c1:", c1.value, "c2:", c2.value)


// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Añade un método `reset()` marcado como mutating en Counter
// que ponga el valor a 0.
// Llama a este método y comprueba que el valor se reinicia.

struct Counter {
    private(set) var value: Int = 0
    
    mutating func increment() {
        value += 1
    }
    
    mutating func add(_ n: Int) {
        value += n
    }
    
    // Nuevo método reset
    mutating func reset() {
        value = 0
    }
}

// Prueba
var c1 = Counter()
c1.increment()
c1.add(5)
print("Antes de reset:", c1.value) // 6

c1.reset()
print("Después de reset:", c1.value) // 0
