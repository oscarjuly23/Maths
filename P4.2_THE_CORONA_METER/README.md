# The Corona Meter: Modelo SIR de Propagación del COVID-19

## Introducción
###  Implementación del Modelo SIR
En el script SIR.m, hemos creado una función que calcula y muestra la propagación del COVID-19 en función de los parámetros de probabilidad de contagio (β) y tasa de recuperación (γ).
Puedes ingresar estos parámetros junto con la población inicial de cada país para observar cómo se desarrolla la infección en diferentes escenarios.

### Muestra y Análisis de Resultados
En el script P4.m, hemos aplicado el modelo SIR a cuatro poblaciones ficticias: Mordor, Gondor, La Comarca y Rhovanion.
Luego, comparamos las curvas de infectados de estas poblaciones en una única gráfica para una mejor visualización y comparación.
Finalmente, creamos un mapa interactivo que muestra la situación del virus en cada país en un día específico, permitiéndote explorar cómo varía la infección en diferentes regiones.

Este proyecto es una herramienta valiosa para comprender cómo se propaga un virus en diferentes condiciones y poblaciones, y puede ayudar a tomar decisiones informadas en situaciones epidemiológicas.


## Interpretación de los resultados
### Equaciones del Modelo SIR:
1. Primera Ecuación: Esta ecuación describe cómo disminuyen las personas susceptibles (S) debido a la propagación del virus. La tasa de transmisión (β) es negativa, ya que a medida que el virus se propaga, hay menos personas susceptibles. β representa la probabilidad de contagio entre la población. Multiplicamos β por el número de personas susceptibles y el número de infectados. Cada vez, esta cantidad disminuirá porque algunas personas pasarán de ser susceptibles a infectadas, mientras que otras pueden morir por causas externas.

2. Segunda Ecuación: Esta ecuación describe cómo cambian los infectados (I). Multiplicamos β por el número de personas susceptibles e infectadas, lo que representa la tasa de nuevos contagios. Luego, restamos la tasa de recuperación (γ) multiplicada por el número de infectados. γ representa la tasa de recuperación de los infectados, y algunos de ellos se recuperarán con el tiempo.

3. Tercera Ecuación: Esta ecuación describe cómo cambian los recuperados (R). Es directamente proporcional al número de infectados y la tasa de recuperación γ.
   
### Resultados Gráficos:
Se analiza la gráfica de Mordor como ejemplo. En ella, se pueden observar tres segmentos diferentes que representan a los susceptibles, infectados y recuperados. Al principio, los susceptibles son muchos (1,000), y los infectados y recuperados son cero, ya que el virus aún no se ha manifestado. Después de diez días, se observa una disminución en el número de susceptibles y un aumento en el número de infectados. Después de cincuenta días, la situación se estabiliza, con menos susceptibles y más recuperados que infectados.

### Análisis Gráfico General de Infectados:
La gráfica muestra la cantidad de infectados en toda la "Tierra Media". Se observa que la tasa de aumento de infectados difiere entre los países debido a las medidas de contención. Las medidas más estrictas reducen gradualmente la probabilidad de contagio, ya que el virus tiene menos oportunidades de propagarse. La diferencia entre La Comarca y Rhovanion es notable, con medidas de contención más laxas en La Comarca y medidas más estrictas en Rhovanion, lo que resulta en un aumento más lento y menos infectados en Rhovanion.

### Modelo SIRS:
Se menciona la búsqueda de información sobre el modelo SIRS epidémico, que, al igual que el SIR, clasifica a la población en susceptibles, infectados y recuperados, pero también permite la pérdida de inmunidad con el tiempo, lo que significa que las personas recuperadas pueden volver a ser susceptibles.
