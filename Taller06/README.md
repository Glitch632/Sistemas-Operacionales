# **Solución Investigación 04**

## **1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.**

- **Tarea secuencial:** Cuando se trata de tareas que implican un procesamiento secuencial de datos, como el cálculo matemático o el análisis de datos, el uso de múltiples hilos no es muy útil porque estos tipos de tareas no se pueden dividir en tareas paralelas de manera efectiva. En otras palabras, no es posible descomponer la tarea en partes más pequeñas y realizar cada parte de forma paralela en múltiples hilos de manera efectiva. Como resultado, en estos casos, utilizar múltiples hilos no mejorará el rendimiento, y la tarea se realizará con un solo hilo que llevará a cabo todo el procesamiento.

- **Tareas pequeñas:** Cuando una aplicación tiene una carga de trabajo pequeña y no tiene tareas que puedan ser ejecutadas en paralelo, el uso de hilos adicionales puede introducir una sobrecarga y reducir el rendimiento. En estos casos, es importante considerar el costo de crear y administrar hilos adicionales, ya que puede ser mayor que el beneficio de realizar tareas en paralelo. En otras palabras, la creación de múltiples hilos puede requerir recursos adicionales y generar una sobrecarga en el sistema, lo que puede disminuir el rendimiento en lugar de mejorarlo. Por lo tanto, en estos casos, puede ser más eficiente y económico utilizar un solo hilo para realizar la tarea.

## **2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.**

- Para permitir que la biblioteca multihilo cambie el hilo activo, es necesario programar una interrupción que se active periódicamente en un intervalo regular de tiempo. Esta interrupción permitirá que el sistema operativo o la biblioteca cambien la ejecución del programa de un hilo a otro. 
- Para asegurar un uso eficiente de los recursos del sistema, es importante seleccionar cuidadosamente qué hilo será ejecutado en un momento determinado, en función de su estado y prioridad. Esto significa que, en lugar de dejar que los hilos se ejecuten de manera aleatoria o según el orden en que se crearon, es necesario tener en cuenta información como el estado de cada hilo y su nivel de prioridad.
- Antes de cambiar al siguiente hilo, es necesario guardar toda la información y datos del hilo actual en una estructura de datos. Esta estructura se almacenará en la memoria de nivel de usuario. De esta forma, el sistema puede reanudar la ejecución del hilo actual en el punto en que se detuvo en caso de que se vuelva a seleccionar.
- Una vez que se ha seleccionado un hilo para ser ejecutado, es necesario recuperar su contexto previamente guardado en una estructura de datos en la memoria de nivel de usuario. Esto significa que se deben restaurar todos los valores de los registros y variables que el hilo tenía en el momento en que se detuvo su ejecución, de manera que pueda continuar exactamente donde quedó.
- Por último, se elegirá un nuevo hilo para ejecutar y se configurará como activo para que continúe la ejecución del proceso en ese hilo.

## **3. Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?**

No, en un proceso multihilo, los valores de los registros de la CPU son privados y no se comparten entre los hilos. Los registros son utilizados por la CPU para almacenar temporalmente los datos y realizar operaciones mientras se ejecuta un programa. 
Cada hilo tiene su propio conjunto de registros, pila de llamadas y memoria local. Esto permite que los hilos se ejecuten de forma independiente sin interferir entre sí en cuanto al uso de recursos de la CPU. Compartir los valores de los registros entre hilos podría generar conflictos y comprometer la integridad de los datos, lo que puede generar resultados impredecibles en la ejecución del programa.

## **4. Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?**

Sí, en un proceso multihilo los cúmulos de memoria, como el heap y el stack, suelen ser compartidos entre los hilos. Esto significa que los hilos pueden acceder y modificar los mismos datos en memoria compartida. 
Sin embargo, cada hilo tiene su propia pila de ejecución y registros de CPU, que no se comparten entre los hilos. Esto permite que los hilos trabajen de forma independiente y que no interfieran entre sí al utilizar los registros y recursos de la CPU. Es importante tener en cuenta que si los hilos acceden y modifican los mismos datos en memoria compartida, se deben utilizar técnicas de sincronización para evitar conflictos y mantener la integridad de los datos.

## **5. Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?**

Sí, las variables globales, como su nombre lo indica, son globales, lo que les permite ser accesibles y modificables por cualquier hilo en el proceso.
Esto se debe a que todos los hilos de un proceso comparten el mismo espacio en memoria, y pues por lo tanto tienen acceso a los mismos datos y pues cualquier cambio realizado en una variable global por un hilo será visiable para todos los otros hilos del mismo proceso.
Es importante tener en cuenta que si varios hilos acceden y modifican la variable global simultaneamente, puede haber problemas y obtener resultados inesperados. Para esto se deben tener precauciones, utilizando mecanismos de sincronización y así garantizar que solo un hilo a la vez tiene acceso a la variable.

## **6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?**

No, cada hilo tiene su propia pila, que se utiliza para almacenar las variables locales, los argumentos de función y la información de retorno. Esto es porque
cada hilo necesita su propia pila para que las llamadas a funciones y las variables locales se puedan administrar correctamente sin interferencia entré sí.

## **7.  En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.**

Puede proporcionar mejor rendimiento cuando se puede realizar procesamiento paralelo, mejorar la capacidad de respuesta y/o mejorar el rendimiento entrada/salida(E/S).
Explicando más a detalle las ocaciones mencionadas anteriormente:

- **Procesamiento paralelo:** Si la tareaa realizar se puede dividir en varias sub-tareas independientes, entonces se puede asignar cada sub-tarea a un hilo diferente. Esto permite que múltiples hilos trabajen simultáneamente y aceleren el proceso, ya que pueden realizar diferentes partes de la tarea al mismo tiempo.
Pero que un solo hilo tenga que realizar cada sub-tarea secuencialmente puede que tarde más tiempo.

- **Mejora de la capacidad de respuesta:** En sistemas interactivos, como aplicaciones de usuario, múltiples hilos pueden mejorar la capacidad de respuesta del sistema. 
Por ejemplo, si un hilo está esperando una entrada del usuario, otro hilo puede continuar procesando datos en segundo plano sin bloquear el hilo de la interfaz de usuario.

- **Mejora del rendimiento de entrada/salida(E/S):** En aplicaciones que realizan operaciones de E/S intensivas, como transferencia de archivos o descarga de datos de la red, múltiples hilos pueden mejorar el rendimiento al permitir que un hilo espere en una operación de E/S mientras otro hilo realiza operaciones de procesamiento de datos.
Esto puede reducir el tiempo de espera y acelerar la tarea.

## **8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?**

Sí, una solución multihilo que utiliza múltiples hilos de usuario puede lograr un mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador debido a la distribución de hilos entre diferentes núcleos de procesador y la capacidad de cada núcleo de tener su propia caché.

Recordemos que en el sistema multiprocesador los los hilos se pueden distribuir entre los diferentes procesadores, lo que permite que múltiples hilos trabajen simultáneamente en diferentes núcleos de procesador. Lo que permite acelerar el proceso y reducir el tiempo total de ejecución de la tarea. Y cada procesador tiene su propia caché, lo que mejora el rendimiento general del sistema.
En cambio, en el sistema monoprocesador  los hilos tienen que compartir el tiempo de procesamiento en un solo núcleo, lo que puede provocar cuellos de botella y retrasos. Y los hilos comparten la misma caché lo que puede provocar congestión.

## **9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores**

Lo que sucede en este caso, es que los hilos de usuario tendrán que competir por el tiempo de procesamiento de los pocos hilos del kernel disponibles. Y esto puede provocar mayor latencia en la ejecución de los hilos de usuario y un retraso en la finalización de la tarea en general.

Y si llegado el caso donde algunos hilos de usuario estén bloqueados esperando la finalización de una tarea de E/S, los hilos del kernel disponibles pueden estar inactivos mientras esperan a que se complete la tarea del hilo de usuario bloqueado. Esto provocaría aún más bajo rendimiento del sistema y pues un uso ineficiente de los recursos.
