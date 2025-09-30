// Value vs Reference semantics

// Definimos una estructura (struct) -> semántica de valor
struct Bag { var items: [String] }

// Definimos una clase (class) -> semántica de referencia
class RefBag { var items: [String] = [] }

// ---------------------------
// Ejemplo con struct (valor)
// ---------------------------
var b1 = Bag(items: ["A"]) // Creamos un Bag con un solo elemento
var b2 = b1                // Se hace una COPIA de b1 (otro objeto independiente)
b2.items.append("B")       // Modificamos la copia (b2)

print("Value semantics -> b1:", b1.items, "| b2:", b2.items)
// Resultado:
// b1 = ["A"]     (no ha cambiado)
// b2 = ["A", "B"] (solo cambia la copia)


// ---------------------------
// Ejemplo con class (referencia)
// ---------------------------
let rb1 = RefBag()         // Creamos un RefBag vacío
rb1.items.append("A")      // Añadimos "A"
let rb2 = rb1              // rb2 apunta al MISMO objeto que rb1
rb2.items.append("B")      // Modificamos rb2 (que en realidad es el mismo objeto)

print("Reference semantics -> rb1:", rb1.items, "| rb2:", rb2.items)
// Resultado:
// rb1 = ["A", "B"]
// rb2 = ["A", "B"]
// (ambos son el mismo objeto en memoria)

// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Crea una función `appendC(to:)` que añada "C" a un Bag y lo devuelva.
// Muestra que el original no se modifica (semántica de valor).
// Haz lo mismo con RefBag y aprecia la diferencia.
