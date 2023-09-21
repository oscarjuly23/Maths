# Distribució d'una Epidèmia: Modelo de Epidemia COVID-19

## Introducción
En esta práctica, se desarrolla un modelo simple para analizar la distribución de una epidemia, como el COVID-19. El modelo se basa en cuatro variables: infectados (r), sanos (n), inmunes (b) y muertos (d).

Para realizar los cálculos necesarios, se debe conocer la evolución de estas variables a partir de condiciones iniciales y de contorno. La población total de un país, N(t), es igual a la suma de todas las variables, y se debe tener en cuenta que un individuo no puede pertenecer simultáneamente a más de un conjunto.
## Estructura del Códiggo Matlab

El archivo Codi prac2 MAT.zip contiene las funciones Matlab necesarias para llevar a cabo la práctica. Estas incluyen:

- mainCovid.m: el script principal desde donde se llama todo el código a ejecutar.
- initialConditions.m: aquí se define el valor inicial de las variables que controlan el modelo. Si desea cambiar el comportamiento del modelo, debe modificar las variables en este archivo.
- probSpreadCovid.m: una función donde se implementa el cálculo de combinación de la ecuación (3).
- normalization.m: una función para normalizar la distribución del número de personas infectadas.
- conditionalProbability.m: una función donde se deben implementar los cálculos de la probabilidad condicional.

## Experiments

### Modelando la Propagación de la Enfermedad
En este experimento, implementamos la ecuación (3) utilizando MATLAB y la función probSpreadCovid.m. Describimos cómo se calcula el riesgo de contagio y cómo se relaciona con los parámetros beta (β) y alpha (α). Explicamos cómo el producto de probabilidades se deriva de conceptos de combinatoria y probabilidad.

### Visualización de la Propagación de la Enfermedad
En este experimento, graficamos las curvas de las personas sanas, infectadas, inmunes y fallecidas a lo largo del tiempo. Interpretamos las tendencias en estas curvas, señalando cómo la propagación de la enfermedad afecta a la población y cómo se desarrollan las inmunidades.

### Probabilidad Condicional de Infección
Presentamos la idea de que la curva de infectados por día puede interpretarse como una función de densidad de probabilidad. Creamos la función conditionalProbability.m para calcular la probabilidad condicional de infectarse a partir de un día específico, dado que han transcurrido ciertos días. Mostramos un ejemplo de cálculo de probabilidad condicional, como la probabilidad de infectarse en el día 150 si han pasado 125 días.

### Modelando el Efecto del Confinamiento
En este experimento, introducimos el concepto de confinamiento y cómo afecta a los parámetros del modelo. Explicamos los cambios que realizamos en el parámetro alpha para reflejar una reducción en la interacción social durante el confinamiento. Mostramos un nuevo gráfico que ilustra el efecto del confinamiento en la propagación de la enfermedad, comparándolo con la situación anterior al confinamiento.
