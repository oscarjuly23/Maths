# Tylor Cam: Programa de Estabilidad para Cámaras Skycam o Spidercam

## Introducción
Este proyecto se centra en el desarrollo de un sistema de estabilidad para cámaras Skycam o Spidercam, específicamente para el modelo llamado "Tylor Cam". Los estudiantes de la asignatura de Cálculo, que son parte del programa de Grado en Sistemas Audiovisuales, están llevando a cabo este proyecto como parte de su Trabajo de Final de Grado (TFG). La misión principal de este proyecto es reducir los costos de producción y fabricación de cámaras Skycam, diseñando un modelo más compacto y eficiente que utilice solo tres cables motorizados en lugar de cuatro. Estos cables motorizados son controlados por un microprocesador PIC18F4321 de Microchip®.

Uno de los desafíos clave que enfrentan estas cámaras es garantizar la estabilidad durante la grabación. Para abordar este problema, los estudiantes han optado por desarrollar un programa en Matlab u Octave que utilice aproximaciones polinómicas para reducir el error de desplazamiento de la Tylor Cam, mejorando así su estabilidad.
## Características Destacadas
### Control de Movimiento Preciso
El sistema de la Tylor Cam utiliza tres motores paso a paso controlados por un PIC18F4321 para garantizar un movimiento preciso en el aire. Cada motor puede mover la cámara hacia adelante o hacia atrás generando tensiones controladas por el microprocesador.
### Cumplimiento de Normativas de Seguridad
El proyecto Tylor Cam está financiado por La Salle Campus Barcelona, lo que implica la necesidad de cumplir con estrictas normativas de seguridad. Una de las regulaciones clave es la velocidad máxima a la que puede moverse la cámara en diferentes áreas, especialmente en las zonas donde hay público. Esta velocidad se describe mediante una función matemática específica que debe cumplirse rigurosamente.
### Análisis de Velocidad, Aceleración y Estabilidad
El programa desarrollado en este proyecto se encarga de analizar la velocidad, la aceleración y la estabilidad de la Tylor Cam durante su funcionamiento. Utiliza cálculos de derivadas y aproximaciones polinómicas para garantizar que la cámara cumpla con los estándares de seguridad y brinde imágenes estables.
## Preguntas teóricas
1. En els punts de la funció que la posició és 0, la velocitat i l’acceleració en aquests punts no té perquè ser 0 ja que pot succeir que quan passi la càmera per aquesta posició la velocitat o l’acceleració poden tenir cap valor.
Per exemple alhora de derivar la funció de velocitat no canviarà el seu valor per a que la posició sigui 0.
2. L’error absolut de la funció de Taylor va relacionat amb el grau N de Taylor ja que com més augmentem al valor del grau N anirem reduint l’error i tindrem una aproximació més precisa.
3. Per a realitzar MAC-Laurin en el nostre codi, com aquesta fórmula ens diu que el nostre entorn ha de ser de 0, en la nostre funció ja que el punt central sempre és el 0 si que seria possible.
4. Taylor no és exacte ja que sempre que aproximem ens queda un residu que seria l’error que L’error és igual a zero només en el cas que el que vulguem aproximar és un polinomi.
5. Hem vist que les funcions que posa de ‘funcpos2’ és la velocitat que ha de prendre la càmera segons la posició en la que es troba perquè veiem que amb la seva derivada els extrems tindrem que la velocitat serà igual a 0.
