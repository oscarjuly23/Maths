# Space LS: Aprenentatge automàtic i les xarxes neuronals.

## Introducción
La Inteligencia Artificial (IA) es una rama de la informática dedicada a la creación de máquinas inteligentes capaces de realizar tareas que normalmente requieren inteligencia humana. En esta práctica, nos centraremos en el Aprendizaje Automático (Machine Learning) y, más específicamente, en las redes neuronales, que son fundamentales en el campo del Aprendizaje Profundo o Deep Learning.

El Aprendizaje Automático, como su nombre indica, es un subcampo de la IA que se basa en algoritmos y aplicaciones que no requieren programación explícita, sino que aprenden de la experiencia.

## Reto
La empresa SpaceLS, propiedad del multimillonario Eloi Mas, ha lanzado miles de satélites al espacio. Desafortunadamente, un error de programación ha provocado que algunos de estos satélites pierdan su rumbo y se muevan sin control a una altitud de 1100 km sobre la Tierra.

Eloi Mas ha pedido ayuda a los estudiantes de la asignatura de Estadística y Análisis Matemático para poder rescatar los satélites. Los ingenieros de SpaceLS han realizado dos descubrimientos clave:

1. Hay dos tipos de satélites: los desprogramados (llamados "clase 0") y los no desprogramados (llamados "clase 1").
2. A partir de las coordenadas (𝑥𝑥,𝑦𝑦) de cada satélite en el espacio, se puede determinar si un satélite pertenece a la clase 0 o la clase 1.
El objetivo es diseñar e implementar una red neuronal capaz de clasificar los satélites en clase 0 o clase 1 según sus coordenadas.

## Teoría

### Qué es un Clasificador
Un clasificador es un algoritmo que asigna etiquetas a objetos. Para hacer esta asignación, el clasificador "mapea" los objetos a etiquetas pertenecientes a un conjunto predefinido de categorías.

### Entrenar y Probar un Clasificador
Para entrenar un clasificador, se necesitan datos etiquetados. Estos datos se dividen en conjuntos de entrenamiento y prueba. Los conjuntos de entrenamiento se utilizan para enseñar al clasificador, mientras que los de prueba se utilizan para evaluar su rendimiento.

### Los Datos
En esta práctica, los datos no son imágenes, sino coordenadas (𝑥𝑥,𝑦𝑦) de satélites de SpaceLS, que se dividen en dos clases: clase 0 y clase 1.

### Clasificadores Liniales
Los clasificadores pueden tomar muchas formas, y en esta práctica implementarás un clasificador lineal en forma de red neuronal.

###  Èpoques
Cuando entrenas un clasificador, el proceso de ajuste de parámetros se realiza en épocas. Cada época pasa todos los datos de entrenamiento por el clasificador.

###  Funció de pèrdues
La función de pérdida cuantifica cuán buena o mala es la predicción de un clasificador. El objetivo es minimizar esta pérdida ajustando los parámetros del clasificador.

###  Optimització
La optimización implica ajustar iterativamente los parámetros del clasificador para minimizar la función de pérdida. El algoritmo de optimización más común es el descenso de gradiente.

###  Algorismes d'optimització
Implementarás dos variantes del algoritmo de descenso de gradiente: el descenso de gradiente clásico y el descenso de gradiente estocástico.

## Experiments
###  Influència del valor de α
En este experimento, evaluamos cómo el parámetro α, que controla la velocidad de convergencia y la precisión en el algoritmo de descenso de gradiente estocástico (SGD), afecta el rendimiento. Realizamos entrenamientos con diferentes valores de α (0.1, 0.01, 0.001 y 0.0001) en el conjunto de datos data1.mat durante 10 épocas. Observamos las siguientes conclusiones:

- Valores pequeños de α (como 0.01 y 0.001) conducen a una convergencia más rápida.
- Un valor de α inadecuadamente grande (0.1) puede hacer que el algoritmo diverja.
- Elegir el valor óptimo de α es fundamental para el éxito de SGD.

###   GD vs SGD
En este experimento, comparamos el rendimiento del algoritmo de descenso de gradiente (GD) y el descenso de gradiente estocástico (SGD) en el conjunto de datos data2.mat. Ambos se entrenaron durante 100 épocas con un valor de α de 0.001 y un tamaño de lote de 5 para SGD. Estas son nuestras observaciones:

- El GD converge más rápido que el SGD en este conjunto de datos.
- El SGD tiene un rendimiento intermedio, ya que el conjunto de datos no es linealmente separable.
- La elección del tamaño del lote (batch size) es crucial para el rendimiento del SGD.

###  Influència de la mida del batch en SGD
Este experimento se centró en estudiar cómo el tamaño del lote afecta el rendimiento del algoritmo de descenso de gradiente estocástico (SGD) en el conjunto de datos data4.mat. Se realizaron entrenamientos durante 100 épocas con α = 0.001 y diferentes tamaños de lote (5, 10, 20 y 50). Las conclusiones son las siguientes:

- Un tamaño de lote más pequeño tiende a minimizar la función de pérdida de manera más efectiva.
- Aumentar el tamaño del lote no necesariamente mejora la convergencia debido a la naturaleza no linealmente separable del conjunto de datos.

###  Comparativa de la taxa d’encert en els datasets
En este experimento, aplicamos el algoritmo de descenso de gradiente estocástico (SGD) a cuatro conjuntos de datos diferentes (data1.mat, data2.mat, data3.mat y data4.mat) durante 100 épocas, con α = 0.001 y un tamaño de lote de 5. Estos son los resultados de la tasa de acierto (accuracy):

- data1.mat: Accuracy del 100% debido a la buena separación lineal de los datos.
- data2.mat: Accuracy del 50% debido a la falta de separación lineal en los datos.
- data3.mat: El accuracy es el más bajo, lo que sugiere que este conjunto de datos es especialmente desafiante para SGD.
- data4.mat: Accuracy del 85.4% a pesar de la dificultad de separación lineal, lo que indica un buen rendimiento.

Estos experimentos ilustran cómo diferentes parámetros y conjuntos de datos pueden influir en el rendimiento de SGD y resaltan la importancia de ajustar adecuadamente los hiperparámetros para cada problema.
