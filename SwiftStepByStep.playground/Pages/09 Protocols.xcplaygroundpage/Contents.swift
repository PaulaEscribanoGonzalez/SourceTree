// Protocols – Conformance, Extensions, Default impl.

// Definimos un protocolo llamado Describable
// Todo tipo que adopte este protocolo debe tener:
// - una propiedad shortDescription (solo lectura)
// - un método describe() que devuelve un String
protocol Describable {
    var shortDescription: String { get }
    func describe() -> String
}

// Extensión del protocolo Describable
// Aquí damos una implementación por defecto del método describe()
// que simplemente devuelve la shortDescription.
// Así, los tipos que adopten el protocolo no tienen que escribir describe()
// si no quieren, ya lo reciben gratis.
extension Describable {
    func describe() -> String { shortDescription }
}

// Creamos una estructura Student que adopta Describable
// Implementa la propiedad shortDescription
// No implementa describe(), porque ya la tiene por defecto de la extensión.
struct Student: Describable {
    let id: Int
    let name: String
    var shortDescription: String { "Estudiante(\(id)) \(name)" }
}

// Creamos un Student y llamamos a describe()
// Gracias a la implementación por defecto, describe() devuelve shortDescription
let s = Student(id: 1, name: "Iker")
print(s.describe()) // Estudiante(1) Iker


// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Crea un nuevo tipo `Course` que adopte el protocolo Describable.
// Debe imprimir algo como: "Curso(iOS) créditos: 6".
