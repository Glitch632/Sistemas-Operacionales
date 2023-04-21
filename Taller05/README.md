## **5. Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia.**

### **Envío por copia:**

***Ventajas:***

-Independencia: al copiar los datos, se crea una versión independiente que puede ser modificada sin afectar el original.

-Facilidad de manejo: es más fácil manipular una copia de los datos que los datos originales.

-Privacidad: si los datos son confidenciales, copiarlos puede ser una forma de protegerlos.

***Desventajas:***

-Uso de recursos: copiar datos consume recursos del sistema, especialmente en el caso de grandes conjuntos de datos.

-Latencia: copiar datos puede tardar más tiempo que enviar una referencia a los mismos, especialmente en redes de baja velocidad.

-Duplicación: al copiar los datos, se crea una duplicación que puede ocupar espacio en disco.

### **Envío por referencia:**


***Ventajas:***

-Eficiencia: enviar una referencia a los datos es más eficiente que copiarlos, ya que no se consume tanto recursos del sistema.

-Actualización en tiempo real: los cambios en los datos originales se reflejan inmediatamente en la referencia.

-Compartición: varias aplicaciones pueden compartir los mismos datos utilizando referencias, lo que permite ahorrar espacio en disco.


***Desventajas:***

-Riesgo de corrupción: si los datos referenciados son modificados por otras aplicaciones de forma inesperada, la integridad de los datos puede verse comprometida.

-Problemas de seguridad: si los datos son confidenciales, enviar una referencia puede exponerlos a posibles ataques.

-Complejidad de manejo: en algunos casos, el manejo de referencias puede ser más complejo que el manejo de copias de datos.
