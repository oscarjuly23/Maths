# LS ENCRIPT: Herramienta de Desencriptación de Señales Analógicas

## Introducción
LS ENCRIPT es un proyecto desarrollado por una startup en La Salle Technova Barcelona. La startup ha recibido un encargo para desarrollar un programa capaz de desencriptar información transmitida a través de un sistema de cables analógicos obsoletos. Este sistema utiliza un osciloscopio para observar la forma de la señal transmitida, pero la información está encriptada y necesita ser decodificada.

En criptografía, la encriptación es un procedimiento que utiliza un algoritmo de cifrado con una clave específica para transformar un mensaje de manera que sea incomprensible o difícil de comprender para cualquier persona que no tenga la clave secreta del algoritmo. El objetivo de este proyecto es conocer la clave secreta del algoritmo y desarrollar un software capaz de reconocer automáticamente los diferentes patrones que forman esta señal encriptada.
## Características Destacadas
### Análisis de Señales encriptadas
La herramienta LS ENCRIPT se utiliza para analizar señales encriptadas transmitidas a través de cables analógicos obsoletos. Utiliza un osciloscopio para capturar la forma de la señal y luego aplica técnicas de desencriptación para descifrar la información.
### Representación de Funciones
El proyecto comienza con la representación gráfica de las funciones que componen el algoritmo de encriptación. Esto permite comprender cómo se está realizando la encriptación y cuáles son las funciones involucradas.
### Desencriptación de Código
Una vez identificadas las funciones en el algoritmo de encriptación, el objetivo final es desencriptar el código que se está transmitiendo. Cada función encripta un bit del código, y conocer la clave secreta del algoritmo es crucial para la desencriptación.

## Preguntas teóricas
1. La funció que falta en el Annex Clau és la de l’Exponencial Decreixent. Aquesta mateixa funció la podem programar en Matlab de les següents dos maneres:
- y = exp (-1*(2*x));
- y = 1./exp(2*x);
2. Per diferenciar les funcions trigonomètriques entre sí ens haurem de fixar en el primer valor de la y.
Hem canviat els límits de les nostres funcions, que passessin a ser -π i +π i la diferència és que en la gràfica la mateixa funció estaria representada entre -π i +π.
3. Quan disminuïm molt la resolució veiem que la gràfica que ens mostre no és la pròpia de la funció que volem representar.
Si l’augmentem en canvi si que ens mostra la nostre funció, així que podem dir que en un valor a partir de 0.1 la gràfica seria adient amb la fórmula de la funció.
4. Hem utilitzat el número d’expedient del Oscar, que és el 41071, així que el número que utilitzarem és el 1.
El missatge descodificat que ens ha quedat ha estat: G I D B H C F E A

![image](https://github.com/oscarjuly23/Maths/assets/39187459/ec41b459-0973-47fe-8eec-d790eda3f67f)
