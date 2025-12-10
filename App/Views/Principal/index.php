<?php

?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora de Trading - Acciones y CEDEARS</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <div class="header">
            <h4>Calculadora de Trading - Acciones y CEDEARS</h4>
        </div>

        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#solapa1">📈 Datos de Brokers</a></li>
            <li><a data-toggle="tab" href="#solapa2">Solapa 2</a></li>
            <li><a data-toggle="tab" href="#solapa3">Solapa 3</a></li>
        </ul>

        <div class="tab-content">
            <div id="solapa1" class="tab-pane active">
                <h3>
                    <div class="section-header">
                        📈 Datos de Brokers - Aranceles - Comisiones - Impuestos
                    </div>
                </h3>

                <div class="form-grid">
                    <div class="form-group">
                        <input type="hidden" id="brokerId" value="">
                        <label for="nombreBroker">Nombre del Broker</label>
                        <input type="text" id="nombreBroker" value="" placeholder="Ej. Bull Market" required>
                    </div>
                    <div class="form-group">
                        <label for="comisionCompra">Comisión sobre Movimiento (%)</label>
                        <input type="number" id="comisionCompra" value="0.00" step="0.001" oninput="">
                    </div>
                    <div class="form-group">
                        <label for="derechoMercado">Derecho a Mercado (%)</label>
                        <input type="number" id="derechoMercado" value="0.00" step="0.001" oninput="">
                    </div>
                    <div class="form-group">
                        <label for="ivaImpuesto">IVA (%)</label>
                        <input type="number" id="ivaImpuesto" value="0" step="0.01" oninput="">
                    </div>
                </div>



                <div style="margin-top: 20px; text-align: center;">
                    <button type="button" class="btn btn-success" onclick="guardarBroker()">
                        💾 Guardar Broker
                    </button>
                    <button type="button" class="btn btn-warning" onclick="nuevoBroker()">
                        🔄 Nuevo Broker
                    </button>
                </div>
                <br>

                <div class="section">
                    <div class="section-header">
                        📋 Historial de Brokers y Comisiones
                    </div>
                    <div class="section-content">
                        <div id="transaccionesContainer">
                            <p style="text-align: center; color: #6c757d; padding: 20px;">
                                No hay brokers guardados. Realiza tu primera carga de Broker.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="solapa2" class="tab-pane">
                <h3>Contenido Solapa 2</h3>
                <p>Tu contenido aquí</p>
            </div>

            <div id="solapa3" class="tab-pane">
                <h3>Contenido Solapa 3</h3>
                <p>Tu contenido aquí</p>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>
        const BASE_URL = '/calculator_scalping/Principal';

        // Función para mostrar datos
        async function mostrar_datos(parametro) {
            if (parametro === 'Brokers') {
                try {
                    const response = await fetch(`${BASE_URL}/Brokers`);

                    if (!response.ok) {
                        throw new Error(`Error HTTP: ${response.status}`);
                    }

                    const datosRecibidos = await response.json();

                    if (!datosRecibidos.success) {
                        throw new Error(datosRecibidos.error || 'Error desconocido del servidor');
                    }

                    // Manejo flexible de la respuesta (array directo o envuelto en data)
                    const brokers = datosRecibidos.data;

                    dibujarBrokers(brokers);

                } catch (error) {
                    console.error("Error al obtener datos:", error);
                    document.getElementById('transaccionesContainer').innerHTML =
                        `<p style="text-align: center; color: #dc3545; padding: 20px;">
                            ❌ Error al cargar los brokers: ${error.message}
                        </p>`;
                }
            }
        }

        // Función para dibujar la tabla de brokers
        function dibujarBrokers(datos) {
            let html = '<div class="table-responsive"><table class="table table-striped table-bordered table-hover">';
            html += '<thead class="thead-dark"><tr>' +
                '<th>ID</th>' +
                '<th>Activo</th>' +
                '<th>Broker</th>' +
                '<th>Comisión %</th>' +
                '<th>Derecho %</th>' +
                '<th>IVA %</th>' +
                '<th>Fecha Creación</th>' +
                '<th>Fecha Modificado</th>' +
                '<th>Acciones</th>' +
                '</tr></thead><tbody>';

            if (Array.isArray(datos) && datos.length > 0) {
                datos.forEach(broker => {
                    const checked = broker.activo == 1 ? 'checked' : '';
                    const brokerJson = JSON.stringify(broker).replace(/"/g, '&quot;');

                    html += `<tr>
                        <td>${broker.id}</td>
                        <td class="text-center">
                            <input type="checkbox" ${checked} onchange="cambiarEstado(${broker.id}, this)">
                        </td>
                        <td>${broker.nombreBroker}</td>
                        <td>${broker.comisionCompra}</td>
                        <td>${broker.derechoMercado}</td>
                        <td>${broker.ivaImpuesto}</td>
                        <td>${broker.fec_registro}</td>
                        <td>${broker.fec_modificado || '-'}</td>
                        <td>
                            <button class="btn btn-sm btn-primary" onclick="editarBroker(${brokerJson})">
                                ✏️ Editar
                            </button>
                        </td>
                    </tr>`;
                });
            } else {
                html += '<tr><td colspan="9" class="text-center">No hay brokers registrados</td></tr>';
            }

            html += '</tbody></table></div>';
            document.getElementById('transaccionesContainer').innerHTML = html;
        }

        // Función para cargar datos en el formulario para editar
        function editarBroker(broker) {
            document.getElementById('brokerId').value = broker.id;
            document.getElementById('nombreBroker').value = broker.nombreBroker;
            document.getElementById('comisionCompra').value = broker.comisionCompra;
            document.getElementById('derechoMercado').value = broker.derechoMercado;
            document.getElementById('ivaImpuesto').value = broker.ivaImpuesto;

            // Scroll al formulario
            document.getElementById('nombreBroker').focus();
        }

        // Función para cambiar estado activo/inactivo
        async function cambiarEstado(id, checkbox) {
            const estado = checkbox.checked ? 1 : 0;

            try {
                const response = await fetch(`${BASE_URL}/cambiarEstado`, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ id: id, activo: estado })
                });

                const result = await response.json();

                if (!result.success) {
                    alert('❌ Error al actualizar estado: ' + (result.error || 'Error desconocido'));
                    checkbox.checked = !checkbox.checked; // Revertir cambio
                }
            } catch (error) {
                console.error('Error:', error);
                alert('❌ Error de conexión');
                checkbox.checked = !checkbox.checked; // Revertir cambio
            }
        }

        // Función para guardar broker
        async function guardarBroker() {
            const data = {
                id: document.getElementById('brokerId').value,
                nombreBroker: document.getElementById('nombreBroker').value,
                comisionCompra: document.getElementById('comisionCompra').value,
                derechoMercado: document.getElementById('derechoMercado').value,
                ivaImpuesto: document.getElementById('ivaImpuesto').value
            };

            if (!data.nombreBroker) {
                alert('Por favor ingrese el nombre del broker');
                return;
            }

            try {
                const response = await fetch(`${BASE_URL}/guardarBroker`, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(data)
                });

                const text = await response.text();
                console.log('Raw Server Response:', text);

                try {
                    var result = JSON.parse(text);
                } catch (e) {
                    console.error('JSON Parse Error:', e);
                    alert('❌ Error del servidor: Respueta no válida (mira la consola)');
                    return;
                }

                if (result.success) {
                    alert('✅ ' + result.message);
                    mostrar_datos('Brokers'); // Recargar lista
                    nuevoBroker(); // Limpiar formulario
                } else {
                    alert('❌ Error: ' + (result.error || 'Error desconocido'));
                }
            } catch (error) {
                console.error('Fetch Error:', error);
                alert('❌ Error de conexión: ' + error.message);
            }
        }

        // Función para limpiar el formulario
        function nuevoBroker() {
            document.getElementById('brokerId').value = '';
            document.getElementById('nombreBroker').value = '';
            document.getElementById('comisionCompra').value = '0.00';
            document.getElementById('derechoMercado').value = '0.00';
            document.getElementById('ivaImpuesto').value = '0';
            document.getElementById('nombreBroker').focus();
        }

        // Inicialización
        document.addEventListener('DOMContentLoaded', function () {
            mostrar_datos('Brokers');
        });
    </script>
</body>

</html>