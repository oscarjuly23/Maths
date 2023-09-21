# AID EYE: Proyecto Dron de Monitoreo en la Montaña

## Introducción
Durante una excursión de snowboard en la montaña de La Molina, un estudiante llamado David Boat, que era un principiante en snowboard, decidió aventurarse en una pista avanzada desde la cima de la montaña. Desafortunadamente, su aventura no terminó bien. El objetivo de este proyecto es crear un prototipo de dron con cámara que pueda cargar coordenadas de desplazamiento por GPS para monitorear a los estudiantes en la montaña y prevenir futuros incidentes como el de David Boat.

## Parte Práctica

### Buscar Máximos y Mínimos
El primer paso para determinar la ruta del dron es identificar los máximos y mínimos en el perfil de la montaña. Esto se hace utilizando la función derivadan.m de la práctica anterior. Los máximos y mínimos se encuentran utilizando la primera derivada y la segunda derivada de la función del perfil de la montaña. Los máximos se ubican añadiendo un margen de 200 píxeles por encima y los mínimos se ubican restando 200 píxeles. Además, se agrega un punto de inicio en (0, 0) y un punto final en (xend, yend), donde el cliente decide dónde debe detenerse el dron.

### Interpolación de los Datos
Para crear la ruta del dron entre los puntos encontrados, se utiliza la función interp1.m de MATLAB. Esto permite interpolar entre los puntos máximos y mínimos para crear una ruta suave. El tipo de interpolación puede ser "lineal" o "cúbica", según la elección del cliente. Se debe tener en cuenta la altura de los puntos para evitar que el dron choque con la montaña.

### Cálculo de la Longitud Recorrida por el Dron
La longitud recorrida por el dron se calcula mediante la integral de la raíz cuadrada de 1 más el cuadrado de la primera derivada de la función de perfil de la montaña. Dado que un píxel se corresponde a un metro, este cálculo se puede realizar sumando la raíz cuadrada de 1 más el cuadrado de la primera derivada en cada paso de la ruta.

### Cálculo del Área por el Método de los Rectángulos o Trapecios
El área debajo de la ruta del dron se puede calcular utilizando el método de los rectángulos o el método de los trapecios. Ambos métodos se basan en la definición de la integral de Riemann y utilizan una partición finita de los datos para calcular el área aproximada. Dependiendo de la resolución, se puede implementar uno de los dos métodos para calcular el área.

Este proyecto permitirá monitorear de manera efectiva las rutas de snowboard en la montaña y prevenir accidentes futuros, al tiempo que brinda a los estudiantes la oportunidad de aplicar conceptos de cálculo en un escenario práctico.

## Análisis resultados
1. Podem observar si ampliem a la gràfica que en cada màxim i en cada mínim que com que la gràfica no és completament recta, cada màxim i mínim està format per varis punts llavors no ens surt un punt exacte sinó ens surten varis (2 o 3) que són ‘0’.
2. Els dos mètodes de integració que tenim serien el de rectangles i el de trapezis. Nosaltres ens tocava implementar el de trapezis que seria el més exacte ja que aquest mètode s’aproxima més a la corba que no pas el de rectangles. Aquest últim al agafar rectangles, en la part superior, té un error més gran en el càlcul de l’àrea que l’altre mètode.
3. El diferencial ‘h’ és la quantitat de vegades que calculem l’àrea per píxel llavors com més reduïm aquest diferencial més trams agafarem i més podem ajustar la gràfica. Per tant al realitzar-ho píxel a píxel tindrem més mesures de manera que amb els trapezis/rectangles ens aproximem més a la corba i reduïm l’error.
4. La resolució que podem obtenir en el procés de interpolació pot ser major de un píxel. Només hauríem de canviar la variable que marca els punts (en la nostre pràctica “punts”), la tenim en ‘1’ per la màxima aproximació. Comprovem que si per exemple la posem a ‘50’ no realitza bé la cerca de màxims i mínims.
5. Amb aquesta pràctica hem pogut utilitzar l’aplicació de les integrals per un cas que podria ser real. Hem pogut veure com la teoria que donem a classe a la pràctica pot arribar a ser realment de utilitat. Tenir una idea més fidel de la utilització de les integrals aplicant-les en un càlcul de àrees reals. També la utilitat de trobar els màxims i mínims per mantenir una distància de seguretat, són coses que sense les pràctiques, només en les classes teòriques no arribem a reflexionar.
