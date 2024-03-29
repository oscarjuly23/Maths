# Lifeguard 5G - Análisis de Datos de Sensores en Playas de Barcelona
## Introducción

El Área de Costas y Playas del Ayuntamiento de Barcelona ha lanzado un concurso para universidades de la ciudad con el objetivo de mejorar la seguridad en las playas. Barcelona es conocida por sus 4.2 kilómetros de playas doradas que atraen a millones de residentes y turistas, y el ayuntamiento busca mejorar la seguridad de estas playas al conocer en tiempo real el estado del mar y prevenir incidentes relacionados con las condiciones del oleaje.

La Universidad La Salle Campus Barcelona ha propuesto el proyecto Lifeguard 5G, que consiste en la instalación de sensores de presión en boyas que delimitan las áreas de baño en las playas. Estos sensores se comunicarán a través de la red 5G implementada por el ayuntamiento y estarán conectados a un centro de procesamiento de datos. Además, se reemplazarán las banderas tradicionales por paneles LED que mostrarán el estado actual de las playas en tiempo real.

Estos paneles LED y los socorristas estarán en constante comunicación con el centro de datos de las playas para obtener información actualizada sobre el estado del mar y las banderas que deben mostrarse en cada momento. Como parte del proyecto, se ha asignado a los estudiantes de cálculo la tarea de diseñar el software encargado de procesar los datos de los sensores y determinar el estado actual de las banderas en las playas.

## Parte Práctica
### Lectura de datos

Para trabajar con información de diferentes sensores, cada grupo de estudiantes ha recibido un conjunto de datos específico. La asignación se basa en el último número del expediente académico. Los datos se encuentran en archivos con los siguientes nombres:

0-1: 'valorsensores1.mat'
2-3: 'valorsensores2.mat'
4-5: 'valorsensores3.mat'
6-7: 'valorsensores4.mat'
8-9: 'valorsensores5.mat'
Cada grupo debe cargar sus datos utilizando el código proporcionado en el enunciado. 

### Velocidad y Aceleración

Los sensores proporcionan datos de presión, y para calcular la velocidad y la aceleración, es necesario aplicar cálculos de derivación. 
Los sensores envían información cada dos segundos, por lo que el intervalo entre muestras consecutivas es de dos segundos. Los estudiantes deben implementar funciones en MATLAB para calcular la primera y segunda derivada a partir de los datos de presión.
### Análisis del Estado del Mar

Para detectar el estado del mar, se deben considerar los últimos 10 segundos de datos de velocidad y aceleración. Los cinco primeros valores no son válidos, ya que el sistema necesita 10 segundos para calibrarse.

Se deben calcular dos valores:

- La media de los valores cuadrados del vector de velocidad.
- La diferencia entre los valores máximos y mínimos del vector de aceleración.
Estos cálculos se realizan utilizando el vector auxiliar de los últimos 5 minutos de velocidad y aceleración.

Luego, se debe calcular la probabilidad de ocurrencia del estado del mar utilizando estos dos valores. Si la probabilidad es menor que 100, se considera un "Suceso 1". Si está entre 100 y 500, se considera un "Suceso 2". Si es mayor que 500, se considera un "Suceso 3".

## Análisis de resultados
1. Para implementar un algoritmo que calcule la derivada n-ésima (derivadan.m), se puede utilizar una variable 'n' que determine el grado de la derivada deseada. Luego, se puede utilizar un bucle for para llamar a la función derivada.n para los valores deseados de 'n'. Esto permitirá calcular las derivadas de orden superior y sería útil, por ejemplo, para calcular el polinomio de Taylor.
2. Al analizar la gráfica resultante de la implementación, se observa que podría haber valores en cero en algunos puntos. La presión puede ser cero en ciertos puntos, lo que podría llevar a valores de velocidad y aceleración distintos de cero. Esto se debe a que la presión, la velocidad y la aceleración son conceptos distintos. Por ejemplo, en un punto donde la presión es cero, la velocidad y la aceleración pueden no ser cero si hay un cambio rápido en la presión en ese punto.
3. Si la función de presión tiene valores puntuales en cero, esto significa que su imagen es igual a cero en esos puntos. Sin embargo, esto no implica necesariamente que la velocidad y la aceleración sean cero en esos mismos puntos. La velocidad y la aceleración se refieren a las derivadas de la función de presión. Se proporciona un ejemplo sencillo para ilustrar esto: la función f(x) = 3x^3 - 9x tiene puntos en los que f(x) es igual a cero, pero su velocidad (f'(x)) y su aceleración (f''(x)) no son cero en esos mismos puntos. Esto demuestra que la presión igual a cero en un punto no garantiza que la velocidad y la aceleración sean cero en ese punto.


