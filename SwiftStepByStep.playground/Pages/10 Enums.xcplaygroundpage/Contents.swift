// Enums – Associated values, Pattern matching

// Definimos un enum que representa diferentes estados de red.
// Cada caso modela una situación distinta:
//
// - idle: no se está haciendo ninguna petición.
// - loading: la petición está en curso.
// - success(data: String): la petición tuvo éxito y recibimos datos (un String en este caso).
// - failure(code: Int, message: String): la petición falló, con un código de error y un mensaje.
enum NetworkState {
    case idle
    case loading
    case success(data: String)
    case failure(code: Int, message: String)
    case redirect(url: String)
}

// Función que recibe un NetworkState y muestra por pantalla un mensaje distinto
// dependiendo del caso. Usamos un switch con pattern matching para extraer valores.
func render(_ state: NetworkState) {
    switch state {
    case .idle:
        print("Idle") // No hay actividad
    case .loading:
        print("Loading...") // Cargando datos
    case .success(let data):
        print("Success with data:", data) // Mostramos los datos recibidos
    case .failure(let code, let message):
        print("Error \(code):", message) // Mostramos código y mensaje de error
    case .redirect(let url):
            print("Redirect to:", url) // 🔹 Manejo del nuevo caso
    }
}

// Probamos la función render() con cada uno de los estados posibles.
render(.idle)                        // Idle
render(.loading)                     // Loading...
render(.success(data: "Hello"))      // Success with data: Hello
render(.failure(code: 404, message: "Not Found")) // Error 404: Not Found

// ------------------------------------------------------------
// 🧪 Mini-reto
// ------------------------------------------------------------
// TODO: Añade un nuevo caso a NetworkState: `redirect(url: String)`
// Actualiza la función `render(_:)` para manejarlo y pruébalo.
