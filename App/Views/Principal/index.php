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
            <li><a data-toggle="tab" href="#solapa2">📈 Calculos de Operaciones</a></li>
            <li><a data-toggle="tab" href="#solapa3"> 📋 Historial de Operaciones</a></li>
        </ul>

        <div class="tab-content">
            <div id="solapa1" class="tab-pane">
                <div class="section">
                    <div class="section-header">
                        <h4>📋 Historial de Operaciones Abiertas - Cerradas</h4>
                    </div>
                    <div class="section-content">
                        <div id="transaccionesContainer">
                            <p style="text-align: center; color: #6c757d; padding: 20px;">
                                No hay transacciones guardadas. Realiza tu primera operación arriba.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="solapa2" class="tab-pane">
                <div class="section">
                    <div class="section-header">
                        <h4>📈 Datos de Comparación: Brokers, Porcentajes, Proyección, Punto Equilibrio, Bruto Compra,
                            Bruto Venta
                        </h4>
                    </div>
                    <div class="section-content">
                        <div class="form-grid">
                            <div class="form-group">
                                <label for="tnaBancaria">TNA Bancaria (%) HOY</label>
                                <input type="number" id="tnaBancaria" value=" " step="0.001"
                                    oninput="calcularTNA(); calcularCoeficienteBase()">
                            </div>
                            <div class="info-card">
                                <label for="tnaDiaria365">TNA Diaria (365 días)</label>
                                <div class="value" id="tnaDiaria365">0.000000%</div>
                            </div>
                            <div class="info-card">
                                <label for="tnaDiaria260">TNA Diaria (260 días)</label>
                                <div class="value" id="tnaDiaria260">0.000000%</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="section">
                    <div class="section-header">
                        <h4>📝 Configuración de Operación</h4>
                    </div>
                    <div class="section-content">
                        <form id="brokerConfigForm">
                            <div class="form-grid">
                                <div class="form-group">
                                    <label for="nombreBroker">Nombre del Broker</label>
                                    <select id="selectBrokerOperacion" class="form-control"
                                        onchange="actualizarDatosBroker()" required>
                                        <option value="" disabled selected>Seleccione un Broker</option>
                                    </select>
                                    <input type="hidden" id="nombreBroker" value="">
                                </div>
                                <div class="form-group">
                                    <label for="calc_comisionCompra">Comisión sobre Compra (%)</label>
                                    <input type="number" id="calc_comisionCompra" value="0.0" step="0.001"
                                        oninput="calcularCoeficienteBase()">
                                </div>
                                <div class="form-group">
                                    <label for="calc_derechoMercado">Derecho a Mercado (%)</label>
                                    <input type="number" id="calc_derechoMercado" value="0.0" step="0.001"
                                        oninput="calcularCoeficienteBase()">
                                </div>
                                <div class="form-group">
                                    <label for="calc_ivaImpuesto">IVA (%)</label>
                                    <input type="number" id="calc_ivaImpuesto" value="0" step="0.01"
                                        oninput="calcularCoeficienteBase()">
                                </div>
                            </div>
                            <div class="form-grid">
                                <div class="form-group">
                                    <label for="nombreAccion">Nombre/Sigla de la Acción</label>
                                    <input type="text" id="nombreAccion" placeholder="AAPL, etc." required>
                                </div>
                                <div class="form-group">
                                    <label for="valorNeto">Valor Neto (precio por acción)</label>
                                    <input type="number" id="valorNeto" step="0.01" oninput="calcularCoeficienteBase()">
                                </div>
                            </div>
                            <div class="form-grid">
                                <div class="form-group">
                                    <label for="ganciaProyectada">Coef Base Compra (%)</label>
                                    <div class="value" id="coeficienteBase">0.000000%</div>
                                </div>
                                <div class="form-group">
                                    <label for="ganciaProyectada">Punto Equilibrio (%)</label>
                                    <div class="value" id="puntoEquilibrio">0.000000%</div>
                                </div>
                                <div class="form-group">
                                    <label for="ganciaProyectada">TNA 365 + P.Equilibrio (%)</label>
                                    <div class="value" id="tna365pe">0.000000%</div>
                                </div>
                                <div class="form-group">
                                    <label for="ganciaProyectada">TNA 260 + P.Equilibrio (%)</label>
                                    <div class="value" id="tna260pe">0.000000%</div>
                                </div>

                            </div>
                            <div class="form-grid">
                                <div class="form-group">
                                    <label for="vbcompra">Valor Bruto (precio por acción) ($)</label>
                                    <div class="value" id="vbcompra">0.000000%</div>
                                </div>
                                <div class="form-group">
                                    <label for="precioBrutoVenta">Precio Punto Equilibrio ($)</label>
                                    <div class="value" id="precioPuntoEquilibrio">0.000000%</div>
                                </div>
                                <div class="form-group">
                                    <label for="pbvtna365">PBV | P.E. | TNA365 ($)</label>
                                    <div class="value" id="pbvtna365">0.000000%</div>
                                </div>
                                <div class="form-group">
                                    <label for="pbvtna260">PBV | P.E. | TNA260 ($)</label>
                                    <div class="value" id="pbvtna260">0.000000%</div>
                                </div>
                            </div>
                            <div class="form-grid">
                                <div class="form-group">
                                    <label for="PorcGanProy">Proyección Ganancia (%)</label>
                                    <input type="number" id="PorcGanProy" value="0" step="0.000001"
                                        oninput="calcularCoeficienteBase(true)">
                                </div>
                                <div class="form-group">
                                    <label for="vbventa">Valor bruto venta ($)</label>
                                    <div class="value" id="vbventa">0.000000%</div>
                                </div>
                                <div class="form-group">
                                    <label for="cantidadAcciones">Cantidad de Acciones</label>
                                    <input type="number" id="cantidadAcciones" value="1" min="1"
                                        oninput="calcularOperacion()">
                                </div>
                            </div>
                        </form>

                        <div style="margin-top: 20px; text-align: center;">
                            <button type="button" class="btn btn-success" onclick="guardarTransaccion()">
                                💾 Cargar Pre Visualización
                            </button>
                            <button type="button" class="btn btn-warning" onclick="limpiarFormulario()">
                                🔄 Calcular Nueva Operación
                            </button>
                        </div>


                        <div class="table-container">
                            <table class="calculation-table">
                                <thead>
                                    <tr>
                                        <th>Concepto</th>
                                        <th>Valor por Acción</th>
                                        <th>Valor Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><strong>COMPRA</strong></td>
                                        <td colspan="2" style="background: #f8f9fa; font-weight: bold;"></td>
                                    </tr>
                                    <tr>
                                        <td>Valor Neto</td>
                                        <td><input type="text" id="valorNetoDisplay" class="readonly" readonly></td>
                                        <td><input type="text" id="valorNetoTotal" class="readonly" readonly></td>
                                    </tr>
                                    <tr>
                                        <td>Comisión Compra</td>
                                        <td><input type="text" id="comisionCompraDisplay" class="readonly" readonly>
                                        </td>
                                        <td><input type="text" id="comisionCompraTotal" class="readonly" readonly></td>
                                    </tr>
                                    <tr>
                                        <td>Derecho Mercado</td>
                                        <td><input type="text" id="derechoMercadoDisplay" class="readonly" readonly>
                                        </td>
                                        <td><input type="text" id="derechoMercadoTotal" class="readonly" readonly></td>
                                    </tr>
                                    <tr>
                                        <td>IVA</td>
                                        <td><input type="text" id="ivaCompraDisplay" class="readonly" readonly></td>
                                        <td><input type="text" id="ivaCompraTotal" class="readonly" readonly></td>
                                    </tr>
                                    <tr style="background: #e8f4fd;">
                                        <td><strong>Valor Bruto Compra</strong></td>
                                        <td><input type="text" id="valorBrutoCompra" class="readonly" readonly
                                                style="font-weight: bold;"></td>
                                        <td><input type="text" id="valorBrutoCompraTotal" class="readonly" readonly
                                                style="font-weight: bold;"></td>
                                    </tr>
                                    <tr>
                                        <td><strong>VENTA</strong></td>
                                        <td colspan="2" style="background: #f8f9fa; font-weight: bold;"></td>
                                    </tr>
                                    <tr>
                                        <td>Ganancia Proyectada</td>
                                        <td><input type="text" id="gananciaProyectadaDisplay" class="readonly" readonly>
                                        </td>
                                        <td><input type="text" id="gananciaProyectadaTotal" class="readonly" readonly>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Precio Neto Venta</td>
                                        <td><input type="text" id="precioNetoVenta" class="readonly" readonly></td>
                                        <td><input type="text" id="precioNetoVentaTotal" class="readonly" readonly></td>
                                    </tr>
                                    <tr>
                                        <td>Comisión Venta</td>
                                        <td><input type="text" id="comisionVentaDisplay" class="readonly" readonly></td>
                                        <td><input type="text" id="comisionVentaTotal" class="readonly" readonly></td>
                                    </tr>
                                    <tr>
                                        <td>Derecho Mercado Venta</td>
                                        <td><input type="text" id="derechoMercadoVentaDisplay" class="readonly"
                                                readonly>
                                        </td>
                                        <td><input type="text" id="derechoMercadoVentaTotal" class="readonly" readonly>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>IVA Venta</td>
                                        <td><input type="text" id="ivaVentaDisplay" class="readonly" readonly></td>
                                        <td><input type="text" id="ivaVentaTotal" class="readonly" readonly></td>
                                    </tr>
                                    <tr style="background: #e8f5e8;">
                                        <td><strong>Precio Bruto Venta</strong></td>
                                        <td><input type="text" id="precioBrutoVenta" class="readonly" readonly
                                                style="font-weight: bold;"></td>
                                        <td><input type="text" id="precioBrutoVentaTotal" class="readonly" readonly
                                                style="font-weight: bold;"></td>
                                    </tr>
                                    <tr style="background: #fff3cd;">
                                        <td><strong>Ganancia Neta Total</strong></td>
                                        <td><input type="text" id="gananciaNeta" class="readonly" readonly
                                                style="font-weight: bold;">
                                        </td>
                                        <td><input type="text" id="gananciaNetaTotal" class="readonly" readonly
                                                style="font-weight: bold;"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div>


                            <div style="margin-top: 20px; text-align: center;">
                                <button type="button" class="btn btn-success" onclick="guardarTransaccion()">
                                    💾 Guardar Operación
                                </button>
                                <button type="button" class="btn btn-warning" onclick="limpiarFormulario()">
                                    🔄 Limpiar Pre Visualización
                                </button>
                            </div>
                        </div>
                        <br>
                    </div> <!-- Cierre section-content -->
                </div> <!-- Cierre section -->


            </div>

            <div id="solapa3" class="tab-pane active">
                <div class="section">
                    <div class="section-header">
                        <h4>📈 Datos de Brokers - Aranceles - Comisiones - Impuestos</h4>
                    </div>
                    <div class="section-content">
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
                    </div>
                </div>

                <br>

                <div class="section">
                    <div class="section-header">
                        📋 Historial de Brokers y Comisiones
                    </div>
                    <div class="section-content">
                        <div id="brokersContainer">
                            <p style="text-align: center; color: #6c757d; padding: 20px;">
                                No hay brokers guardados. Realiza tu primera carga de Broker.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script>
        // Variables globales
        let transacciones = JSON.parse(localStorage.getItem('transacciones')) || [];
        let configuracion = JSON.parse(localStorage.getItem('configuracion')) || {
            tna: 0.0,
            tnaDiaria260: 0.0,
            tnaDiaria365: 0.0,
            nombreBroker: '',
            comisionCompra: 0.0,
            mercadoCompra: 0.0,
            ivaCompra: 0.0,
            tna: 0.0,
            tnaDiaria260: 0.0,
            tnaDiaria365: 0.0,
            gananciaProyectada: 0.0,
            valorNetoCompra: 0.0,
            PorcGanProy: 0.0,
            ivaBaseCompra: 0.0,
            coeficienteBase: 0.0,
            puntoEquilibrioCalc: 0.0,
            precioBrutoVenta: 0.0,
            tna365pe: 0.0,
            tna260pe: 0.0,
            pbvtna365: 0.0,
            pbvtna260: 0.0,
            pbcompra: 0.0,
            pbventa: 0.0
        };

        function calcularTNA() {
            // Obtiene el valor del elemento HTML con id 'tnaBancaria', lo convierte a número decimal
            // Si el valor está vacío o no es válido, usa 0 como valor por defecto
            configuracion.tna = parseFloat(document.getElementById('tnaBancaria').value) || 0;

            // Calcula la TNA diaria dividiendo por 365 días del año calendario
            // toFixed(6) redondea el resultado a 6 decimales para mayor precisión
            configuracion.tnaDiaria365 = (configuracion.tna / 365).toFixed(6); // 365 días del año

            // Calcula la TNA diaria dividiendo por 260 días hábiles aproximados por año
            // (excluyendo fines de semana y feriados bancarios)
            // toFixed(6) redondea el resultado a 6 decimales para mayor precisión
            configuracion.tnaDiaria260 = (configuracion.tna / 260).toFixed(6); // 260 días hábiles aproximados por año

            // Actualiza el contenido del elemento HTML con id 'tnaDiaria365'
            // Muestra el resultado con el símbolo de porcentaje
            document.getElementById('tnaDiaria365').textContent = configuracion.tnaDiaria365 + '%';

            // Actualiza el contenido del elemento HTML con id 'tnaDiariaHabiles'
            // Muestra el resultado con el símbolo de porcentaje
            document.getElementById('tnaDiaria260').textContent = configuracion.tnaDiaria260 + '%';

            // Retornar los valores para uso en otras funciones
            return {
                tna: configuracion.tna,
                tnaDiaria365: parseFloat(configuracion.tnaDiaria365),
                tnaDiaria260: parseFloat(configuracion.tnaDiaria260)
            };

        }

        function calcularCoeficienteBase(mostrarAlerta = false) {

            configuracion.comisionCompra = parseFloat(document.getElementById('calc_comisionCompra').value);
            configuracion.mercadoCompra = parseFloat(document.getElementById('calc_derechoMercado').value);
            configuracion.ivaCompra = parseFloat(document.getElementById('calc_ivaImpuesto').value);
            configuracion.valorNetoCompra = parseFloat(document.getElementById('valorNeto').value) || 0;
            configuracion.tna = parseFloat(document.getElementById('tnaBancaria').value);
            configuracion.PorcGanProy = parseFloat(document.getElementById('PorcGanProy').value);


            configuracion.ivaBaseCompra = ((((configuracion.comisionCompra / 100) + (configuracion.mercadoCompra / 100)) * (configuracion.ivaCompra / 100))) * 100;
            //suma porcentual total de tasas de compra
            configuracion.coeficienteBase = configuracion.comisionCompra + configuracion.mercadoCompra + configuracion.ivaBaseCompra;
            //coeficiente multiplicador para aplicar las tasas del coeficiente base
            const costoTotal = configuracion.coeficienteBase / 100;
            //valor tasa de equilibrio entre compra y venta aplicado para recuperar misma inversión luego de pagar todos los aranceles
            configuracion.puntoEquilibrioCalc = (((1 + costoTotal) / (1 - costoTotal)) - 1) * 100;
            //valor bruto de venta luego de aplicar coeficiente de punto de equilibrio
            configuracion.precioBrutoVenta = configuracion.valorNetoCompra * ((1 + costoTotal) / (1 - costoTotal));
            //tasa de 365 mas P.E.
            configuracion.tna365pe = (configuracion.tna / 365) + configuracion.puntoEquilibrioCalc;
            //tasa de 260 mas P.E.
            configuracion.tna260pe = (configuracion.tna / 260) + configuracion.puntoEquilibrioCalc;
            //Precio bruto venta obtenido con tna 365 + PE
            configuracion.pbvtna365 = configuracion.valorNetoCompra * (1 + (configuracion.tna365pe / 100));
            //precio bruto venta obtenido con tna 260 + PE
            configuracion.pbvtna260 = configuracion.valorNetoCompra * (1 + (configuracion.tna260pe / 100));
            //precio bruto compra obtenido 
            configuracion.pbcompra = configuracion.valorNetoCompra * (1 + (configuracion.coeficienteBase / 100));
            //precio bruto venta aplicando el porcentaje de ganancia que coloca el operador
            configuracion.pbventa = configuracion.valorNetoCompra * (1 + (configuracion.PorcGanProy / 100));

            // Aplica .toFixed() solo al mostrar
            // Aplica .toFixed() solo al mostrar
            document.getElementById('coeficienteBase').textContent = configuracion.coeficienteBase.toFixed(8) + '%';
            document.getElementById('puntoEquilibrio').textContent = configuracion.puntoEquilibrioCalc.toFixed(8) + '%';
            document.getElementById('tna365pe').textContent = configuracion.tna365pe.toFixed(8) + '%';
            document.getElementById('tna260pe').textContent = configuracion.tna260pe.toFixed(8) + '%';

            // Corrección de IDs y Variables para Sección Compra/Venta
            // Valor Bruto (precio por acción) ($) -> ID vbcompra
            document.getElementById('vbcompra').textContent = configuracion.pbcompra.toFixed(6);

            // Precio Punto Equilibrio ($) -> ID precioPuntoEquilibrio (renombrado para evitar duplicado)
            // Utiliza la logica de precioBrutoVenta (Calculo de PE)
            document.getElementById('precioPuntoEquilibrio').textContent = configuracion.precioBrutoVenta.toFixed(6);

            document.getElementById('pbvtna365').textContent = configuracion.pbvtna365.toFixed(6);
            document.getElementById('pbvtna260').textContent = configuracion.pbvtna260.toFixed(6);

            // Valor bruto venta ($) -> ID vbventa
            // Utiliza configuracion.pbventa (Precio Bruto Venta con Ganancia)
            document.getElementById('vbventa').textContent = configuracion.pbventa.toFixed(6);

            // CONDICIONAL CORREGIDO - Mostrar alerta si se especifica y hay un valor en PorcGanProy
            if (mostrarAlerta && !isNaN(PorcGanProy)) {
                let mensaje = "";

                // Orden correcto: de menor a mayor comparación (más específico primero)
                if (configuracion.PorcGanProy < configuracion.coeficienteBase) {
                    mensaje = "⚠️ ALERTA BAJA: La proyección (" + configuracion.PorcGanProy.toFixed(8) + "%) es menor al coeficiente base (" + coeficienteBase.toFixed(8) + "%)";
                } else if (configuracion.PorcGanProy < configuracion.puntoEquilibrioCalc && configuracion.PorcGanProy > configuracion.coeficienteBase) {
                    mensaje = "⚠️ ALERTA MEDIA: La proyección (" + configuracion.PorcGanProy.toFixed(8) + "%) es menor al punto de equilibrio calculado (" + puntoEquilibrioCalc.toFixed(8) + "%)";
                } else if (configuracion.PorcGanProy < configuracion.tna365pe && configuracion.PorcGanProy > configuracion.puntoEquilibrioCalc) {
                    mensaje = "⚠️ ALERTA ALTA: La proyección (" + configuracion.PorcGanProy.toFixed(8) + "%) es menor a punto de equilibrio más la TNA de las billeteras 365 días (" + tna365pe.toFixed(8) + "%)";
                } else if (configuracion.PorcGanProy < configuracion.tna260pe && configuracion.PorcGanProy > configuracion.configuracion.tna365pe) {
                    mensaje = "⚠️ ALERTA CRÍTICA: La proyección (" + configuracion.PorcGanProy.toFixed(8) + "%) es menor a punto de equilibrio más la TNA de las billeteras 260 días (" + tna260pe.toFixed(8) + "%)";
                } else {
                    mensaje = "✅ PROYECCIÓN ÓPTIMA: La proyección (" + configuracion.PorcGanProy.toFixed(8) + "%) está por encima de todos los parámetros de referencia";
                }

                // Mostrar alerta inmediata
                alert(mensaje);
            }

            return {
                coeficienteBase: configuracion.coeficienteBase,
                puntoEquilibrio: configuracion.puntoEquilibrioCalc,
                tna365pe: configuracion.tna365pe,
                tna260pe: configuracion.tna260pe,
                precioBrutoVenta: configuracion.precioBrutoVenta,
                pbvtna365: configuracion.pbvtna365,
                pbvtna260: configuracion.pbvtna260,
                vbcompra: configuracion.vbcompra,
                vbventa: configuracion.vbventa
            };

            // Función específica para cuando se cambia PorcGanProy
            function onPorcGanProyChange() {
                calcularCoeficienteBase(true);
            }
        }

        function calcularOperacion() {
            const cantidad = parseInt(document.getElementById('cantidadAcciones').value) || 0;
            const valorNeto = parseFloat(document.getElementById('valorNeto').value) || 0;
            const PorcGanProy = parseFloat(document.getElementById('PorcGanProy').value) || 0;
            // Cálculos de compra
            const comisionCompra = valorNeto * (comisionCompra / 100);
            const derechoMercadoCompra = valorNeto * (derechoMercado / 100);
            const ivaCompra = (comisionCompra + derechoMercadoCompra) * (ivaImpuesto / 100);
            const valorBrutoCompra = valorNeto + comisionCompra + derechoMercadoCompra + ivaCompra;

            // Imprimir cada variable individualmente
            console.log('Cantidad:', cantidad);
            console.log('Valor Neto:', valorNeto);
            console.log('Porcentaje Ganancia Proyectada:', PorcGanProy);
            console.log('Comision compra:', comisionCompra);
            console.log('Derecho mercado compra:', derechoMercadoCompra);
            console.log('Iva compra:', ivaCompra);

            if (valorNeto <= 0 || cantidad <= 0) {
                limpiarCalculos();
                return;
            }


            // Cálculos de venta
            const gananciaProyectadaValor = valorBrutoCompra * (gananciaProyectada / 100);
            const precioNetoVenta = valorBrutoCompra + gananciaProyectadaValor;
            const comisionVenta = precioNetoVenta * (configuracion.comisionCompra / 100);
            const derechoMercadoVenta = precioNetoVenta * (configuracion.derechoMercado / 100);
            const ivaVenta = (comisionVenta + derechoMercadoVenta) * (configuracion.ivaImpuesto / 100);
            const precioBrutoVenta = precioNetoVenta + comisionVenta + derechoMercadoVenta + ivaVenta;

            // Ganancia neta
            const gananciaNeta = gananciaProyectadaValor;

            // Mostrar valores por acción
            document.getElementById('valorNetoDisplay').value = formatearMoneda(valorNeto);
            document.getElementById('comisionCompraDisplay').value = formatearMoneda(comisionCompra);
            document.getElementById('derechoMercadoDisplay').value = formatearMoneda(derechoMercadoCompra);
            document.getElementById('ivaCompraDisplay').value = formatearMoneda(ivaCompra);
            document.getElementById('valorBrutoCompra').value = formatearMoneda(valorBrutoCompra);
            document.getElementById('gananciaProyectadaDisplay').value = formatearMoneda(gananciaProyectadaValor);
            document.getElementById('precioNetoVenta').value = formatearMoneda(precioNetoVenta);
            document.getElementById('comisionVentaDisplay').value = formatearMoneda(comisionVenta);
            document.getElementById('derechoMercadoVentaDisplay').value = formatearMoneda(derechoMercadoVenta);
            document.getElementById('ivaVentaDisplay').value = formatearMoneda(ivaVenta);
            document.getElementById('precioBrutoVenta').value = formatearMoneda(precioBrutoVenta);
            document.getElementById('gananciaNeta').value = formatearMoneda(gananciaNeta);

            // Mostrar valores totales
            document.getElementById('valorNetoTotal').value = formatearMoneda(valorNeto * cantidad);
            document.getElementById('comisionCompraTotal').value = formatearMoneda(comisionCompra * cantidad);
            document.getElementById('derechoMercadoTotal').value = formatearMoneda(derechoMercadoCompra * cantidad);
            document.getElementById('ivaCompraTotal').value = formatearMoneda(ivaCompra * cantidad);
            document.getElementById('valorBrutoCompraTotal').value = formatearMoneda(valorBrutoCompra * cantidad);

            document.getElementById('gananciaProyectadaTotal').value = formatearMoneda(gananciaProyectadaValor * cantidad);
            document.getElementById('precioNetoVentaTotal').value = formatearMoneda(precioNetoVenta * cantidad);
            document.getElementById('comisionVentaTotal').value = formatearMoneda(comisionVenta * cantidad);
            document.getElementById('derechoMercadoVentaTotal').value = formatearMoneda(derechoMercadoVenta * cantidad);
            document.getElementById('ivaVentaTotal').value = formatearMoneda(ivaVenta * cantidad);
            document.getElementById('precioBrutoVentaTotal').value = formatearMoneda(precioBrutoVenta * cantidad);
            document.getElementById('gananciaNetaTotal').value = formatearMoneda(gananciaNeta * cantidad);
        }

        function formatearMoneda(valor) {
            return new Intl.NumberFormat('es-AR', {
                style: 'currency',
                currency: 'ARS',
                minimumFractionDigits: 2,
                maximumFractionDigits: 6
            }).format(valor);
        }

        function guardarTransaccion() {

            const nombreAccion = document.getElementById('nombreAccion').value;
            const cantidad = parseInt(document.getElementById('cantidadAcciones').value) || 0;
            const valorNeto = parseFloat(document.getElementById('valorNeto').value) || 0;

            if (!nombreAccion || cantidad <= 0 || valorNeto <= 0) {
                mostrarAlerta('Por favor complete todos los campos requeridos', 'error');
                return;
            }

            // Obtener valores calculados de la tabla
            const valorBrutoCompraTotal = parseFloat(document.getElementById('valorBrutoCompraTotal').value.replace(/[^\d.-]/g, '')) || 0;
            const gananciaNetaTotal = parseFloat(document.getElementById('gananciaNetaTotal').value.replace(/[^\d.-]/g, '')) || 0;
            const gananciaProyectada = parseFloat(document.getElementById('gananciaProyectada').value) || 0;
            // Cálculos de compra
            const comisionCompra = valorNeto * (configuracion.comisionCompra / 100);
            const derechoMercadoCompra = valorNeto * (configuracion.derechoMercado / 100);
            const ivaCompra = (comisionCompra + derechoMercadoCompra) * (configuracion.ivaImpuesto / 100);
            const valorBrutoCompra = valorNeto + comisionCompra + derechoMercadoCompra + ivaCompra;

            // Cálculos de venta
            const gananciaProyectadaValor = valorBrutoCompra * (gananciaProyectada / 100);
            const precioNetoVenta = valorBrutoCompra + gananciaProyectadaValor;
            const comisionVenta = precioNetoVenta * (configuracion.comisionCompra / 100);
            const derechoMercadoVenta = precioNetoVenta * (configuracion.derechoMercado / 100);
            const ivaVenta = (comisionVenta + derechoMercadoVenta) * (configuracion.ivaImpuesto / 100);
            const precioBrutoVenta = precioNetoVenta + comisionVenta + derechoMercadoVenta + ivaVenta;

            // Crear objeto transacción
            const transaccion = {
                //datos de identificación de la transacción
                id: Date.now(),
                fecha: new Date().toLocaleDateString('es-AR'),
                hora: new Date().toLocaleTimeString('es-AR'),
                // PORCENTAJES DE CONFIGURACIÓN (desde HTML) // datos de plataforma o broker
                nombreBroker: document.getElementById('selectBrokerOperacion').options[document.getElementById('selectBrokerOperacion').selectedIndex].text,
                broker: configuracion.nombreBroker,
                comisionPorcentaje: parseFloat(document.getElementById('calc_comisionCompra').value), // % de comisión
                derechoMercadoPorcentaje: parseFloat(document.getElementById('calc_derechoMercado').value), // % derecho mercado
                ivaPorcentaje: parseFloat(document.getElementById('calc_ivaImpuesto').value), // % IVA
                // VALORES MONETARIOS CALCULADOS DE COMPRA
                nombreAccion: nombreAccion,
                cantidad: cantidad,
                valorNeto: valorNeto,
                comisionCompra: comisionCompra, // Valor en dinero
                derechoMercadoCompra: derechoMercadoCompra, // Valor en dinero
                ivaCompra: ivaCompra, // Valor en dinero
                valorBrutoCompra: valorBrutoCompra, // Valor en dinero                
                valorBrutoCompraTotal: valorBrutoCompraTotal,
                // VALORES MONETARIOS CALCULADOS DE VENTA
                gananciaProyectadaPorcentaje: parseFloat(document.getElementById('gananciaProyectada').value), // % ganancia
                gananciaProyectadaValor: gananciaProyectadaValor, // Valor en dinero
                precioNetoVenta: precioNetoVenta,
                comisionVenta: comisionVenta,
                derechoMercadoVenta: derechoMercadoVenta,
                ivaVenta: ivaVenta,
                precioBrutoVenta: precioBrutoVenta,
                gananciaNetaTotal: gananciaNetaTotal,
            };

            //console.table(transaccion);

            // Agregar a la lista de transacciones
            transacciones.unshift(transaccion); // unshift para agregar al principio

            //Guardar en localStorage
            localStorage.setItem('transacciones', JSON.stringify(transacciones));

            // Enviar al servidor
            fetch('calculadora_controlador.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    accion: 'guardarTransaccion',
                    transaccion: transaccion
                })
            })

                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        localStorage.setItem('transaccion', JSON.stringify(transaccion)); // Guarda la transacción en el almacenamiento local del navegador
                        mostrarAlerta('Transacción guardada exitosamente', 'success');
                        mostrarTransacciones();
                    } else {
                        mostrarAlerta('Error al guardar transacción: ' + data.message, 'error');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    mostrarAlerta('Error de conexión al guardar transacción', 'error');
                    // Aún así actualizar la vista local
                    mostrarTransacciones();
                });
        }

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
                    window.listaBrokers = brokers; // Guardar globalmente

                    dibujarBrokers(brokers);
                    cargarSelectBrokers();

                } catch (error) {
                    console.error("Error al obtener datos:", error);
                    document.getElementById('brokersContainer').innerHTML =
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
            document.getElementById('brokersContainer').innerHTML = html;
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
            mostrarTransacciones();
        });

        function mostrarTransacciones() {
            const listado = JSON.parse(localStorage.getItem('transacciones')) || [];
            let html = '<div class="table-responsive"><table class="table table-striped table-bordered transactions-table">';
            html += '<thead class="thead-dark"><tr>' +
                '<th>Fecha</th>' +
                '<th>Broker</th>' +
                '<th>Acción</th>' +
                '<th>Cant.</th>' +
                '<th>Compra Total</th>' +
                '<th>Venta Total</th>' +
                '<th>Ganancia Neta</th>' +
                '</tr></thead><tbody>';

            if (listado.length > 0) {
                listado.forEach(t => {
                    // Asegurar que los valores sean numéricos para formatear
                    const compra = typeof t.valorBrutoCompraTotal === 'string' ? parseFloat(t.valorBrutoCompraTotal) : t.valorBrutoCompraTotal;
                    const venta = typeof t.precioBrutoVentaTotal === 'string' ? parseFloat(t.precioBrutoVentaTotal) : t.precioBrutoVentaTotal;
                    const ganancia = typeof t.gananciaNetaTotal === 'string' ? parseFloat(t.gananciaNetaTotal) : t.gananciaNetaTotal;

                    html += `<tr>
                        <td>${t.fecha} ${t.hora}</td>
                        <td>${t.nombreBroker || '-'}</td>
                        <td>${t.nombreAccion}</td>
                        <td>${t.cantidad}</td>
                        <td>${formatearMoneda(compra)}</td>
                        <td>${formatearMoneda(venta)}</td>
                        <td style="font-weight:bold; color:${ganancia >= 0 ? '#155724' : '#721c24'}">
                            ${formatearMoneda(ganancia)}
                        </td>
                    </tr>`;
                });
            } else {
                html += '<tr><td colspan="7" class="text-center">No hay transacciones guardadas.</td></tr>';
            }
            html += '</tbody></table></div>';

            const container = document.getElementById('transaccionesContainer');
            if (container) {
                container.innerHTML = html;
            }
        }

        function cargarSelectBrokers() {
            const select = document.getElementById('selectBrokerOperacion');
            if (!select) return;

            // Limpiar opciones excepto la primera
            select.innerHTML = '<option value="" disabled selected>Seleccione un Broker</option>';

            if (window.listaBrokers && Array.isArray(window.listaBrokers)) {
                window.listaBrokers.forEach(broker => {
                    const option = document.createElement('option');
                    option.value = broker.id;
                    option.textContent = broker.nombreBroker;
                    option.dataset.comision = broker.comisionCompra;
                    option.dataset.derecho = broker.derechoMercado;
                    option.dataset.iva = broker.ivaImpuesto;
                    select.appendChild(option);
                });
            }
        }

        function actualizarDatosBroker() {
            const select = document.getElementById('selectBrokerOperacion');
            const selectedOption = select.options[select.selectedIndex];

            if (selectedOption && selectedOption.value) {
                // Función auxiliar para asignar valores seguros
                const asignarValor = (id, valor) => {
                    const el = document.getElementById(id);
                    if (el) {
                        // Asegurar formato con punto para input number
                        let safeVal = (valor !== undefined && valor !== null) ? valor.toString() : '0';
                        safeVal = safeVal.replace(',', '.');
                        el.value = safeVal;
                    }
                };

                asignarValor('calc_comisionCompra', selectedOption.dataset.comision);
                asignarValor('calc_derechoMercado', selectedOption.dataset.derecho);
                asignarValor('calc_ivaImpuesto', selectedOption.dataset.iva);

                // Actualizar nombreBroker hidden si es necesario para compatibilidad
                if (document.getElementById('nombreBroker')) {
                    document.getElementById('nombreBroker').value = selectedOption.textContent;
                }

                // Recalcular
                calcularCoeficienteBase();
            }
        }
    </script>
</body>

</html>