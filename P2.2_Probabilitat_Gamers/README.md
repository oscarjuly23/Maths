# Probabilitat Gamers: Herramienta de Desencriptación de Señales Analógicas

## Introducción
Este repositorio de código implementa dos ejercicios relacionados con la aplicación de la probabilidad en el diseño de videojuegos. Los ejercicios se resuelven utilizando MATLAB y se encuentran en un archivo principal llamado P2.m. Además, se proporciona un documento de preguntas llamado Preguntes_P2.docx que contiene preguntas relacionadas con cada uno de los ejercicios.

## Ejercicio 1: Simulación de Combinaciones en un Videojuego
Este ejercicio simula la experiencia de dos amigos que intentan encontrar una combinación de botones en un videojuego para avanzar al siguiente nivel. La combinación consta de 10 elementos y deben presionar los botones de manera consecutiva. Cada vez que aciertan, suman 1 punto, mientras que si fallan, se resta ⅓ de punto. El objetivo es determinar si es viable encontrar la combinación al azar.

- En el apartado "a", se replican 𝑁 experiencias generando 𝑁 secuencias de 10 botones al azar. Se crea un array que contiene las 10*𝑁 teclas presionadas para generar las 𝑁 secuencias.

- En el apartado "b", se calcula la puntuación promedio obtenida con estas 𝑁 combinaciones.

- En el apartado "c", se calcula numéricamente la puntuación esperada utilizando una distribución binomial y se observa si existe alguna relación con el valor obtenido en el apartado "b". Se analiza cómo cambia la puntuación esperada al incrementar 𝑁.

## Ejercicio 2: Modelado de Dispersión Balística en un Videojuego
Este ejercicio aborda la implementación de la dispersión balística en un videojuego. Se utiliza una simulación basada en funciones de Gauss para modelar la dispersión de los tiros en las direcciones 𝑥 e 𝑦. Los parámetros de estas funciones, como la media (𝜇) y la desviación estándar (𝜎), son ajustables por el usuario.

- En el apartado "a", se generan dos arrays de 𝑛=10000 muestras gaussianas, uno para las coordenadas 𝑋 y otro para las coordenadas 𝑌.

- En el apartado "b", se crean dos histogramas que muestran las distribuciones de Gauss correspondientes para 𝑋 y 𝑌.

- En el apartado "c", se calcula la probabilidad de que un tiro impacte dentro de un cuadrado especificado en la figura, considerando las distribuciones de Gauss.

- En el apartado "d", se diseñan tres armas (A, B y C) con diferentes desviaciones en 𝑋 e 𝑌, lo que requiere que el jugador adapte su puntería a las características del arma. Se simula el punto de impacto de 20 tiros para cada una de estas armas utilizando la función proporcionada pintaDiana.m.

## Análisis
### Ejercicio 1:
En este ejercicio, se plantea la situación en la que dos amigos intentan superar un nivel de videojuego en su PS5. Para avanzar al siguiente nivel, deben encontrar una combinación de 10 pulsaciones de botones que otorgue una puntuación positiva. Cada acierto suma 1 punto, mientras que cada error resta 1/3 de punto.
- Generación de Combinaciones Aleatorias de Teclas: Hemos utilizado una función para generar N combinaciones aleatorias de 10 teclas (Q, T, X, O) debido a la necesidad de introducir aleatoriedad en el juego.
- Cálculo de Puntuación Promedio: Calculamos la puntuación promedio para diferentes valores de N (1000, 100000, 1000000) ejecutando el código cinco veces y tomando el promedio de los resultados.
 
Puntuación Promedio	N=1000	N=100000	N=1000000
Ejecución 1	0.0069	-0.0010	-1.0467e-04
Ejecución 2	-0.0015	0.0010	2.9427e-04
Ejecución 3	0.0011	-1.3333e-04	-8.2667e-05
Ejecución 4	0.0067	-1.4267e-04	3.7827e-04
Ejecución 5	0.0025	2.6267e-04	4.2320e-04
Valor Promedio	0.003	-0.00048829493	0.02516404318

- Función Binomial y Puntuación Esperada: Hemos creado una función binomial para replicar la experiencia y calcular la puntuación esperada. Observamos que la puntuación promedio se acerca a la puntuación esperada al aumentar N.

### Ejercicio 2:
Este ejercicio se enfoca en la implementación de dispersiones balísticas en un videojuego de disparos (shooter) utilizando distribuciones gaussianas.
- Generación de Distribuciones Gaussianas: Hemos creado distribuciones gaussianas con diferentes parámetros (n, μ, σ) y mostrado sus histogramas. A medida que aumenta n, se observa que la cantidad de muestras aumenta, lo que se asemeja a una distribución normal.

n=1000, μ=0, σ=2
n=10000, μ=0, σ=2
n=1000000, μ=0, σ=2
n=1000000, μ=4, σ=4
- Cálculo de Probabilidad de Impacto: Hemos calculado la probabilidad de que los disparos impacten dentro de un cuadrado rojo específico.
- Impactos de 20 Disparos Aleatorios: Mostramos las dianas con los impactos de 20 disparos de tres armas diferentes (A, B, C) con diferentes desviaciones en X e Y.
Arma A: μx=0, σx=3, μy=0, σy=1
Arma B: μx=0, σx=2, μy=0, σy=2
Arma C: μx=0, σx=1, μy=0, σy=2

### Observaciones Finales
Este proyecto ilustra cómo se pueden utilizar conceptos de probabilidad y estadística en el diseño de videojuegos, específicamente en la generación de eventos aleatorios y en la modelización de dispersiones balísticas para mejorar la experiencia del jugador.
![image](https://github.com/oscarjuly23/Maths/assets/39187459/7d3171ea-c495-436a-b55b-ab616c8e3a06)

![image](https://github.com/oscarjuly23/Maths/assets/39187459/acfc473e-5f16-4637-b11c-216d94627b32)

