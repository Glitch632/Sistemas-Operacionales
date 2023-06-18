# **Solución Investigación 09**

## **1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda.**

La paginación bajo demanda es una técnica que permite gestionar eficientemente la memoria. Utiliza una unidad de gestión de memoria (MMU) y una tabla de páginas para traducir direcciones virtuales a direcciones físicas. Esto permite a los procesos utilizar direcciones virtuales que se mapean a ubicaciones físicas reales en la memoria. Cuando se necesita una página que no está presente en la memoria física, se genera una falta de página y el sistema operativo carga la página necesaria desde el almacenamiento secundario. Esto permite utilizar más memoria de la disponible físicamente y las páginas se cargan y descargan según se necesiten.

## **2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?**

La técnica de Copy-on-Write (COW) es utilizada en sistemas operativos y bases de datos para mejorar la gestión de memoria y el rendimiento al copiar datos. En lugar de realizar una copia inmediata al escribir, la estrategia de COW retrasa la copia hasta que sea requerida. En su lugar, se comparte una copia en memoria entre el proceso original y el proceso que realiza la escritura. Cuando se modifica un dato, se realiza una copia separada antes de aplicar la escritura. Esta técnica ahorra recursos y tiempo al evitar copias innecesarias de datos.

La estrategia de COW es eficiente en la administración de memoria, ya que permite compartir la misma área de memoria entre varios procesos o hilos sin tener que duplicar completamente el contenido. Esto ahorra recursos y reduce la sobrecarga asociada con las copias de memoria. Además, mejora el rendimiento al clonar procesos, ya que ambos procesos pueden compartir la misma memoria hasta que uno de ellos realice una escritura. En sistemas de archivos virtuales, la técnica de COW se utiliza para implementar escrituras diferidas, evitando escribir inmediatamente en el disco cada vez que se realiza una escritura, y copiando los datos solo cuando es necesario sincronizarlos con el almacenamiento persistente.

## **3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?**

La implementación de la técnica de Copy-on-Write depende del sistema operativo y el sistema de archivos utilizados, principalmente a través de mecanismos de software como punteros y tablas de asignación. Para garantizar la coherencia de los datos, es necesario que el sistema operativo y el sistema de archivos puedan rastrear los bloques de datos de manera adecuada. Además, contar con un hardware adecuado, como suficiente memoria RAM, capacidad de procesamiento y almacenamiento en disco, es recomendable para aprovechar al máximo los beneficios de la copia durante la escritura y mejorar el rendimiento y la eficiencia del sistema.

## **4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.**

Cuando hay un conjunto de páginas que se utilizan raramente pero deben mantenerse en memoria debido a su importancia crítica. En este caso, el algoritmo LFU, que se basa en la frecuencia de uso de las páginas, seleccionaría las páginas menos utilizadas para ser reemplazadas, lo que reduciría la posibilidad de fallos de página. Por otro lado, el algoritmo LRU, que se basa en el tiempo transcurrido desde el último acceso a las páginas, podría seleccionar erróneamente páginas críticas que se utilizan con poca frecuencia pero son esenciales en momentos específicos, lo que podría aumentar la tasa de fallos de página en comparación con LFU.

## **5. Indique una situación  en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.**

Cuando hay un conjunto de páginas que se utilizan con alta frecuencia pero tienen acceso más antiguo. En este caso, el algoritmo MFU, que se basa en la frecuencia de uso de las páginas, seleccionaría las páginas más utilizadas para mantenerlas en memoria, lo que reduciría la probabilidad de fallos de página. Por otro lado, el algoritmo LRU, que se basa en el tiempo transcurrido desde el último acceso a las páginas, podría seleccionar páginas frecuentemente utilizadas pero que no se han accedido recientemente, lo que podría aumentar la tasa de fallos de página en comparación con MFU.

## **6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:**

**◦ Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?**
Mediante la política de sustitución menos recientemente utilizadas (LRU). LRU se encargaría de seleccionar la página menos recientemente utilizada dentro del conjunto compartido de marcos libres y liberar ese marco para la nueva página solicitada. Esto se hace considerando el tiempo transcurrido desde el último acceso a cada página en el conjunto compartido y seleccionando la página más antigua para ser reemplazada.

**◦ Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto compartido de marcos libres para hacer sitio para la página solicitada?**
En este caso se gestiona mediante la política LRU dentro del conjunto compartido. Esto implica que la página residente se considera como una de las páginas que podrían ser reemplazadas en función de su antigüedad en el conjunto compartido. La página solicitada ocupará el marco de la página que haya sido seleccionada como la menos recientemente utilizada según la política LRU, permitiendo así que la nueva página se aloje en la memoria y se atienda la solicitud.

## **7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización: ◦ Uso de CPU                   20% ◦ Paginación de disco          97,7% ◦ Otros dispositivos de I/O    5% Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las tasas de utilización de la CPU. De razones para su respuesta.**

- **Instalar una CPU más rápida:** Esta medida permitirá mejorar la tasa de utilización de la CPU, ya que una CPU más rápida podrá procesar las tareas más eficientemente, reduciendo el tiempo de ejecución y aumentando la capacidad de procesamiento.

- **Instalar un disco de paginación de mayor tamaño:** El tamaño del disco de paginación no está directamente relacionado con la tasa de utilización de la CPU. Un disco de paginación de mayor tamaño puede aumentar la eficiencia del sistema al permitir una mayor cantidad de páginas en memoria, pero no afectará directamente la tasa de utilización de la CPU.

- **Incrementar el grado de multiprogramación:** Incrementar el grado de multiprogramación permitirá tener más procesos en ejecución simultáneamente. Esto puede ayudar a mejorar la tasa de utilización de la CPU, ya que se aprovechará mejor su capacidad al tener más tareas en ejecución al mismo tiempo.

- **Instalar mas memoria principal:** Al instalar más memoria principal, se podrán mantener más páginas en memoria, lo que reducirá la necesidad de paginación a disco y mejorará la tasa de utilización de la CPU. Esto se debe a que habrá menos tiempo de espera para cargar y descargar páginas del disco, lo que acelerará el acceso a los datos necesarios para la CPU.

- **Instalar un disco duro mas rápidos:** Un disco duro más rápido puede acelerar las operaciones de paginación, lo que puede mejorar la tasa de utilización de la CPU al reducir el tiempo de acceso a las páginas en disco. Sin embargo, su impacto directo en la tasa de utilización de la CPU es limitado, ya que depende de otros factores como la disponibilidad de las páginas necesarias en memoria.
