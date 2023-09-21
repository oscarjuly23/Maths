# P1.2 LS_EARTHQUAKE

### Introducción
El Departamento de Cálculo de la universidad está trabajando juntamente con el Departamento de Sistemas Digitales y Microprocesadores (alias Compus) para el desarrollo de un sistema de detección y prevención de terremotos denominado LS EARTHQUAKE.
El equipo de Microprocesadores ya se ha encargado de realizar el esquema eléctrico del prototipo, el cual podemos observar a continuación, formado por dos microprocesadores PIC18F4321.
Por lo tanto, el equipo de Cálculo se encargará de desarrollar el Software capaz de analizar los datos recogidos por el sismógrafo de la Salle y poder interpretarlos. Las gráficas escritas por los sismógrafos tienen un aspecto similar al de la imagen siguiente.
Con el objetivo de simplificar el problema, realizaremos una aproximación de la gráfica a partir de funciones conocidas. Por ello, el equipo de Cálculo lanza el reto a los estudiantes de la asignatura para ayudar en el desarrollo del proyecto a partir de los conocimientos adquiridos.
### Reconocimiento de funciones

El primer paso será conocer las diferentes funciones que aproximan la gráfica generada por el sismógrafo. Estas funciones se encuentran en el apartado ANEXO FUNCIONES del enunciado.
El objetivo de esta primera parte es identificar todas las funciones representándolas gráficamente utilizando la herramienta Matlab u Octave. Esta representación ha de realizarse en forma de matriz 3x3.
Como habréis podido observar en el ANEXO FUNCIONES, cada función representa una actividad sísmica diferente y, además, cada una de ellas está catalogada con un código.
El objetivo de esta segunda parte es identificar los diferentes sucesos sísmicos recogidos por el sismógrafo a lo largo de un periodo de tiempo. Por ejemplo, en la siguiente gráfica podemos observar una serie de sucesos.
Por lo tanto, el objetivo será identificar los diferentes sucesos registrados por el sismógrafo. En nuestro caso, nos interesa no solo estudiar el sismógrafo de la Salle, sino también diferentes sismógrafos del mundo para poder contrastar datos.
De esta manera repartiremos el trabajo entre los grupos de clase, de manera que, dependiendo del último número del expediente académico (de uno de los miembros del grupo), tendréis que analizar los sucesos de una de las gráficas, y proporcionar la respuesta en forma de códigos. (
Las gráficas para analizar y la asignación de cada número de expediente se encuentra en el apartado ANEXO GRÁFICAS. Muy importante indicar que gráfica se ha analizado.


### Analisis de resultados
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


- Per diferenciar les funcions trigonomètriques entre sí ens haurem de fixar en el primer valor de la ‘y’.
- Quan disminuïm molt la resolució veiem que la gràfica que ens mostra no és la pròpia de la funció que volem representar.
- Teòricament si que existeixen valors que en una gràfica estiguin en la part negativa d’aquesta. En Matlab no podem representar-los.
