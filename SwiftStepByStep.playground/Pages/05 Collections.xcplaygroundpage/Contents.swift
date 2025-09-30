// Collections – Array, Set, Dictionary

// Array: lista ordenada de elementos
var numeros = [1, 2, 3, 4, 5]
numeros.append(6)
print("Array:", numeros)

// Set: conjunto sin elementos repetidos
var bag: Set<String> = ["iOS", "Android", "Kotlin", "Swift"]
bag.insert("Xcode")
bag.remove("Kotlin")

// Dictionary: pares clave-valor
var scores: [String: Int] = ["Ana": 90, "Luis": 76]
scores["Marta"] = 98

let sortedNames = scores.keys.sorted()
let topScore = scores.values.max() ?? 0

print("Bag:", bag, "| sortedNames:", sortedNames, "| top:", topScore)


// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Crea un array con al menos 5 nombres de compañeros de clase.
// Añade un nuevo nombre al array.
// Después imprime el primer y el último elemento del array.

var nombres: [String] = ["Paula", "Paula", "Marta", "Lucia", "Isabel"]
nombres.append("Isabel")

print ("Primer Nombre: ", nombres.first)
print ("Último Nombre: ", nombres.last)


