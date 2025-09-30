// STEP 5: Control Flow – guard/switch & Loops
func category(for age: Int) -> String {
    guard age >= 0 else {
        return "Invalid age"
    }
    switch age {
    case 0..<12: return "Child"
    case 12..<18: return "Teen"
    case 18..<65: return "Adult"
    default: return "Senior"
    }
}

for age in [5, 16, 30, 88] {
    print("Age \(age) ->", category(for: age))
}


// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Escribe una función `fizzbuzz(n:)` que imprima los números del 1 al n,
// pero que muestre "Fizz" si es divisible por 3, "Buzz" si es divisible por 5,
// y "FizzBuzz" si es divisible por ambos.
// 💡 Pista: usa el operador % (módulo) para saber si un número es divisible.
// Ejemplo: 6 % 3 == 0 significa que 6 es divisible entre 3.

func fizzbuzz(n: Int) {
    if n % 3 == 0 {print ("Fizz")}
    
    if n % 5 == 0{print ("Fizz")}
    
    if n % 3 == 0 && n % 5 == 0 {print ("FizzBuzz")}
}
