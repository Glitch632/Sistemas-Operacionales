# **Solución Investigación 13**

### **1. Nombre y breve descripción de la herramienta.**

Stress-ng es una herramienta de prueba de estrés de sistemas informáticos. Su objetivo principal es generar cargas de trabajo intensivas para evaluar la estabilidad, capacidad de respuesta y rendimiento de un sistema en condiciones extremas. La herramienta ofrece una amplia variedad de pruebas de estrés que cubren diferentes componentes del sistema, como la CPU, la memoria, el almacenamiento y la red. Puede ejecutar cálculos matemáticos intensivos, pruebas de lectura/escritura en disco, pruebas de ancho de banda de red, entre otras. Estas pruebas imitan escenarios de uso exigentes y permiten evaluar el rendimiento y la estabilidad del sistema bajo carga.

### **2. Los comandos creados con una descripción de lo que hace y porque lo hace**

- **Para evaluar la CPU:**

  script -c "stress-ng --cpu 4 --timeout 60s --metrics" resultado_cpu.txt

  Este comando genera una carga de trabajo en la CPU con 4 hilos durante 60 segundos y almacena el resultado del fichero en "resultado_cpu.txt".

- **Para evaluar la memoria:**

  script -c "stress-ng --vm 2 --vm-bytes 1G --timeout 15s --metrics" resultado_memoria.txt

  Este comando genera una carga de trabajo en la memoria del sistema, utilizando 2 procesos que ocuparán 1 GB cada uno, durante 15 segundos y almacena el resultado del fichero en "resultado_memoria.txt".

- **Para evaluar el manejo de procesos e hilos:**

  script -c "stress-ng --matrix 0 --timeout 15s --metrics" resultado_procesos_hilos.txt

  Este comando genera una carga de trabajo con múltiples procesos e hilos utilizando operaciones matriciales durante 15 segundos y almacena el resultado del fichero en "resultado_procesos_hilos.txt".

### **3. Ejecute los comandos 5 veces cada uno, compare los resultados y explique según su criterio el comportamiento de las pruebas**

Las tablas de los resultados de las pruebas de estres están conformadas por las siguientes columnas, seguido se explicará a qué hace referencia cada una:
**#:** Número de prueba
**bogo ops:** Número de iteraciones del estresor durante la ejecución. Esto es métrico de cuánto "trabajo" general se ha logrado en las operaciones.
**real time:** Duración promedio del reloj de pared (en segundos) del factor estresante.
**usr time:** Tiempo total del usuario (en segundos) consumido ejecutando todas las instancias del estresor.
**sys time:** Tiempo total del sistema (en segundos) consumido ejecutando todas las instancias del estresor.
**bogo ops/s (real time):** Operaciones bogo totales por segundo basadas en el tiempo de ejecución del reloj de pared.
**bogo ops/s (usr+sys time):** Operaciones bogo totales por segundo basadas en el tiempo acumulado del usuario y del sistema.
**CPU used per instance:** Porcentaje total de CPU utilizado dividido por el número de instancias de estrés. 100% es 1 CPU completa.

**Resultados evaluación de CPU**

|#| bogo ops | real time | usr time | sys time | bogo ops/s (real time) | bogo ops/s (usr+sys time) | CPU used per instance| 
|-|----------|-----------|----------|----------|------------|------------|--------------|
|1| 74110    | 60.01     | 116.99   | 0.17     | 1234.88    | 632.51     | 48.81        |
|2| 79564    | 60.06     | 116.49   |   0.16   |   1324.83  |       682.09  |      48.56     |   
|3| 66309   |  60.03  |  115.94  |    0.21    |  1104.64     |    570.92     |   48.37     |    
|4| 68402   |  60.01  |  117.24    |  0.16  |    1139.89   |      582.62    |    48.91        |  
|5| 67072   |  60.15  |  116.83    |  0.21    |  1115.11     |    573.06    |    48.65      |   



**Resultados evaluación de Memoria**

|#| bogo ops | real time | usr time | sys time | bogo ops/s (real time) | bogo ops/s (usr+sys time) | CPU used per instance | 
|-|----------|-----------|----------|----------|------------|------------|--------------|
|1| 1294422  |   15.05   |  18.21   |  10.96  |   85989.60    |   44375.27   |     96.89   |   
|2| 1296282   |  15.03  |   25.70   |   4.08   |  86222.42    |   43532.72     |   99.03    |   
|3| 1296538 |    15.04  |   24.30  |    5.20   |  86214.56   |    43963.69    |    98.05   |    
|4| 1297687 |   15.05   |  25.60   |   4.13   |  86218.37    |  43644.14    |    98.77     |  
|5| 1294457   |  15.02  |   24.38 |     5.35  |   86203.71  |     43543.43   |     98.99   |    

**Resultados evaluación de Manejo de procesos e hilos**

|#| bogo ops | real time | usr time | sys time | bogo ops/s (real time) | bogo ops/s (usr+sys time) | CPU used per instance| 
|-|----------|-----------|----------|----------|------------|------------|--------------|
|1| 96608  |  15.00  |   29.61   |   0.05   |   6440.29    |    3257.72  |      98.85     |    
|2| 113184  |   15.00   |  29.80   |   0.04   |   7545.16   |     3792.99  |      99.46     |    
|3| 107962   |  15.01   |  29.84  |    0.02    |  7194.01    |    3615.35   |    99.49      |  
|4| 60248   |  15.01  |   27.85   |   0.13   |   4012.85   |     2153.49    |    93.17     |   
|5| 67320   |  15.01   |  29.16   |   0.11  |    4485.87    |    2299.98      |  97.52     |  
