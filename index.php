<?php

// 1. Definición de Constantes y Rutas
// Se definen rutas globales para facilitar el acceso a las carpetas principales.
define('ROOT_PATH', __DIR__);
define('APP_PATH', ROOT_PATH . '/app');
define('CONFIG_PATH', ROOT_PATH . '/config');

// Opcional: Establecer la zona horaria por seguridad
date_default_timezone_set('America/Argentina/Mendoza');

// --- Carga Inicial ---

// 2. Carga del Autocargador (Autoloader)
// Si usas Composer (la herramienta estándar de PHP), aquí se incluye el autoloader.
// Esto permite cargar automáticamente las Clases (Modelos, Controladores, etc.) sin usar 'require'.
require_once ROOT_PATH . '/vendor/autoload.php';
// --- CÓDIGO CLAVE PARA DEPURACIÓN ---
// Imprime la URI completa recibida por PHP.
$solicitud_uri = $_SERVER['REQUEST_URI'] ?? '/';

// echo "<h1>⚠️ Depuración de URI - Error 404</h1>";
// echo "<p>Valor de \$_SERVER['REQUEST_URI']:</p>";
// echo "<pre>";
// var_dump($solicitud_uri);
// echo "</pre>";

// Detenemos el script aquí. Si el valor de la URI no coincide con la ruta 
// definida en tu router, este es el problema.
//die("✅ Revisa si la URI impresa arriba coincide con tus rutas definidas.");
// ------------------------------------
// --- INICIO DE CÓDIGO DE DEPURACIÓN (DEBUG) ---

/**
 * DEBUG: Impresión de la URI Solicitada
 * $_SERVER['REQUEST_URI'] contiene la ruta completa solicitada por el cliente.
 * El uso de die() detiene la ejecución del script para que puedas ver el resultado.
 */
// echo "<h2>🔍 URI Solicitada por el Navegador:</h2>";
// echo "<pre>";
// var_dump($_SERVER['REQUEST_URI']);
// echo "</pre>";

// Información adicional útil
// echo "<h2>🌐 Detalles del Servidor:</h2>";
// echo "<ul>";
// echo "<li><strong>Método HTTP:</strong> " . $_SERVER['REQUEST_METHOD'] . "</li>";
// echo "<li><strong>Script Ejecutado:</strong> " . $_SERVER['SCRIPT_NAME'] . "</li>";
// echo "</ul>";

// Si el valor impreso es correcto, elimina la línea 'die()' y esta sección de código.
// Si el valor es incorrecto (por ejemplo, tiene el nombre del script),
// necesitas ajustar el Router para limpiarlo.
# die("⚠️ Ejecución detenida para depuración de URI. Revisa el valor impreso arriba.");

// --- FIN DE CÓDIGO DE DEPURACIÓN (DEBUG) ---

// 3. Carga del Entorno y Configuración
// ---

// 3. Carga del Entorno y Configuración
// Carga el archivo .env para acceder a las variables de entorno (como DB_PASS).
// Generalmente se hace con una librería como phpdotenv.
use Dotenv\Dotenv;

// Define el nombre del archivo de entorno que quieres usar.
// Hemos asumido que deseas cargar explícitamente el archivo de desarrollo.
$nombreDelArchivo = '.env.desarrollo';

// Carga el archivo de entorno, especificando el nombre
// La librería buscará este archivo dentro del directorio ROOT_PATH.
$dotenv = Dotenv::createImmutable(ROOT_PATH, $nombreDelArchivo);

// **SOLUCIÓN**: Solo necesitamos llamar a load() una vez.
$dotenv->load();

// 4. Inicialización y Servicios (Bootstrapping)
// Se pueden cargar archivos de configuración generales o inicializar el contenedor de servicios.
// Por ejemplo, para iniciar la conexión a la base de datos o sesiones.
// require_once CONFIG_PATH . '/database.php';

// --- Manejo de Solicitudes ---

// 5. Manejo de la Solicitud (Routing)
// Se crea una instancia de la aplicación o del Router (enrutador).
// El Router es el que determina qué Controlador debe ejecutar la solicitud del usuario
// basándose en la URL que se visitó.

// Suponiendo que tienes una clase Router:
$router = new App\Core\Router();

// 6. Ejecución del Enrutador
// El router procesa la URL actual y ejecuta el método del Controlador correspondiente.

$router->dispatch();

// Fin del script index.php