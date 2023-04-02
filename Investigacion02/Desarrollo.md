# Solución Taller N°2
## 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.

### ◦ Mencione dos problemas y expliquelos.

Algunos de los ataque más usuales y los problemas de seguridad a los que este tipo de entorno se ven expuestos:

1. Errores de configuración: si un usuario no configura correctamente su cuenta o dispositivo, podría dejar abiertas puertas traseras para otros usuarios o atacantes malintencionados.

2. Acceso no autorizado: si un usuario malintencionado obtiene acceso al sistema, puede acceder a los archivos y recursos compartidos por otros usuarios. Esto podría incluir información personal, datos financieros, contraseñas, entre otros.

### ◦ Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta

Es posible que los sistemas compartidos tengan un nivel aceptable de seguridad si se implementan varias políticas de seguridad que los usuarios deben cumplir, así como mayores controles como la doble autenticación. Sin embargo, es difícil garantizar el mismo grado de seguridad en un sistema compartido en comparación con un sistema dedicado. Un sistema compartido está compuesto por varios usuarios que tienen acceso al mismo sistema, lo que aumenta el riesgo de vulnerabilidades potenciales para los atacantes o errores humanos.
  
En contraste, los sistemas dedicados normalmente están restringidos solo para el acceso de un número predeterminado de usuarios autorizados y se les aplican políticas de seguridad más restrictivas. Esto hace que sea mucho más fácil controlar y asegurar la información, lo que reduce el riesgo de errores o intrusiones no autorizadas.
  
## 2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):

**◦ Sistemas embebidos/integrado:** Se refiere a un sistema de computación especializado en la realización de tareas específicas, que se encuentra integrado como una unidad completa en la placa madre o placa base. Estos sistemas pueden ser microcontroladores o microprocesadores, y pueden utilizar lenguajes de programación como C y C++. Por lo general, están diseñados para llevar a cabo la computación en tiempo real y, además, incluyen componentes como la memoria, la unidad central de procesamiento (CPU) y almacenamiento. Es especialmente importante el control adecuado de la energía en estos sistemas.

**◦ Mainframe:** Se puede describir a los mainframes como computadoras de gran tamaño que se utilizan actualmente en el entorno empresarial para manejar grandes cantidades de datos. Entre los recursos más importantes a tener en cuenta al gestionar un mainframe se encuentran la velocidad de procesamiento de la CPU, la red, el almacenamiento, la memoria y algunos dispositivos de entrada y salida.

**◦ Workstation:** Se trata de máquinas de alto rendimiento que se utilizan principalmente en entornos de diseño, edición de vídeo y otros trabajos que requieren una gran capacidad de procesamiento. Al igual que en los casos anteriores, es importante tener en cuenta los recursos como la memoria, la CPU, el almacenamiento y también la tarjeta gráfica al gestionar estos equipos.

**◦ Server:** En nuestro entorno, los servidores son ampliamente conocidos por su gran importancia en cualquier tipo de empresa, ya que se utilizan para alojar y distribuir aplicaciones y servicios en la red. Al gestionar estas infraestructuras, es crucial administrar recursos importantes como la memoria, el almacenamiento de grandes cantidades de información en muchos casos, la CPU, así como la red y otros dispositivos de entrada y salida.

**◦ Mobile:** Se puede decir que los dispositivos móviles como teléfonos celulares, tabletas y relojes inteligentes presentan desafíos significativos en términos de recursos debido a su estructura compacta. La limitada memoria, capacidad de procesamiento y almacenamiento son un problema común en estos dispositivos. Algunos de los recursos clave que deben ser gestionados en este tipo de servicios son la memoria, CPU, batería, almacenamiento y dispositivos de entrada y salida.

## 3. Caracterice dos casos de uso para implementar un OS para servidor y PC.

**◦ Servidor:** Para alojar sitios o aplicaciones web, es fundamental contar con un servicio que sea estable y seguro para los usuarios, asegurando su disponibilidad en todo momento y un acceso eficiente y protegido.

**◦ Para un PC:** En la edición de audio y video se utilizan aplicaciones que requieren una gran cantidad de potencia de procesamiento y memoria. El sistema operativo proporciona una plataforma eficiente para ejecutar estas aplicaciones y permitir que los usuarios realicen tareas complejas de edición y creación de contenido de manera eficiente. Además, es importante que el sistema operativo proporcione una interfaz intuitiva y fácil de usar para los usuarios.

## 4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.

En sus diferencias principales son las siguientes:

**◦ Diseño del sistema:**

*- Multiprocesamiento simétrico (SMP):*
Los procesadores comparten y acceden a los mismos recursos del sistema, y tienen la misma capacidad y función en cuanto a su uso de dichos recursos.

*- Multiprocesamiento asimétrico (ASMP):*
Cada procesador se asigna a un grupo con una función y tarea específicas, y cada grupo tiene acceso a recursos del sistema únicos.

**◦ Escalabilidad:**

*- Multiprocesamiento simétrico (SMP):*
Se puede decir que una de las características más importantes es su capacidad de ser escalable y adaptable, lo que significa que es posible añadir procesadores adicionales al sistema para aumentar su capacidad de procesamiento. También es importante destacar su gran afinidad, lo que permite una mayor eficiencia en el uso de los recursos y una mejor gestión del sistema en general.

*- Multiprocesamiento asimétrico (ASMP):*
Se refiere a que este tipo de sistema no se puede escalar de manera sencilla debido a que los procesadores están diseñados para cumplir funciones específicas y, aunque se agreguen nuevos procesadores, esto no mejorará significativamente el rendimiento del sistema.

**◦ Rendimiento:**

*- Multiprocesamiento simétrico (SMP):*
Estos sistemas tienen un mejor desempeño en tareas que necesitan un gran procesamiento paralelo, ya que cuando todos los procesadores trabajan juntos simultáneamente, se puede observar un aumento en el rendimiento.

*- Multiprocesamiento asimétrico (ASMP):*
Este tipo de sistemas tienen un rendimiento óptimo en tareas que pueden ser fragmentadas en subtareas más pequeñas, ya que cada conjunto de procesadores puede trabajar en diferentes subtareas simultáneamente, permitiendo una mayor eficiencia en el procesamiento.

**◦ Costo:**

*- Multiprocesamiento simétrico (SMP):*
Se suele requerir una mayor inversión en este tipo de sistemas debido a que los procesadores son idénticos y tienen las mismas capacidades y funciones, lo que a veces puede resultar en el desperdicio de recursos.

*- Multiprocesamiento asimétrico (ASMP):*
Se puede expresar como: Los procesadores diseñados específicamente para esta tecnología no desperdician recursos, ya que están enfocados en cumplir con los requisitos necesarios.

## 5. Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA).

**- Sistema operativo:** Las máquinas deben utilizar el mismo sistema operativo y la misma versión, y deben ser configuradas de manera similar.

**- Hardware:** Las máquinas deben tener hardware similar o compatible de modo que se pueda garantizar que los recursos para el sistema sea posible compartirlos sin problemas.

**- Monitorización y alertas:** La compatibilidad de hardware entre las máquinas es fundamental para asegurar que los recursos del sistema puedan ser compartidos sin problemas.

**- Copias de seguridad:** Ofrecer un servicio de calidad implica implementar copias de seguridad y planes adecuados en caso de pérdida de datos, para garantizar la protección y rápida restauración en caso de una falla en el clúster.

## 6. Compare las diferencias entre una excepción y una interrupción.
En los sistemas operativos, las excepciones son un tipo de interrupción que emplea el procesador para notificar al sistema operativo de un suceso excepcional, por ejemplo, cuando en un proceso se utiliza una instrucción para dividir un valor utilizando el cero como denominador.  
Por otra parte, las interrupciones son un mecanismo de comunicación entre el procesador y los dispositivos de entrada y salida, indican que la operación de la que se estaba ocupando la CPU ya ha terminado. 
La principal diferencia entre estos dos conceptos es que las interrupciones son interrupciones de hardware, mientras que las excepciones son interrupciones del software.

## 7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU.
**◦ ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia?**

Principalmente el que coordina la transferencia es el DMA. Inicialmente, el dispositivo que necesita tranferir datos envía una señal de solicitud al DMA. A su vez, el DMA se comunica con la CPU para obtener permiso para acceder a la memoria, al recibir la señal HLDA, es decir, el permiso de la CPU, se coordina la transferencia de datos entre el dispositivo y la memoria, sin intervención de la CPU.

**◦ ¿Como sabe la CPU que las operaciones de memoria se han completado?**

Una vez se haya completado la configuración del DMA, se hayan transferido los datos entre el dispositivo y la memoria, y se haya monitoreado que la transferencia de datos se haya completado correctamente, el DMA notifica a la CPU mediante una interrupción generada por un pin dedicado en el DMA y se envía al controlador de interrupciones del sistema, luego el controlador de interrupciones interrumpe la CPU para que pueda tomar las medidas necesarias en consecuencia y procesar los datos transferidos, también prepara el DMA para la próxima transferencia.

## 8. Identifique dos razones por las que la cache es útil. ¿Qué problemas resuelve y causa?
La caché es una memoria de muy alta velocidad, puede acelerar el CPU. Debido a ser de tan alta velocidad se encarga de almacenar información e instrucciones para que el procesador acceda a éstas de manera inmediata siempre que lo necesite.
Sin embargo, puede causar problemas como la inconsistencia de datos, debido a una desincronización con la memoria principal, lo que llevaría a que la CPU acceda a datos incorrectos u obsoletos; cuando se produce un fallo en la caché aumenta significativamente el tiempo de acceso a los datos, también aumenta el costo del hardware.

## 9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos: 
**◦ Sistema distribuido** 

Supongamos que dos nodos tienen una copia en la caché de la misma variable, y un nodo actualiza el valor de esta variable. Si el otro nodo no actualiza la caché con la nueva versión de la variable, se produciría una inconsistencia.

**◦ Sistema multiprocesador** 

Supongamos que un procesador A actualiza el valor de una variable en su caché, pero un procesador B no actualiza su caché con el nuevo valor, se produciría una inconsistencia.

**◦ Sistema de un solo procesado**

No es un problema tan común pero por ejemplo si una aplicación modifica un dato en la memoria principal, pero una copia de ese dato todavía está en la caché, la CPU puede leer la versión obsoleta del dato desde la caché, lo que provocaría una inconsistencia.
