# P1.1 LS_ENCRIPT

### Introducció
Una de les noves start-ups de La Salle Technova Barcelona, LS ENCRIPT, ha rebut un encàrrec per a desenvolupar un programa encarregat de desxifrar la informació transmesa a través d'un sistema cablejat analògic obsolet.
La start-up, que en aquest moment es troba en la primera ronda de finançament, disposa únicament d'un oscil·loscopi que permet observar la forma del senyal que s'està transmetent a través dels cables. El principal problema que tenen els emprenedors de LS ENCRIPT és que la informació que es transmet pel cable està encriptada.
En criptografia, l'encriptació és un procediment que utilitza un algoritme de xifrat amb una clau concreta per transformar un missatge, sense atendre la seva estructura lingüística o significat, de tal manera que sigui incomprensible o, almenys, difícil de comprendre per a tota persona que no tingui la clau secreta de l'algorisme.
Des de la start-up, es posen en contacte amb els alumnes de Càlcul de la universitat per participar en el projecte amb l'objectiu de poder desxifrar el missatge que s'està transmetent, coneixent la clau secreta de l'algorisme, a través d'un cable i desenvolupar un programari que s'encarregui de reconèixer automàticament els diferents patrons que formen aquest senyal.

### Representació de funcions
El primer pas per desxifrar la informació és conèixer les diferents funcions que formen l'algoritme d'encriptació. Aquestes funcions es troben a l'Annex Funcions de l'enunciat.
L'objectiu d'aquest primer apartat és identificar totes les funcions i representar-les gràficament utilitzant l'eina Matlab o Octave. Aquesta representació ha de realitzar-se en forma de matriu 9x9.
Per fer-ho, podreu recórrer als comandaments subplot (0,0,0) i plot (x0, y0), en un interval definit entre (-1,1)i una resolució de 0.001.
### Anàlisi de resultats
1. La funció que falta en el Annex Clau és la de l’Exponencial Decreixent. Aquesta mateixa funció la podem programar en Matlab de les següents dos maneres:
- y = exp (-1*(2*x));
- y = 1./exp(2*x);
2. Per diferenciar les funcions trigonomètriques entre sí ens haurem de fixar en el primer valor de la y.
Hem canviat els límits de les nostres funcions, que passessin a ser -π i +π i la diferència és que en la gràfica la mateixa funció estaria representada entre -π i +π.
3. Quan disminuïm molt la resolució veiem que la gràfica que ens mostre no és la pròpia de la funció que volem representar.
Si l’augmentem en canvi si que ens mostra la nostre funció, així que podem dir que en un valor a partir de 0.1 la gràfica seria adient amb la fórmula de la funció.
4. Hem utilitzat el número d’expedient del Oscar, que és el 41071, així que el número que utilitzarem és el 1.
El missatge descodificat que ens ha quedat ha estat: G I D B H C F E A
