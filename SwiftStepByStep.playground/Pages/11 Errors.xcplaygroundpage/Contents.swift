// Error Handling – throw/try/catch, try?

// Definimos un enum de errores posibles al parsear un String a Int.
// - empty: cuando el String está vacío
// - notANumber: cuando no se puede convertir a Int
enum ParseError: Error { case empty, notANumber }

// Función que intenta convertir un String en Int.
// Está marcada con `throws` porque puede lanzar errores.
func parseInt(_ source: String) throws -> Int {
    // Si el String está vacío, lanzamos el error .empty
    guard !source.isEmpty else { throw ParseError.empty }
    // Si no se puede convertir a Int, lanzamos el error .notANumber
    guard let n = Int(source) else { throw ParseError.notANumber }
    // Si todo va bien, devolvemos el número convertido
    return n
}

// Usamos un bloque do–catch para intentar ejecutar la función.
// Si no hay error, imprimimos el resultado.
// Si ocurre un error, lo capturamos y mostramos un mensaje.
do {
    let n = try parseInt("42")
    print("Parsed:", n) // Parsed: 42
} catch {
    print("Parse error:", error)
}

// Con `try?` intentamos ejecutar la función, pero si hay error devuelve nil.
// Aquí la cadena "not number" no es convertible, así que devuelve nil.
let maybeN = try? parseInt("not number")
print("try? result:", maybeN as Any) // nil

// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Crea un enum de error `FormError` con un caso `emptyName`.
// Escribe una función `validate(name:)` que lance ese error si la cadena está vacía;
// en caso contrario debe devolver el nombre con espacios eliminados al principio y al final.

// Definimos un nuevo error para el formulario
enum FormError: Error {
    case emptyName
}

// Función de validación
func validate(name: String) throws -> String {
    // Eliminamos espacios y saltos de línea
    let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
    
    // Si está vacío después de limpiar, lanzamos error
    guard !trimmed.isEmpty else { throw FormError.emptyName }
    
    // Si es válido, lo devolvemos limpio
    return trimmed
}

// Ejemplo de uso con do–catch
do {
    let valid = try validate(name: "  Paula  ")
    print("Nombre válido:", valid)
    
    let invalid = try validate(name: "   ")
    print("Nombre válido:", invalid)
} catch {
    print("Error de formulario:", error) // Error de formulario: emptyName
}

