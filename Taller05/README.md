# **Solución Investigación 03**

## **1. Compare las diferencias entre la planeación a corto plazo y largo plazo.**

- La planificación a corto plazo es una técnica importante en la gestión de procesos de un sistema operativo, que se centra en decidir el orden en que se deben ejecutar los procesos que ya están listos para ser ejecutados en ese momento en la CPU. Esta técnica ayuda a maximizar el uso de los recursos del sistema y minimizar el tiempo de espera de los procesos, lo que se traduce en una mayor eficiencia del sistema operativo en general.

- La planificación a largo plazo en un sistema operativo es una técnica esencial que se centra en anticipar y elegir con cuidado los procesos que se ejecutarán en el futuro. Esto ayuda a garantizar que siempre haya una cantidad suficiente de procesos listos para ser ejecutados en la CPU, lo que minimiza el tiempo de espera de los procesos y maximiza la eficiencia del sistema. 

## **2. Caracterice dos procesos que se puedan considerar a mediano plazo.**

- ***Procesos de carga:*** 
Los procesos de carga de archivos son importantes en un sistema operativo, ya que se encargan de cargar archivos en el sistema. Estos procesos pueden tardar algún tiempo en completarse, pero al mismo tiempo, no pueden esperar demasiado tiempo para ser ejecutados. Por esta razón, se clasifican como procesos a mediano plazo.

- ***Procesos de comunicación:***
Los procesos de comunicación entre dispositivos son fundamentales en un sistema operativo, ya que permiten la transferencia de datos entre diferentes dispositivos del sistema. Estos procesos requieren cierta preparación antes de su ejecución, pero no necesitan ser ejecutados inmediatamente. Por lo mencionado se clasifican como procesos a mediano plazo.

## **3. Describa las acciones que toma el kernel para el cambio de contexto entre procesos.**

El cambio de contexto es una operación crítica en un sistema operativo que se refiere al proceso de intercambio de procesos en ejecución en la CPU. Para realizar esta tarea, el kernel del sistema operativo debe tomar medidas para guardar el estado actual del proceso en ejecución, cargar el estado del próximo proceso y actualizar las estructuras de datos asociadas con el proceso. Esto garantiza que el sistema operativo pueda ejecutar procesos de manera segura y eficiente sin conflictos o errores.

Las acciones que toma el kernel son las siguientes:

- **Guardado del contexto actual:** Cuando el kernel del sistema operativo debe realizar un cambio de contexto, una de las tareas más importantes es guardar el estado actual del proceso en ejecución. Esto implica almacenar en la memoria los valores de los registros de la CPU, el valor del puntero de pila y otros datos relevantes para el proceso. De esta manera, el sistema operativo puede asegurarse de que el proceso pueda reanudarse posteriormente en el mismo estado en que se encontraba antes del cambio de contexto.

- **Selección del siguiente proceso a ejecutar:** Después de que el proceso actual ha sido interrumpido, el kernel determina cuál será el siguiente proceso que se ejecutará en la CPU. Esta elección puede basarse en una variedad de factores, como la prioridad del proceso o su tiempo de espera. Esto es importante ya que garantiza que los recursos de la CPU se utilicen de manera eficiente y se atiendan las necesidades de los distintos procesos.

- **Carga del contexto del siguiente proceso:** Cuando el kernel selecciona el siguiente proceso a ejecutar, necesita cargar su contexto para que la CPU pueda continuar ejecutando ese proceso. El contexto incluye información importante como los valores de los registros de la CPU, la dirección de memoria de la próxima instrucción a ejecutar y la ubicación de la pila de la CPU. Esta carga permite que el proceso se continúe ejecutando desde donde se detuvo.

- **Restauración del contexto:** Cuando el kernel ha seleccionado el siguiente proceso que se va a ejecutar, tiene que asegurarse de que el proceso pueda continuar su ejecución sin problemas. Para ello, el kernel restaura el estado anterior del proceso seleccionado, de modo que la CPU pueda retomar la ejecución del código en el punto donde se interrumpió. Esto implica volver a establecer los valores de los registros de la CPU, el valor del puntero de pila y otros datos relevantes que se guardaron previamente en el cambio de contexto, así el nuevo proceso puede continuar su ejecución sin problemas y la CPU puede seguir procesando las instrucciones que le corresponden.

- **Ejecución del nuevo proceso:** El kernel permite que el nuevo proceso sea ejecutado en la CPU y realice sus operaciones habituales.

## **4.Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona.**

### **Comunicación Síncronica:**

- ***Ventajas:***

-Es más fácil de implementar y comprender que la comunicación asíncrona.
-La comunicación síncrona garantiza que el receptor haya recibido los datos antes de continuar con el siguiente proceso.
-Permite una comunicación más simple entre procesos.

- ***Desventajas:***

-La comunicación síncrona puede ralentizar la ejecución de procesos, ya que el emisor y el receptor tienen que esperar a que el otro complete su tarea.
-Si el receptor no está disponible, el emisor se bloquea hasta que se complete la operación de comunicación.
-Es más difícil de implementar una lógica de manejo de errores en la comunicación síncrona.

### **Comunicación Asíncronica:**

- ***Ventajas:***

-La comunicación asíncrona permite que los procesos continúen ejecutándose mientras se envían y reciben datos.
-Los procesos no se bloquean durante la comunicación, lo que permite un mejor rendimiento del sistema.
-La comunicación asíncrona es útil en situaciones en las que no se sabe cuándo estará disponible el receptor.

- ***Desventajas:***

-Es más difícil de implementar que la comunicación síncrona.
-Requiere un manejo más cuidadoso de la sincronización y la concurrencia para evitar problemas de race condition o deadlock.
-Puede ser más difícil de depurar en caso de errores debido a la asincronía.

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
