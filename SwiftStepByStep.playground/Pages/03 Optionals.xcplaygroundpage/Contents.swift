// Optionals – nil, Optional Binding, Nil Coalescing
var nickname: String? = nil // could be nil or a String
print("Raw optional:", nickname as Any)

if let nick = nickname {
    print("Nickname is:", nick)
} else {
    print("No nickname yet")
}

nickname = "Euneiz"
let displayName = nickname ?? "Unknown User"
print("Display name:", displayName)


// ------------------------------------------------------------
// 🧪 Mini‑reto
// ------------------------------------------------------------
// Declara una variable opcional llamada `telefono` de tipo String.
// Asígnale nil y comprueba con `if let` si tiene valor o no.
// Después asígnale un número de teléfono y vuelve a comprobarlo.
// Usa el operador ?? para mostrar "Desconocido" si está en nil.

var telefono: String? = nil

// Primer chequeo con if let
if let number = telefono {
    print("Teléfono:", number)
} else {
    print("No hay teléfono todavía")
}

// Asignamos un valor
telefono = "123456789"

// Segundo chequeo con if let
if let number = telefono {
    print("Teléfono:", number)
} else {
    print("No hay teléfono todavía")
}

// Uso de ?? para mostrar valor por defecto
let telefonoMostrado = telefono ?? "Desconocido"
print("Teléfono mostrado:", telefonoMostrado)
