# **Solución Investigación 02**
## **1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías, descríbalas.**

- Funciones y servicios que aseguran la eficiencia del sistema operativo en sí mismo incluyen la asignación de recursos, la gestión de responsabilidades, la protección de recursos y la seguridad del sistema.

- Funciones y servicios valiosos para los usuarios en un sistema operativo comprenden la interfaz gráfica de usuario, la ejecución de programas, las operaciones de entrada/salida, las operaciones en sistemas de archivos, las comunicaciones, y otros servicios que facilitan la interacción del usuario con el sistema operativo y las aplicaciones, así como la gestión eficiente de recursos y la colaboración entre usuarios.

## **2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario.**

- Interfaz de usuario.
- Ejecución de programas.
- Operaciones de entrada y salida.
- Comunicaciones.
- Detección de errores.

## **3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa.**

Elaborar un informe estadístico que muestre el consumo de tiempo y recursos por parte de un programa generalmente implica el uso de herramientas de monitoreo y análisis del rendimiento del sistema operativo. Además, se requiere de interrupciones periódicas del temporizador, en las cuales se registra el valor del contador del programa. Con interrupciones frecuentes, se puede obtener una imagen estadística detallada de varias partes del programa.

#### * **Selección de herramientas:**

El proceso de identificar y seleccionar las herramientas adecuadas para el monitoreo y análisis del rendimiento puede incluir el uso de monitores de rendimiento integrados en el sistema operativo, software de monitoreo de terceros o herramientas de análisis de rendimiento específicas para el lenguaje de programación o entorno de desarrollo utilizado.

#### * **Inicio del monitoreo:**

Configurar la herramienta de monitoreo seleccionada para recolectar los datos relevantes sobre el tiempo y los recursos consumidos por el programa. Esto puede implicar la monitorización del uso de la CPU, memoria, disco, red y otros recursos del sistema que sean relevantes, a través de la herramienta de monitoreo configurada.

#### * **Ejecución del programa:**

Iniciar la ejecución del programa que se desea analizar y permitir que la herramienta de monitoreo registre los datos de rendimiento durante su ejecución. Es esencial verificar que la herramienta de monitoreo esté capturando datos pertinentes y en un nivel de detalle adecuado para un análisis estadístico posterior.

#### * **Recopilación de datos:** 

Una vez que el programa haya concluido su ejecución, se procede a detener la herramienta de monitoreo y recopilar los datos registrados durante su ejecución. Estos datos pueden comprender detalles como el tiempo total de ejecución del programa, la utilización de recursos (como el uso de la CPU, la memoria, la red, etc.) y otros indicadores relevantes del rendimiento del programa.

Es fundamental considerar que el proceso de generar un informe sobre el tiempo y recursos consumidos por un programa puede variar según las herramientas utilizadas y el sistema operativo. Es esencial seguir las mejores prácticas y utilizar herramientas confiables y apropiadas para el análisis del rendimiento del sistema operativo.

## **4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.**

#### * **Crear:**
- El SO posee la funcionalidad de crear nuevos archivos en el sistema de archivos, lo cual implica asignar espacio en disco para el nuevo archivo en una ubicación específica del sistema, así como asignarle un nombre y establecer los permisos necesarios.

#### * **Borrar:**
- El SO debe ofrecer a los usuarios y a las aplicaciones la capacidad de eliminar archivos del sistema cuando sea necesario, lo cual implica liberar el espacio en disco previamente ocupado por el archivo y eliminar los registros y referencias del mismo en el sistema.

#### * **Leer/Escribir/Reposicionar:**
- El SO debe facilitar a los usuarios y aplicaciones la lectura y escritura de datos en los archivos existentes en el sistema, incluyendo la actualización de datos en dichos archivos. Esto implica que el sistema operativo debe buscar el archivo en la memoria y ponerlo a disposición del usuario para su acceso y modificación.

#### * **Renombrar/mover archivos:**
- El SO debe brindar la capacidad a los usuarios y aplicaciones de renombrar y mover archivos dentro del sistema de archivos, incluyendo la actualización de los nombres y ubicaciones de los archivos en el sistema, así como la actualización de las referencias a los archivos en otros lugares para mantener la integridad de los enlaces.

#### * **Renombrar/mover archivos:**
- El SO debe facilitar la gestión de permisos y atributos de archivos, lo cual permite controlar el acceso, la seguridad y otras propiedades de los archivos de manera adecuada.


## **5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos.**

# Ventajas

#### * **Simplificación de la programación:**

Al utilizar una interfaz de llamadas al sistema uniforme para la manipulación de datos, archivos y dispositivos, se puede simplificar la programación de aplicaciones, ya que los desarrolladores solo necesitan aprender a utilizar una única interfaz, lo cual facilita el desarrollo de sistemas de manera eficiente.

#### * **Mayor portabilidad:**

Al utilizar una interfaz de llamadas al sistema común para la manipulación de archivos y dispositivos en distintos sistemas operativos, se puede aumentar la portabilidad del código fuente de las aplicaciones. Esto significa que las aplicaciones desarrolladas en una plataforma serán fácilmente portables a otras plataformas sin necesidad de reescribir completamente el código relacionado con la manipulación de archivos y dispositivos, lo cual facilita la migración y adaptación de las aplicaciones a diferentes entornos operativos.

#### * **Mayor flexibilidad:**
Al utilizar una interfaz de llamadas al sistema única para la manipulación de archivos y dispositivos, se brinda mayor flexibilidad a las aplicaciones, ya que permite un enfoque más generalizado para el acceso a recursos del sistema. Esto significa que las aplicaciones pueden ser más flexibles en su diseño y funcionamiento, al no depender de interfaces específicas de cada sistema operativo, lo cual facilita la portabilidad del código y la adaptación de las aplicaciones a diferentes entornos operativos.

# Desventajas

#### * **Dificultad en la gestión de recursos:**

Cuando se utilizan la misma interfaz de llamadas al sistema para la manipulación de archivos y dispositivos, a pesar de que pertenecen a recursos diferentes y poseen características y comportamientos distintos, puede complicar la gestión de recursos. Esto se debe a que puede haber diferencias en la forma en que se accede, se controla y se gestionan los recursos de archivos y dispositivos, lo cual puede resultar en un código más complejo y difícil de mantener. Es importante tener en cuenta estas diferencias y considerar si es más apropiado utilizar interfaces específicas para cada tipo de recurso, con el fin de simplificar la gestión y mantenimiento del código.

#### * **Pérdida de funcionalidades específicas:** 

Es importante tener en cuenta que los archivos y los dispositivos pueden tener funcionalidades específicas que no son compatibles con una misma interfaz de llamadas al sistema. Por ejemplo, algunos dispositivos pueden tener características de hardware específicas que no pueden ser accedidas o controladas mediante una interfaz de llamadas al sistema genérica. Esto puede limitar la funcionalidad de las aplicaciones que requieren acceder a características específicas de los dispositivos. Por lo tanto, es esencial considerar la compatibilidad de la interfaz de llamadas al sistema con los archivos y dispositivos específicos que se utilizan en una aplicación, a fin de asegurar un acceso adecuado y completo a todas las funcionalidades del sistema operativo y dispositivos utilizados.

## **6. Conteste las siguientes preguntas**

#### * **Cuál es el propósito del interprete de comandos?**
Es una manera por la cual el usuario puede interactuar con la máquina a través de comandos de texto en lugar de una interfaz gráfica de usuario, básicamente, recibe lo que se escribe en la terminal, lo interpreta y lo convierte en instrucciones para el sistema operativo. Y ya pues luego el sistema operativo ejecuta las acciones correspondientes según las instrucciones dadas por el intérprete de comandos.

#### * **Por qué está separado del kernel?**
Principalmente está separado del Kernel porque el intérprete de comandos está sujeto a cambios, al separarlos se logra una mayor flexibilidad y mantenibilidad del sistema operativo.
También contribuye a la seguridad del SO. Ya que el intérprete generalmente se ejecuta con un nivel de privilegios más bajos que el kernel, es decir, algunas acciones realizadas en el intérprete tienen restricciones de seguridad para proteger el mismo SO y los datos.
Y otro beneficio de estar separados es que da posibilidad a utilizar diferentes intérpretes de comandos con un mismo kernel, o viceversa.

#### * **Liste los requisitos para desarrollar un interprete de comandos.**
Los requisitos pueden ser un poco variables dependiendo el SO y el entorno de desarrollo.
- Se requiere tener conocimientos solidos en programación ya que el intérprete necesita de técnicas de programación adecuadas. 
- Conocimientos en el sistema operativo en el que se quiere implementar, tales como, la estructura del SO, el funcionamiento del kernel, la administración de procesos, gestión de memoria y otros conceptos relevantes del SO.
- Diseño de comandos, opciones, sintaxis, manejo de errores, historial de comandos, autocompletado, y más elementos de la interfaz que brinden mayor comodidad al usuario.
- Análisis y procesamiento de comandos ya que debe de ser capaz de analizar y procesar los comandos de manera precisa, analizar la sintaxis y la interpretación de los argumentos.
- Gestión de procesos y comunicación del SO, tales como administración y terminación de procesos, redirección de entrada/salida, manipulación de variables de entorno y gestión de servicios.
- Gestión de errores proporcionando mensajes de error claros y útiles al usuario en caso de ingresar comandos o incorrectos o haya algún problema en la ejecución.
- Documentación y soporte en donde todo esté bien especificado como la instrucciones de instalación, guía de uso, descripción de comandos y otras instrucciones relevantes para los usuarios.

## **7. Compare las ventajas y desventajas de los modelos de intercomunicación.**

#### * **Modelo de señales/interrupciones**
***Ventajas:***
- Es simple y eficiente en términos de uso de recursos del sistema.
- Permite una comunicación rápida y asincrónica entre procesos.
- Es ampliamente utilizado en sistemas operativos embebidos y en sistemas de tiempo real.

***Desventajas:***
- Puede ser limitado en términos de la cantidad y tipo de información que se puede transmitir a través de señales o interrupciones.
- Puede ser difícil de depurar y mantener en sistemas complejos con múltiples señales e interrupciones.

#### * **Modelo de mensajes**
***Ventajas:***
- Puede ser utilizado para implementar una amplia gama de patrones de comunicación, como paso de mensajes, publicación/suscripción, y solicitud/respuesta.
- Permite la comunicación entre procesos de forma más flexible y versátil, ya que se pueden transmitir mensajes de diferentes tamaños y tipos.

***Desventajas:***
- Puede ser más complejo de implementar y depurar en comparación con otros modelos de intercomunicación más simples.
- Puede requerir una mayor sincronización y gestión de la comunicación entre procesos para evitar problemas de concurrencia y seguridad.

#### * **Modelo de sockets**
***Ventajas:***
- Proporciona una interfaz estándar para la comunicación de red en sistemas operativos, lo que permite la interoperabilidad y la comunicación entre sistemas heterogéneos.
- Facilita la implementación de aplicaciones de red, como servidores y clientes, de manera modular y escalable.

***Desventajas:***
- Puede tener problemas de seguridad y privacidad si no se gestionan adecuadamente las conexiones y la comunicación en red.
- Puede tener un mayor overhead en términos de uso de recursos del sistema, debido a la encapsulación y desencapsulación de datos en la capa de red.

## **8. Conteste las siguientes preguntas**

#### * **Cual es la principal ventaja de usar microkernel en el diseño del OS?**
Es más fácil de modificar ya que al ser más pequeño es más simple, por lo tanto es más fácil de entender y depurar, y se encarga de proporcionar únicamente las funcionalidades básicas. También permite que los servicios del SO se puedan descargar y cargar dinámicamente como módulos, permite mayor escalabilidad ya que los servicios se pueden distribuir en multiples nodos y facilita la construcción de sistemas distribuidos.

#### * **Como interactúan los programas de usuario y los servicios del OS en una arquitectura 
basada en microkernel?**
Principalmente la comunicación sucede mediante el modelo de mensajes, es decir, los procesos se comunican intercambiando mensajes entre sí, los programas envían solicitudes al servicio del sistema y el servicio procesa la solicitud y devuelve una respuesta o realiza las acciones necesarias. Pero también se pueden utilizar otros métodos de comunicación que proporcione el microkernel. 

#### * **Cuales son las desventajas de usar la arquitectura de microkernel?**
- Posible reducción del rendimiento debido a la necesidad de comunicación entre procesos y el overhead asociado.
- Una mayor complejidad en la implementación y depuración de los servicios del SO como los procesos de usuario.

## **9. Compare las ventajas y desventajas de usar VM**
***Ventajas:***
- Brinda la posibilidad de ejecutar múltiples SO en una misma máquina física.
- No se corre tanto riesgo de dañar la computadora ya que es un ambiente aislado entre los sistemas operativos y las aplicaciones que se ejecutan en ellas.
- Se pueden cambiar las particiones y el número de nucleos utilizados en cualquier momento para aprovechar de manera más optima los recursos de hardware.
- Se pueden crear imagenes del SO y aplicaciones permitiendo la portabilidad de las maquinas virtuales entre diferentes entornos de hardware.

***Desventajas:***
- Las máquinas virtuales introducen un overhead de rendimiento debido a la virtualización de hardware por lo que se puede experimentar una disminución en el rendimiento. 
- Si se utilizan múltiples SO en un solo host la configuración y administración puede llegar a ser compleja.
- Existe un pequeño, muy pequeño riesgo de seguridad como ataques a través de vulnerabilidades en la tecnología de virtualización, amenazas dentro de la máquina virtual, o riesgos de fuga de información entre la máquina virtual.
