# **Solución Investigación 07**

## **1.Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen**

En primer lugar, la exclusión mutua se cumple en este caso, ya que las dos calles y las dos carreras solo pueden ser utilizadas por el tráfico que transita por ellas, mientras que los procesos están utilizando recursos compartidos. Esto crea una situación en la que los procesos deben esperar para poder acceder a los recursos que necesitan, generando un interbloqueo.

En cuanto a la retención y espera, los vehículos en cada intersección retienen el recurso (la vía) mientras esperan que los demás vehículos se muevan. Del mismo modo, en un sistema operativo, los procesos retienen los recursos que han adquirido, pero no pueden avanzar debido a que otros procesos están utilizando recursos que necesitan. Esto también contribuye a la situación de interbloqueo.

La condición de sin desalojo también se cumple en esta situación. Los vehículos en las intersecciones no pueden avanzar porque en la siguiente intersección existe un bloqueo, lo que impide que los procesos liberen los recursos que tienen asignados. Esto provoca un atasco en el tráfico y contribuye al interbloqueo.

Por último, la espera circular es evidente en la imagen. Se puede observar un ciclo de procesos en el que cada proceso está esperando por un recurso que está siendo retenido por otro proceso en el ciclo. Esta situación crea un círculo de espera en el que ningún proceso puede avanzar, lo que agrava aún más el interbloqueo.

## **2.Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.**

El uso de semáforos es un enfoque efectivo para prevenir situaciones de interbloqueo en los sistemas operativos. Esta técnica ayuda a evitar la formación de ciclos de espera y permiten la coordinación adecuada entre los procesos para el acceso a los recursos compartidos. Con es posible mitigar los riesgos de interbloqueo y garantizar un funcionamiento más eficiente y seguro del sistema.

## **3. Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena delos filósofos.**

El problema de la cena de los filósofos es un clásico ejemplo que ilustra los desafíos de la sincronización de procesos en un sistema compartido. 
Ya que el objetivo es que los filósofos alternen entre comer y pensar, utilizando los tenedores para comer.
pero existen ciertas condiciones que pueden llevar a un interbloqueo en este problema. Estas condiciones son las siguientes:

- **Exclusión mutua:** Cada filósofo solo puede tomar los tenedores que están a su lado para comer. Si todos los filósofos intentan tomar los tenedores al mismo tiempo, se crea una condición de exclusión mutua donde ninguno de ellos puede obtener los dos tenedores que necesita para comer.

- **Retención y espera:** Si un filósofo logra tomar un tenedor, pero no puede tomar el otro porque está siendo utilizado por el filósofo vecino, entonces el filósofo debe esperar hasta que el tenedor esté disponible. Mientras tanto, retiene el tenedor que ya tiene, lo que puede provocar un bloqueo si todos los filósofos retienen un tenedor y esperan por el otro.

- **Sin desalojo:** En este problema, los filósofos no pueden ser desalojados de su posición en la mesa. Una vez que un filósofo ha tomado un tenedor y está esperando por el otro, no puede ser forzado a liberar el tenedor que ya tiene. Esto puede generar una situación en la que los filósofos retienen los tenedores indefinidamente, causando un interbloqueo.

- **Espera circular:** Si todos los filósofos toman un solo tenedor y esperan por el otro, se crea un ciclo de espera circular. Cada filósofo está esperando que el filósofo vecino libere el tenedor que necesita, pero ninguno puede avanzar porque todos están reteniendo un tenedor. Esto resulta en un interbloqueo.

## **4. Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.**

La limitación del número de filósofos que pueden estar sentados a la vez es una forma de implementar la exclusión mutua. Al permitir que solo N-1 filósofos se sienten a la mesa al mismo tiempo, se garantiza que siempre haya al menos un filósofo disponible para comer. De esta manera, se evita la condición de exclusión mutua donde todos los filósofos intentan tomar los tenedores al mismo tiempo y ninguno puede obtener los dos necesarios para comer. Esta estrategia asegura que los filósofos puedan turnarse para sentarse y comer, evitando los interbloqueos.

Además, establecer un orden de prioridad para los tenedores también es una solución efectiva. Al asignar un número único a cada tenedor y requerir que los filósofos tomen primero el tenedor con el número más bajo, se evita que todos los filósofos intenten tomar el mismo tenedor al mismo tiempo. Esto garantiza que solo un filósofo pueda tomar el tenedor con el número más bajo y los demás deban esperar su turno. Al establecer este orden, se rompe el ciclo de espera circular y se previene el interbloqueo.

## **5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario.**

El esquema de espera circular se basa en que cada proceso espera hasta que todos los recursos que necesita estén disponibles. Esto puede llevar a un interbloqueo si los procesos se quedan esperando indefinidamente. El tiempo de ejecución adicional necesario en este enfoque depende de la duración de la espera circular. Si los recursos requeridos no están disponibles durante un largo período, el tiempo de ejecución adicional puede ser considerable.

Por otra parte, los esquemas de evasión de interbloqueos se centran en tomar medidas activas para evitar que ocurra un interbloqueo o para recuperarse de él si ya ha ocurrido. Estos esquemas pueden incluir técnicas como la asignación dinámica de recursos, el reordenamiento de solicitudes o la liberación de recursos. El tiempo de ejecución adicional necesario en los esquemas de evasión de interbloqueos puede variar según la técnica utilizada y la eficacia de la estrategia implementada. Algunas técnicas pueden introducir un tiempo adicional mínimo, mientras que otras pueden requerir una cantidad significativa de tiempo para detectar y resolver el interbloqueo.

## **6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.**

En cuanto a la tasa de procesamiento del sistema, el esquema de espera circular y los esquemas de evasión de interbloqueos presentan diferencias en su impacto:

- **Esquema de Espera Circular:** Cuando se produce un interbloqueo, los procesos quedan en espera indefinida hasta que los recursos que necesitan estén disponibles. Esto genera una disminución considerable en la tasa de procesamiento del sistema. Los recursos permanecen inactivos mientras los procesos están bloqueados, lo que impide su utilización efectiva por parte de otros procesos. Como consecuencia, la tasa de procesamiento general del sistema se ve negativamente afectada.
- **Esquema de Evasión de Interbloqueos:** Están diseñados para prevenir o resolver el interbloqueo de forma más activa y eficiente. Estos esquemas permiten un mejor aprovechamiento de los recursos y, por consiguiente, mejoran la tasa de procesamiento del sistema. Técnicas como la asignación dinámica de recursos o la reestructuración de solicitudes evitan la aparición de situaciones de interbloqueo, permitiendo que los procesos continúen ejecutándose sin interrupciones innecesarias. Como resultado, la tasa de procesamiento del sistema puede mantenerse en niveles más altos.

## **7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos.**

En este caso particular, se tienen tres procesos y cuatro recursos del mismo tipo. Cada proceso puede requerir hasta un máximo de dos recursos. Para evitar interbloqueos, es necesario que al menos un proceso pueda adquirir todos los recursos necesarios para completar su ejecución.

Considerando las distintas asignaciones posibles:

Asignación: P1 - 2 recursos, P2 - 2 recursos, P3 - 0 recursos.
En esta asignación, tanto P1 como P2 obtienen todos los recursos que necesitan, mientras que P3 no obtiene recursos. No se produce interbloqueo, ya que P1 y P2 pueden completar su ejecución sin problemas.

Asignación: P1 - 2 recursos, P2 - 0 recursos, P3 - 2 recursos.
En esta asignación, tanto P1 como P3 obtienen todos los recursos que necesitan, mientras que P2 no obtiene recursos. No se produce interbloqueo, ya que P1 y P3 pueden ejecutarse sin problemas.

Asignación: P1 - 0 recursos, P2 - 2 recursos, P3 - 2 recursos.
En esta asignación, tanto P2 como P3 obtienen todos los recursos que necesitan, mientras que P1 no obtiene recursos. No se produce interbloqueo, ya que P2 y P3 pueden completar su ejecución sin problemas.

En todas las asignaciones posibles, al menos un proceso puede adquirir todos los recursos necesarios. Por lo tanto, no existe la posibilidad de que se produzca un estado de interbloqueo. En conclusión, el sistema está libre de interbloqueos en este escenario específico.

## **8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.**

Una posible regla para este caso especifico es la regla del "tenedor asimetrico" y consiste en lo siguiente:

- *Paso 1:* El filósofo decide que quiere comer y necesita adquirir los palillos para hacerlo.

- *Paso 2:* El filósofo intenta adquirir el palillo a su izquierda.

- *Paso 3:* Si el palillo a la izquierda está disponible, el filósofo lo toma.

- *Paso 4:* El filósofo intenta adquirir el palillo a su derecha.

- *Paso 5:* Si ambos palillos (izquierdo y derecho) están disponibles, el filósofo puede tomarlos y comenzar a comer.

- *Paso 6:* Si alguno de los palillos no está disponible, el filósofo debe liberar el palillo que ya ha adquirido.

- *Paso 7:* El filósofo espera a que ambos palillos estén disponibles nuevamente.

- *Paso 8:* El filósofo vuelve al Paso 2 y repite el proceso hasta que pueda adquirir ambos palillos y comer.

Esta regla asegura que los filósofos soliciten los palillos de forma asimétrica y evita que todos los filósofos intenten adquirir el palillo a su izquierda al mismo tiempo, lo que podría causar un estado de interbloqueo. Al solicitar los palillos de uno en uno y liberarlos cuando no están disponibles, se reduce el riesgo de interbloqueo y se permite que al menos un filósofo pueda adquirir todos los palillos necesarios para comer.

## **9. Cual es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?**

La supocisión planteada puede no ser válida en situaciones como:

- **Nuevas Solicitudes de Recursos:** Si los procesos pueden realizar solicitudes adicionales de recursos después de la asignación inicial, se rompe la suposición optimista. Por ejemplo, si un proceso que inicialmente recibió un número limitado de recursos solicita más recursos, el algoritmo de detección de interbloqueos puede no ser capaz de manejar esta situación.

- **Liberación Incorrecta de Recursos:** Si un proceso libera incorrectamente los recursos asignados antes de completar su ejecución, se pueden generar nuevas solicitudes de recursos. Estas solicitudes adicionales violan la suposición de no solicitar recursos en el futuro y pueden afectar la capacidad del algoritmo para detectar y resolver interbloqueos.

- **Recursos Compartidos:** Si los recursos asignados inicialmente son compartidos entre diferentes procesos, existe la posibilidad de que otros procesos soliciten esos recursos compartidos después de la asignación inicial. Si esto ocurre, se viola la suposición de no solicitar recursos adicionales y puede dificultar la detección y resolución de interbloqueos.
