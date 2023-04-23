# **Solución Investigación 03**

## **5. Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia.**

### **Envío por copia:**

- ***Ventajas:***

-Independencia: Al copiar los datos, se crea una versión independiente que se puede modificadar y así no afectar el original.

-Facilidad de manejo: Es más fácil manipular una copia de los datos que los datos originales.

-Privacidad: Si los datos son confidenciales, copiarlos puede ser una forma de protegerlos ya que así el original no será modificado.

- ***Desventajas:***

-Uso de recursos: Copiar datos consume recursos del sistema, especialmente en el caso de grandes conjuntos de datos.

-Latencia: Copiar datos puede llevar a que se tarde más tiempo que enviar una referencia a ellos mismos, especialmente en redes de baja velocidad.

-Duplicación: Al copiar los datos,  como se mencionaba anteriormente, se consumen más recursos ya que se crea una duplicación que puede ocupar espacio en disco.

### **Envío por referencia:**


- ***Ventajas:***

-Eficiencia: Enviar una referencia a los datos es más eficiente que copiarlos, ya que no se consume tanto recursos del sistema.

-Actualización en tiempo real: Los cambios en los datos originales se reflejan inmediatamente en la referencia.

-Compartición: Varias aplicaciones pueden compartir los mismos datos utilizando referencias, lo que permite ahorrar espacio en disco.


- ***Desventajas:***

-Riesgo de corrupción: Si los datos referenciados son modificados por otras aplicaciones de forma inesperada, la integridad de los datos puede verse comprometida.

-Problemas de seguridad: Si los datos son confidenciales, enviar una referencia puede exponerlos a posibles ataques.

-Complejidad de manejo: En algunos casos, el manejo de referencias puede ser más complejo que el manejo de copias de datos.

## **6.Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo y de tamaño variable.**

### **Mensajes de tamaño fijo:**

- ***Ventajas:***

-Eficiencia: Los mensajes de tamaño fijo se manejan de forma más eficiente que los de tamaño variable, ya que el sistema operativo sabe exactamente cuánto espacio reservar para cada mensaje.

-Previsibilidad: El tamaño constante de los mensajes facilita la programación, ya que no hay que preocuparse por la posibilidad de que un mensaje sea demasiado grande o demasiado pequeño.

-Menor uso de memoria: Al no tener que manejar el tamaño variable de los mensajes, se requiere menos memoria para su almacenamiento.

- ***Desventajas:***

-Desperdicio de recursos: Si los mensajes tienen un tamaño mayor del necesario, se puede desperdiciar espacio en memoria o en red.

-Limitaciones en la capacidad: Los mensajes de tamaño fijo pueden limitar la cantidad de información que se puede transmitir a través de una red o de un canal de comunicación.

-Problemas de fragmentación: Si el tamaño de los mensajes no coincide con la unidad de transferencia de datos de la red, se pueden producir problemas de fragmentación y generar fallos en la comunicación.

### **Mensajes de tamaño variable:**

- ***Ventajas:***

-Flexibilidad: Los mensajes de tamaño variable permiten transmitir una cantidad variable de información, adaptándose a las necesidades específicas de la aplicación.

-Mejor uso de recursos: Al no tener que reservar un espacio fijo para cada mensaje, se puede hacer un mejor uso de la memoria y de la red.

-Adaptación a condiciones de la red: Los mensajes de tamaño variable pueden adaptarse a las condiciones de la red, evitando problemas de fragmentación.

- ***Desventajas:***

-Mayor complejidad: Manejar mensajes de tamaño variable es más complejo que manejar mensajes de tamaño fijo, ya que es necesario prever y manejar diferentes tamaños de mensajes.

-Problemas de sobrecarga: En redes con un gran tráfico de mensajes de tamaño variable, puede haber un aumento en la sobrecarga de la red, lo que puede afectar negativamente su rendimiento.

-Menor previsibilidad: El tamaño variable de los mensajes puede hacer que la programación sea más difícil, ya que no se sabe exactamente cuánto espacio se va a necesitar para cada mensaje.

## **7. Describa los estados de un proceso.**

Los principales estados de un proceso son los siguientes:

- **Nuevo (new):** Este es el estado inicial de un proceso. El proceso se ha creado, pero todavía no se ha cargado en memoria y no se está ejecutando.

- **Listo (ready):** En este estado, el proceso ha sido cargado en memoria y está listo para ser ejecutado, pero aún no se ha asignado ningún tiempo de CPU. El proceso espera a que se le asigne un tiempo de CPU para poder ejecutarse.

- **Ejecución (running):** Cuando el proceso obtiene un tiempo de CPU, entra en el estado de ejecución. El proceso está siendo ejecutado por el procesador y está realizando sus operaciones.

- **Bloqueado (blocked):** En este estado, el proceso está temporalmente inactivo y no puede continuar su ejecución debido a alguna condición, como esperar la entrada/salida (I/O) de datos. En este estado, el proceso no utiliza tiempo de CPU.

- **Terminado (terminated):** Cuando un proceso termina su ejecución o es terminado por el sistema operativo, entra en el estado terminado. En este estado, el proceso se ha eliminado de la memoria y ya no está en ejecución.

Además de estos, existen otros estados secundarios como el estado de espera (waiting), que indica que el proceso está esperando un evento externo para continuar su ejecución. También existen los estados de prioridad que, como su nombre lo dice, indican la prioridad del proceso en la asignación de recursos del sistema.

## **8. Que datos se encuentran en un PCB.**

- Identificador de proceso (PID, de sus siglas en inglés).
- Estado del proceso. Por ejemplo: listo, en espera, bloqueado.
- Contador de programa. Es la dirección de la próxima instrucción a ejecutar.
- Valores de registro de CPU. Se utilizan también en el cambio de contexto.
- Espacio de direcciones de memoria.
- Prioridad en caso de utilizarse dicho algoritmo para planificación de CPU.
- Lista de recursos asignados (incluyendo descriptores de archivos y sockets abiertos).
- Estadísticas del proceso.
- Datos del propietario (owner).
- Permisos asignados.
- Señales (Signals) pendientes de ser servidas. (Almacenados en un mapa de bits).

## **9. Describa un modelo de comunicación Cliente-Servidor.**

En un modelo de comunicación Cliente-Servidor el proceso que solicita un servicio se denomina cliente y el proceso que proporciona dicho servicio se denomina servidor.
Un modelo de comunicación Cliente-Servidor funciona de la siguiente forma:

- El cliente envía una solicitud al servidor: El proceso cliente envía una solicitud al servidor para que realice una tarea o proporcione algún recurso.

- El servidor recibe la solicitud y la procesa: El servidor puede realizar una tarea o proporcionar un recurso en función de la solicitud del cliente.

- El servidor envía la respuesta al cliente: Una vez que el servidor ha procesado la solicitud del cliente, envía la respuesta al cliente. La respuesta puede incluir los datos solicitados, una confirmación de que se ha completado la tarea o un mensaje de error si la solicitud no se puede llevar a cabo.

- El cliente recibe la respuesta: Dependiendo de la respuesta, el cliente puede continuar con su proceso o enviar otra solicitud al servidor.
