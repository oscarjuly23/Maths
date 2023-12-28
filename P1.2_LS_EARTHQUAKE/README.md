# LS EARTHQUAKE: Análisis de Datos Sísmicos

## Introducción
El proyecto LS EARTHQUAKE, llevado a cabo por el Departamento de Cálculo en colaboración con el Departamento de Sistemas Digitales y Microprocesadores (Compus), tiene como objetivo desarrollar un sistema de detección y prevención de terremotos. Mientras Compus se ha centrado en el hardware, diseñando un esquema eléctrico con microprocesadores PIC18F4321, el Departamento de Cálculo asume la responsabilidad de crear el software necesario para analizar y comprender los datos recopilados por los sismógrafos.

El análisis de los sismógrafos proporciona gráficas que describen las actividades sísmicas. Para simplificar el proceso, se utilizarán aproximaciones de funciones conocidas. Este desafío se presenta a los estudiantes como parte de su formación.

## Representación de Funciones
La primera parte de la práctica consiste en identificar y representar gráficamente las diversas funciones que aproximan las gráficas generadas por los sismógrafos. Estas funciones se encuentran en el Anexo Funciones del enunciado. Se espera que los estudiantes utilicen MATLAB u Octave para representar estas funciones en una matriz 3x3, como se muestra en la imagen proporcionada.

## Detección de Actividad Sísmica
Cada función en el Anexo Funciones representa un tipo diferente de actividad sísmica y está catalogada con un código. La tarea en la segunda parte de la práctica consiste en identificar los diferentes eventos sísmicos registrados por los sismógrafos a lo largo del tiempo. Se alienta a los estudiantes a analizar sismógrafos de diferentes ubicaciones para comparar datos.

Los grupos de estudiantes se dividen según el último número del expediente académico y se asignan gráficas específicas para su análisis. Deben proporcionar respuestas en forma de códigos identificativos.


## Analisis de resultados
La funció que falta en el Annex Clau és la de la inversa de la exponencial. Aquesta mateixa funció la podem programar en Matlab de les següents dos maneres:
y = exp (-1*(2*x));
y = 1./exp(2*x);

CODI DE SUCCESSOS:
SENO
ARCCOS
EXP
ARCSIN
COS
ARREL
ARREL
QUAD
EXP
INV


1. Per diferenciar les funcions trigonomètriques entre sí ens haurem de fixar en el primer valor de la ‘y’.
2.  Quan disminuïm molt la resolució veiem que la gràfica que ens mostra no és la pròpia de la funció que volem representar.
3.  Teòricament si que existeixen valors que en una gràfica estiguin en la part negativa d’aquesta. En Matlab no podem representar-los.

![image](https://github.com/oscarjuly23/Maths/assets/39187459/985e3e22-9742-430e-bfc4-0af0d7207b2d)
