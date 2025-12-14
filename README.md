*Logica de configuración de operación
*Estado solapa2 activa
*boton: cargar previsualización
*si no esta cargada la TNA bancaria de hoy
    dar mensaje de error / debe cargarla
*Si no esta seleccionado broker
    dar mensaje de error / debe seleccionar
*Si no esta cargado Nombre / Sigla de la Acción
    dar mensaje de error / debe cargarla
*Si no esta cargado Valor Neto (precio por acción)
    dar mensaje de error / debe cargarla
*si no esta cargado porcentaje de Proyección de gananca
    dar mensaje de error / debe cargarla
*si no esta cargado Cantida de acciones
    dar mensaje de error / debe cargarla
Solo si si cumple con todos los requisitos anteriores
    se puede cargar la previsualición donde la columna de la IZQUIERDA almacena los valores y montos por una acción y la columna de la DERECHA almacena los valores y montos por todas las acciones.


Al precionar botón "calcular nueva operación"
    se deben limpiar los campos del formulario configuración de operación sin afectar los valores del formulario TNA bancaria / billeteras virtuales.
    Además se debe limpiar la previsualización.

Al precionar botón "guardar operación"
    se debe guardar la operación en el historial de operaciones impactando en la base de datos y mostrando inmediatamente el resultado en la solapa 1.
    Además se debe limpiar la previsualización.

En solapa1
a) por cada operación guardada en la base de datos
    se debe mostrar en la tabla de la solapa 1 una nueva columna con acciones:
    Boton: Detalle.
    Este boton mostrará nuevamente la tabla de la solapa 2 con los valores de la operación seleccionada pero cuadro emergente.
b) por cada operación mostrada en la tabla aparecerá como una segunda acción un checkbox que habilitará o deshabilitará la operación para ser vigente.
c) por cada operación mostrada en la tabla aparecerá como una tercera acción un boton que eliminará la operación de la base de datos y de la tabla.


Es correcto el modal, pero es incorrcto que estas mostrando toda la información.
Debe mostrar la misma información que en la tabla, los valores en porcentajes, los valores en dinero de cada apartado y cálculo, debes mostrar dos secciones una con los valores por unidad de acción y otra con los valores por todas las acciones.
Además debes mostrar los valores de los porcentajes y dinero de cada apartado y cálculo.

Modificar la estructura de la tabla para poder guardar:
los porcentajes usados para el cálculo total de la transacción
*comisión compra
*derecho a mercado
*iva
*ganancia proyectada
Modificar todos los métodos y controladores para que puedan guardar los valores anteriores.


En el modal falta completar la información de la columna % Config

