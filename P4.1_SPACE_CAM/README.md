# Space Cam: Cohete Espacial para Fotografía desde el Espacio

## Introducción
El proyecto SpaceCam se originó a raíz de la idea de establecer un récord Guinness: la fotografía más lejana de una fiesta universitaria. Para lograr este récord, diseñamos un cohete espacial que llevará una cámara a una altitud entre 10 km y 100 km sobre la superficie de la Tierra. La cámara tomará una foto desde el espacio que capturará la vista del campus de La Salle y, con suerte, se convertirá en un recuerdo inolvidable para todos los estudiantes.
## Ecuación Diferencial y Método de Euler
El corazón de este proyecto radica en la resolución de la ecuación diferencial que describe la velocidad del cohete en función de su posición vertical. Esta ecuación se resuelve de forma analítica, lo que nos permite obtener una solución exacta para la trayectoria del cohete.

Además, para calcular la trayectoria de manera numérica, implementamos el método de Euler. Este método discretiza la ecuación diferencial y nos permite aproximar la solución numérica. Comparamos los resultados obtenidos mediante el método de Euler con la solución analítica para validar nuestra aproximación.
## Personalización de la Fotografía
Una característica interesante de este proyecto es la personalización de la fotografía según la velocidad del cohete. Dependiendo de la velocidad en el momento en que la cámara se dispare (cuando el cohete esté a una altura cercana a 10 km), la imagen capturada será más o menos borrosa. Esto agrega un toque especial y único a cada foto.

## Análisis de Resultados

1. El parámetro M equivale a las particiones iguales que hacemos al total del recorrido que el cohete hará. Por tanto, si nosotros queremos obtener la mejor aproximación a la realidad, como mayor sea el numero de pasos realizados, mejor será la aproximación.
2. Claramente, con el número de pasos marcados en el enunciado, al hacer de las dos maneras la ecuación diferencial ordinaria, encontramos una diferencia significativa entre una gráfica y la otra. Esto se produce debido a que, mediante el método de Euler intentamos aproximar una curva mediante una recta, y como resultado obtenemos un error de primer orden. Como vemos en la gráfica, en la parte de la función que no observamos curvatura no hay error, por tanto, solo podría no haber error en el caso que la función a representar fura una recta.
3. En un inicio, la velocidad del cohete es la velocidad de despegue, y a medida que entran en acción los fenómenos externos a la fuerza provocada por este, la velocidad va disminuyendo hasta que la suma de fuerzas que afectan al vehículo, con sentidos opuestos, se igualan y, por tanto deja de existir una aceleración en sentido contrario al del cohete y en consecuencia obtenemos un movimiento uniforme.

   ##
<p align="center">
  <img src="https://github.com/oscarjuly23/Maths/assets/39187459/4e7966ff-05ad-4c2d-9d60-5115c7d20f57">
</p>
