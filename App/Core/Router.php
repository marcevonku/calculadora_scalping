<?php

namespace App\Core;

class Router
{
    public function dispatch()
    {
        // 1. Obtener y limpiar la URL
        // Capturamos la URI de la solicitud (incluyendo parámetros GET)
        $requestUri = $_SERVER['REQUEST_URI'] ?? '/';

        // Usamos parse_url para aislar la ruta y eliminar parámetros GET (?foo=bar)
        $uri = parse_url($requestUri, PHP_URL_PATH);

        // Elimina el subdirectorio y normaliza la URI. 
        // Después de esta llamada, $uri será una de estas formas:
        // '/' (para la ruta raíz) o 'Principal/Brokers' (para la ruta AJAX)
        $uri = $this->removeSubdirectory($uri);

        // ----------------------------------------------------


        // **INICIO DE LA LÓGICA DE SEGMENTACIÓN CORREGIDA**

        // Si la URI es '/', $segments debe ser un array vacío para usar los valores por defecto.
        if ($uri === '/') {
            $segments = [];
        } else {
            // Divide la URL en partes (segmentos)
            $segments = explode('/', $uri);
        }

        // El primer segmento es el Controlador. El valor por defecto es 'Principal'.
        $controllerName = array_shift($segments);
        if (!$controllerName) {
            $controllerName = 'Principal';
        }

        // La acción por defecto es 'index'.
        $actionName = array_shift($segments);
        if (!$actionName) {
            $actionName = 'index';
        }

        // Los segmentos restantes son Parámetros
        $params = $segments;

        // **FIN DE LA LÓGICA DE SEGMENTACIÓN CORREGIDA**

        // 2. Formatear nombres de clases y métodos
        // Convertimos 'principal' a 'PrincipalController' (Convención de nombramiento)
        $controllerClass = 'App\\Controllers\\' . ucfirst($controllerName) . 'Controller';
        $actionMethod = $actionName;

        // 3. Verificar y cargar el Controlador
        if (!class_exists($controllerClass)) {
            // Manejo de error 404
            header("HTTP/1.0 404 Not Found");
            echo "Error 404: Controlador no encontrado para la ruta '{$controllerName}'";
            return;
        }

        // 4. Instanciar y ejecutar
        $controller = new $controllerClass();

        // DEBUG: Imprime qué método y clase se buscan
        echo "";

        if (!method_exists($controller, $actionMethod)) {
            // Manejo de error 404: Método no encontrado
            header("HTTP/1.0 404 Not Found");
            echo "Error 404: Acción '{$actionMethod}' no definida en el controlador";
            return;
        }

        // Llama al método del controlador (la acción) y le pasa los parámetros
        call_user_func_array([$controller, $actionMethod], $params);
    }

    // Función auxiliar para manejar subdirectorios y normalizar la URI
    private function removeSubdirectory(string $uri): string
    {
        // Define el nombre de la carpeta raíz de tu proyecto
        $basePath = 'calculator_scalping';

        // Limpia las barras iniciales/finales de la URI antes de procesar
        $uri = trim($uri, '/');

        // Elimina el subdirectorio de la URI
        if (strpos($uri, $basePath) === 0) {
            $uri = substr($uri, strlen($basePath));
        }

        // Normalización final: Elimina barras restantes (si quedan)
        $uri = trim($uri, '/');

        // Si la URI es vacía (solicitud raíz después de la limpieza), devuelve la barra /
        if (empty($uri)) {
            return '/';
        }

        // Devuelve la URI limpia y lista para ser segmentada (ej. 'Principal/Brokers')
        return $uri;
    }
}
