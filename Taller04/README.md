**#6. Conteste las siguientes preguntas**
* **##Cuál es el propósito del interprete de comandos?**
Es una manera por la cual el usuario puede interactuar con la máquina a través de comandos de texto en lugar de una interfaz gráfica de usuario, básicamente, recibe lo que se escribe en la terminal, lo interpreta y lo convierte en instrucciones para el sistema operativo. Y ya pues luego el sistema operativo ejecuta las acciones correspondientes según las instrucciones dadas por el intérprete de comandos.

* **Por qué está separado del kernel?**
Principalmente está separado del Kernel porque el intérprete de comandos está sujeto a cambios, al separarlos se logra una mayor flexibilidad y mantenibilidad del sistema operativo.
También contribuye a la seguridad del SO. Ya que el intérprete generalmente se ejecuta con un nivel de privilegios más bajos que el kernel, es decir, algunas acciones realizadas en el intérprete tienen restricciones de seguridad para proteger el mismo SO y los datos.
Y otro beneficio de estar separados es que da posibilidad a utilizar diferentes intérpretes de comandos con un mismo kernel, o viceversa.

* **Liste los requisitos para desarrollar un interprete de comandos.**
** 
