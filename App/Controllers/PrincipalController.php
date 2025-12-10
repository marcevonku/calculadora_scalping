<?php
// app/Controllers/PrincipalController.php
namespace App\Controllers;

// Incluye tu modelo de Brokers
use App\Models\BrokersModel;

class PrincipalController
{
    // Método por defecto: index() - Se ejecuta si la URL es /
    public function index()
    {
        // Cargar la Vista
        $this->renderView('Principal/index', []);
    }

    /**
     * GET /Principal/Brokers
     * Obtiene todos los brokers y los devuelve en formato JSON
     */
    public function Brokers()
    {
        try {
            // Configura el header para respuesta JSON
            header('Content-Type: application/json; charset=utf-8');

            // Instanciamos el modelo
            $brokersModel = new BrokersModel();
            $brokers = $brokersModel->obtenerTodos();

            // Devuelve SOLO el array de brokers (sin wrapper)
            echo json_encode([
                'success' => true,
                'data' => $brokers
            ]);
            exit; // Importante: detener la ejecución aquí

        } catch (\Exception $e) {
            // Manejo de errores
            http_response_code(500);
            echo json_encode([
                'success' => false,
                'error' => 'Error al obtener los brokers',
                'message' => $e->getMessage()
            ]);
            exit;
        }
    }

    /**
     * POST /Principal/guardarBroker
     * Guarda o actualiza un broker
     */
    public function guardarBroker()
    {
        try {
            // Configura el header para respuesta JSON
            header('Content-Type: application/json; charset=utf-8');

            // Verifica que sea una petición POST
            if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
                http_response_code(405);
                echo json_encode([
                    'success' => false,
                    'error' => 'Método no permitido. Use POST.'
                ]);
                exit;
            }

            // Obtiene los datos JSON del body
            $json = file_get_contents('php://input');
            $datos = json_decode($json, true);

            // Log para debug
            error_log("Datos recibidos: " . print_r($datos, true));

            // Validación básica
            if (empty($datos['nombreBroker'])) {
                http_response_code(400);
                echo json_encode([
                    'success' => false,
                    'error' => 'El nombre del broker es obligatorio'
                ]);
                exit;
            }

            // Sanitiza y valida los datos
            $broker = [
                'nombreBroker' => trim($datos['nombreBroker']),
                'comisionCompra' => floatval($datos['comisionCompra'] ?? 0),
                'derechoMercado' => floatval($datos['derechoMercado'] ?? 0),
                'ivaImpuesto' => floatval($datos['ivaImpuesto'] ?? 0),
                'activo' => isset($datos['activo']) ? intval($datos['activo']) : 1,
                'fec_registro' => date('Y-m-d H:i:s')
            ];

            $brokersModel = new BrokersModel();

            if (isset($datos['id']) && !empty($datos['id'])) {
                // Actualizar
                $broker['id'] = intval($datos['id']);
                $resultado = $brokersModel->actualizar($broker);
            } else {
                // Insertar nuevo
                $id = $brokersModel->insertar($broker);
                $broker['id'] = $id;
            }

            echo json_encode([
                'success' => true,
                'message' => 'Broker guardado exitosamente',
                'data' => $broker
            ]);
            exit;
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode([
                'success' => false,
                'error' => 'Error al guardar el broker',
                'message' => $e->getMessage()
            ]);
            exit;
        }
    }

    /**
     * POST /Principal/cambiarEstado
     * Cambia el estado (activo/inactivo) de un broker
     */
    public function cambiarEstado()
    {
        try {
            header('Content-Type: application/json; charset=utf-8');

            if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
                throw new \Exception('Método no permitido');
            }

            $json = file_get_contents('php://input');
            $datos = json_decode($json, true);

            if (empty($datos['id']) || !isset($datos['activo'])) {
                throw new \Exception('Datos incompletos');
            }

            $brokersModel = new BrokersModel();
            $resultado = $brokersModel->actualizarEstado($datos['id'], $datos['activo']);

            if ($resultado) {
                echo json_encode(['success' => true]);
            } else {
                echo json_encode(['success' => false, 'error' => 'No se pudo actualizar']);
            }
        } catch (\Exception $e) {
            http_response_code(500);
            echo json_encode(['success' => false, 'error' => $e->getMessage()]);
        }
    }

    /**
     * Función auxiliar para cargar vistas y pasar datos
     */
    protected function renderView(string $viewPath, array $data = [])
    {
        // Extrae los datos del array como variables individuales
        extract($data);

        // Construye la ruta completa del archivo de vista
        $viewFile = APP_PATH . '/Views/' . $viewPath . '.php';


        if (file_exists($viewFile)) {
            require_once $viewFile;
        } else {
            http_response_code(404);
            echo "Error: Archivo de vista '{$viewFile}' no encontrado.";
        }
    }
}
