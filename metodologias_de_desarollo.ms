.fam H \" font family
.ds N \\fB\\n+n.\\fR \" variable N for paragraphs
.nr HM 1i \" header margin
.nr FM 0.75i \" footer margin
.P1 \" show header on page 1
.ss 12 0 \" interword spacing
.nr PS 11 \" point size/font size
.nr VS 14 \" vertical spacing
.nr PD 0.4v \" paragraph distance
.nr PO 0.7i \" left margin
.nr LL 7i \" line width 
.RP no \" Cover; don't repeat in second page
.TL \" title
Actividad 1 - Comparación de Metodologías de Desarrollo
.AU \" author
Samuele Tonarini
.AI \" institute
.ND 14 Noviembre 2021
CIFP Francesc de Borja Moll
.ds LH \D't 0.2p'\v'1.5'\l'7i'\v'-0.5'\h'-7i'12/11/2021\D't 0.5p' \" left header (from 2nd page)
.ds CH Actividad 1 \" center header (from 2nd page)
.ds RH CIFP Francesc de Borja Moll \" right header (from 2nd page)
.ds LF \D't 0.2p'\v'-0.5'\l'7i'\v'1'\h'-7i'Samuele Tonarini\D't 0.5p' \" left footer
.ds RF i \" right footer
.ds TOC Tabla de Contenidos \" index name
.XS ii
Introducción
.XA 1
Metodologías de Desarrollo
.nr PS 10
.XA 1
.RS
Metodologías Tradicionales
.XA 1 
.RE
.RS
Metodologías ágiles
.nr PS 11
.XA 2
.RE
Cascada
.XA 4
Incremental
.XA 6
Prototipado
.XA 8
Espiral
.XA 10
SCRUM
.XA 12
Conclusión
.XA 12
Bibliografía
.XE
.PX
.ds CH Introducción 
.bp
.ds RF ii 
.nr PS 15
.SH
.ce 1
Introducción
.LP
.nr PS 11
.LP
En esta practica se describen y comparan diferentes métodos de desarrollo de software.
Se verán algunos entre los mas conocidos, entre cuales están el muy popular método
.B scrum 
y el método
.B cascada .
Se comparan características como tiempo para finalizar el trabajo, efectividad, ventajas y desventajas en confronto a otras metodologías y flujo de cada una.

Las metodologías de desarrollo de software son unas técnicas organizadas que se utilizan para desarrollar software informático, normalmente en grupo. 
El objetivo es el de agilizar el tiempo en que se desarrolla software y mejorar la calidad del mismo.

Estas metodologías determinan la rutina que hay que seguir como equipo, teniendo en cuenta las herramientas utilizadas, dificultad del proyecto/tarea, presupuesto, tamaño del equipo, etc...
Así que la función de una metodología de desarrollo es diminuir la dificultad, aumentar la comunicación y la participación del grupo, aumentar la velocidad de desarrollo y mejorar la calidad del producto final.
.ds CH Metodologías de Desarrollo
.bp
.ds RF 1 
.nr PS 15
.SH
.ce 1
Metodologías de Desarrollo
.nr PS 11
.SH
.ce 1
Metodologías Tradicionales
.LP
Estas Metodologías están basadas en pasos preestablecidos que tienen que completarse en orden secuencial; Desde requisitos a diseño, de diseño a implementación, etc... Cada fase tiene uno requisitos que tienen que completarse y estar comprobados ante de pasar a la fase siguiente.

Este tipo de metodologías se suelen usar en situaciones donde el objetivo esta bien establecido y los requisitos y funcionamiento son claros. Debido a eso, estas metodologías pueden proponer muchas desventajas y inconvenientes que concretaremos mas adelante en detalle. 
.PS
boxwid = 1i
boxht = 0.5i
linewid = 0.2i
box "Requisitos"
arrow
box "Análisis"
arrow
box "Diseño"
arrow
box "Construcción"
arrow
box "Implantación"
arrow
box "Despliegue"
.PE
.SH
.ce 1
Metodologías ágiles
.LP
Las metodologías ágiles son las mas utilizadas hoy en día debido a su flexibilidad y a su continua revisión del proyecto por parte del cliente y los desarrolladores.
Los métodos ágiles proponen un enfoque incremental de desarrollo, creando el programa paso a paso y revisando los avances cada poco tiempo, cambiando objetivos si necesario.
.PS
arrowwid = 0.1i
circlerad = 0.5i
circle "Implantación"
circle "Construcción" at 1st circle + (1.5, 0) 
circle "Análisis" at 1st circle + (0, -1.5)
circle "Diseño" at 1st circle + (1.5, -1.5)
down 
box "Requisitos" at 3rd circle - (1.5, 0)
box "Despliegue" at 1st circle - (1.5, 0)
arrowwid = 0.1i
spline down 0.35 left 0.35 from 1st circle .sw to 3rd circle .nw ->
spline right 0.35 down 0.35 from 3rd circle .se to 4th circle .sw ->
spline up 0.35 right 0.35 from 4th circle .ne to 2nd circle .se ->
spline left 0.35 up 0.35 from 2nd circle .nw to 1st circle .ne ->
arrow from 1st box to 3rd circle chop
arrow from 1st circle to 2nd box chop
.PE
.LP
Aquí abajo se detallan algunas de estas metodologías, tanto tradicionales como ágiles.
.ds CH Cascada 
.bp
.ds RF 2
.nr PS 15
.SH
.ce 1
Cascada
.nr PS 11
.LP
El modelo en cascada es una metodología de desarrollo de tipo tradicional. 
Se basa en seguir unas fases de desarrollo una después de otra.
Su nombre viene de que las diferentes fases se ponen una encima de otra y se empieza desde la de arriba, y luego se va ejecutando cada una de arriba a abajo, recordando al flujo de una cascada.

Se suele usar en entornos de industria y construcción, donde normalmente es muy difícil y caro cambiar algo una vez que este implementado.
.RS
.RE
Se utilizo en el mundo del software como uno de los primeros métodos de desarrollo, pero fue porque en su día aun no se habían generado muchas otras opciones y esta fue heredada de otros sectores. 
El desarrollo de un programa de software se diferencia mucho al de un edificio, y por eso la poca flexibilidad de cambios que viene con este tipo de metodología y el desarrollo de software no se casan muy bien.
.SH
.ce 1
Fases del Modelo en Cascada
\fR
.PS
boxwid = 1.35
box "Análisis"
box "Diseño" at 1st box + (0.5, -0.6)
box "Implementación" at 2nd box + (0.5, -0.6)
box "Verificación" at 3rd box + (0.5, -0.6)
box "Mantenimiento" at 4th box + (0.5, -0.6)
spline down 0.35 from 1st box .s - (0.5,0) to 2nd box .w ->
spline down 0.35 from 2nd box .s - (0.5,0) to 3rd box .w ->
spline down 0.35 from 3rd box .s - (0.5,0) to 4th box .w ->
spline down 0.35 from 4th box .s - (0.5,0) to 5th box .w ->
spline up 2.15 from 5th box .n + (0.5, 0) to 1st box .e ->
.PE
.SH
Análisis
.LP
En la fase de análisis (y/o requisitos), se preparan y describen los objetivos, presupuesto, tiempo de entrega del proyecto, herramientas, riesgos, etc...
Todo esto debe estar muy detallado y comprendido por los desarrolladores, ya que una vez que se haya empezado a trabajar con el modelo, no se podrá cambiar en el medio del ciclo de desarrollo.
.SH
Diseño
.LP
En esta fase es cuando tenemos que diseñar la estructura del software, identificando las varias funciones que va a tener nuestro programa. También deberemos identificar sus elementos y la relación que tiene el uno con el otro.
.SH
.ds RF 3
Implementación
.LP
En la fase de implementación deberemos pasar a código los elementos, relaciones y funciones establecidas en la tapa anterior.
El lenguaje, tecnologías, paradigmas y técnicas se han establecido en la fase de análisis.
.SH
Verificación
.LP
Solo se entra en la fase de verificación cuando el software
.B "ya cumple su objetivo" .
Osea que esta fase sirve para refactorizar código, optimizar algoritmos y detectar y remover bugs y posibles vulnerabilidades.
También es la fase donde el proyecto se evaluá con los objetivo iniciales y se presenta al cliente final.
.SH
Mantenimiento
.LP
En la fase de mantenimiento es donde solo esperamos para correcciones de problemas nuevos y la introducción de otras funcionalidades del software.
En el caso de tener que modificar el software, se entraría en un nuevo ciclo de cascada que empieza de cero con los nuevos objetivos.
.SH
.ce 1
Ventajas y Inconvenientes
.SH
Ventajas
.LP
En un mundo ideal, donde los objetivos y ideas no cambian y donde cliente y desarrolladores se entiende perfectamente, el método de cascada proporciona diferentes ventajas:
.RS
.IP \(bu 2
Al ser estructurado, con objetivos claros, es fácil entender el proyecto
.IP \(bu 2
La documentación del proyecto es muy extendida, lo que hace mas fácil para un externo saber que se esta haciendo y como funciona
.IP \(bu 2
La previa planeación de los objetivos aumenta el rendimiento ya que evita que se generen problemas al trabajar
.IP \(bu 2
Ayuda a tener claro donde estas en el proyecto y que tienes que hacer
.RE
.SH
Inconvenientes
.LP
Muchas veces la comunicación entre el cliente y los desarrolladores no es clara, o hay un cambio de idea en el medio del proyecto, o simplemente no se pudo prevenir los problemas de un proyecto debido a su complejidad o tamaño. 
.RS
.RE
Todos esos imprevistos requieren flexibilidad, cosa que no esta permitida en el método de cascada; Eso nos lleva a los inconvenientes de este método:
.RS
.IP \(bu 2
Como previamente dicho, no se pueden prevenir todos los problemas, así que esta casi garantizado de encontrar grandes desafíos en medio del desarrollo que sera complicado superar debido a la poca flexibilidad del método
.IP \(bu 2
El cliente no vera el producto hasta que estemos en casi la ultima fase, lo que crea inseguridad del cliente, ademas de una posible insatisfacción confronte al producto final
.IP \(bu 2
Muchos problemas no se detectaran hasta la fase de verificación, y algunos de ellos podrá ser muy critico y se necesitara pasar otra vez a la fase de diseño o incluso de análisis
.ds CH Incremental
.RE
.bp
.ds RF 4
.nr PS 15
.SH
.nr PS 15
.ce 1
Incremental
.nr PS 11
.LP
El método incremental es una metodología ágil de desarrollo que se creo en el sector de desarrollo de software debido a los limites impuestos por las metodologías tradicionales como el método de cascada.
.RS
.RE
En este método los objetivos son separados en metas mas pequeñas. Una vez separadas se determina la importancia de cada meta y luego se aplicará el ciclo de incremento a cada una de ellas. Este ciclo consiste en analizar los objetivos, diseñar la solución para esos objetivos, implementar la solución en código y por ultimo validar que el código funcione sin problemas.
.LP
Una vez acabado el ciclo el incremento vendrá añadido al resto del proyecto, y este bucle se repite hasta que se alcancen los objetivos iniciales. Al finalizar cada incremento habrá una revisión que determinara el siguiente incremento. En la revisión también participara el cliente, pudiendo ver como el programa se crea paso a paso.
.SH
.ce 1
Fases del Modelo Incremental
\fR
.PS
box "Análisis" width 1 fill 0.5; arrow
box "Diseño" width 1 fill 0.5; arrow
box "Implementación" fill 0.5; arrow
box "Validación" width 1 fill 0.5; move; box "Incremento 1" width 1.1 fill 0.5
box "Análisis" width 1 fill 0.3 at 1st box + (0.3, -0.7); arrow
box "Diseño" width 1 fill 0.3; arrow
box "Implementación" fill 0.3; arrow
box "Validación" width 1 fill 0.3; move; box "Incremento 2" width 1.1 fill 0.3
box "Análisis" width 1 fill 0.1 at 6th box + (0.3, -0.7); arrow
box "Diseño" width 1 fill 0.1; arrow
box "Implementación" fill 0.1; arrow
box "Validación" width 1 fill 0.1; move; box "Incremento 3" width 1.1 fill 0.1
arrow from 5th box .s + (0.3, 0) to 10th box .n
arrow from 10th box .s + (0.3, 0) to 15th box .n
.PE
.LP
Como se puede observar las fases son símiles a las del modelo de cascada, la única pero importante diferencia es que las metas son sub-objetivos del objetivo inicial, y que en cada incremento repetimos el proceso de análisis. Así que para explicar mejor las fases y para no repetir lo que ya hemos descrito en otros apartados, podemos dividir las fases de la siguiente manera:
.SH
Análisis Inicial
.LP
Aquí es donde separamos el objetivo en metas y donde planeamos de manera general las herramientas. También es donde haremos una visión general de como será todo el proceso y los incrementos, presupuesto y tiempo estimado.
.SH
Iteración de Incrementos
.LP
Aquí es donde aplicaremos la iteración de los incrementos establecidos. Al acabar cada incremento (después de la incorporación en el proyecto principal) se hará un nuevo análisis, menos profundo que el inicial, pero que determinara el siguiente incremento. Principalmente se vera si hay algún cambio que hacer o si surge algún problema para resolver.
.SH
.ds RF 5
Entrega del Producto
.LP
Una vez que todas las metas se hayan alcanzado, el proyecto se entregara al cliente. Este no recibirá normalmente ninguna gran sorpresa porque habrá estado participando a los análisis de los incrementos y proponiendo cambios donde lo veía oportuno. 
.SH
.ce 1
Ventajas y Inconvenientes
.SH
Ventajas
.LP
Este método es mucho mas flexible que los métodos tradicionales, y, debido a eso tiene unas cuantas ventajas:
.RS
.IP \(bu 2
El coste inicial para tener un producto funcional suele ser mas bajo
.IP \(bu 2
El cliente influye y opina durante todo el proceso de desarrollo y puede concretar mas su idea
.IP \(bu 2
Al tener validación cada incremento, el código tiene menos problemas y los que tienen serán de menor importancia
.IP \(bu 2
Es mas rápido a generar un producto funcional, ya que se enfoca a desarrollar un producto mínimo viable y luego añadir pequeños incrementos.
.RE
.SH
Inconvenientes
.LP
Aunque tenga muchas ventajas, este modelo sigue teniendo inconvenientes, aunque se pueden considerar de menor importancia:
.RS
.IP \(bu 2
Si se presenta algún cambio radical durante el desarrollo, puede que haya que replantear las metas y su importancia
.IP \(bu 2
Se pueden ir sumando problemas, que cambiarían la prioridad de los sub-objetivos a la refactorización
.IP \(bu 2
El cliente puede que no este muy decidido, y así retrasar y empeorar el desarrollo, pidiendo cambios constantes
.RE
.ds CH Prototipado
.bp
.ds RF 6
.nr PS 15
.SH
.ce 1
Prototipado
.nr PS 11
.LP
El modelo de prototipado es un modelo ágil que se divide en dos partes clave. La parte de ciclo de prototipos, y la parte de desarrollo y mantenimiento. 
Este modelo consiste en crear prototipos y presentarlos al cliente/usuario final, que nos dará una valoración de estos y, basándonos en estas valoraciones, refinar el prototipo y presentarlo otra vez, hasta que el cliente este satisfecho y que todos los objetivos estén cumplidos.

Una vez que el cliente este satisfecho, se pasa a la fase de desarrollo donde se escribe el programa, y, una vez acabado se valida y finaliza, entrando así en la fase de mantenimiento.
.SH
.ce 1
Fases del Modelo de Prototipado
\fR
.PS
box "Analisis"; arrow; 
box "Diseño"; move; box "Evaluacion" "Cliente"; move; box "Confirmacion" "Cliente"
box "Prototipo" at 2nd box + (0.95, 0.8)
box "Modificar" "y Refinar" at 2nd box - (-0.95, 0.8)
box "Desarrollo" at 4th box - (0, 1.6)
box "Validacion" at 3rd box - (0, 1.6)
box "Mantenimiento" at 2nd box - (0, 1.6) 
arrow from 3rd box .e to 4th box .w
arrow from 4th box .s to 7th box .n
arrow from 7th box .w to 8th box .e
arrow from 8th box .w to 9th box .e
arrow from 2nd box .n to 5th box .sw
arrow from 5th box .se to 3rd box .n
arrow from 3rd box .s to 6th box .ne
arrow from 6th box .nw to 2nd box .s
.PE
.LP
Como dicho anteriormente, este método se puede separar en dos fases, una (como sugiere el nombre del método) de prototipado, y otra de desarrollo. 
Estas fases vienen separadas por la confirmación del cliente, que es el que determina que el prototipo este listo o si le falta trabajo.
Con eso en mente podemos separar este método en 3 fases:
.SH
Análisis y Requisitos
.LP
En esta fase determinamos los requisitos para hacer un primer prototipo del programa que cumpla con unos requisitos básicos.
También es donde examinamos posibles dificultades y elegimos herramientas.
.SH
Fase de Prototipado
.LP
En esta fase es donde entramos en una iteración de diferentes pasos.
Primero se diseña una solución para los objetivos que hemos declarado en la fase de análisis, después se crea un prototipo funcional basándonos en el diseño. 
Una vez que el prototipo esta listo, se presenta al cliente/usuario final para que nos de su opinión.
.LP
.sp
Cuando el cliente pruebe el prototipo pueden pasar dos cosas: 
la primera es que no lo encuentre listo, en ese caso se apuntan los fallos y se refina y mejora el prototipo, volviendo al paso de diseño.
La segunda es que el prototipo se encuentre listo, en este caso se seguiría a la siguiente fase.
.ds RF 7
.SH
Desarrollo
.LP
Una vez que nuestro prototipo este listo, debemos crear el programa basándonos en este.
En esta fase se trata de crear un sistema que sea igual que el prototipo pero funcional, ademas de refinar el código y de prepararlo para la implementación final. 
.SH 
Validación
.LP
Cuando el código este acabado, tenemos que validarlo para que no haya ningún problema una vez que se use.
Esta fase soluciona errores y optimiza el código presente sin añadir funcionalidades nuevas.
.SH
Mantenimiento
.LP
Una vez validado, el código esta listo para el despliegue.
En ese momento solo hará falta el mantenimiento del mismo, hasta que haya que implementar nuevas funcionalidades o resolver errores.
.SH
.ce 1
Ventajas y Inconvenientes
.SH
Ventajas
.LP
Este método se parece mucho al método incremental porque el cliente esta activamente participando en el desarrollo.
Ademas el cliente esta a contacto directo y prueba de primera mano el software.
Eso nos trae diferentes beneficios:
.RS
.IP \(bu 2
El cliente obtiene lo que quiere
.IP \(bu 2
El cliente puede entender mejor el funcionamiento del software y que se puede hacer con el
.IP \(bu 2
Es mas fácil identificar lo que falta, lo que no esta muy claro (hasta para el cliente), y lo que sera difícil implementar
.RE
.SH
Inconvenientes
.LP
Este método tienes bastante inconvenientes que pueden retrasar el desarrollo del programa:
.RS
.IP \(bu 2
Si el cliente no colabora, el software no podrá avanzar efectivamente
.IP \(bu 2
Se tarda mas tiempo en acabar el proyecto, ya que antes hay que crear el prototipo, y luego empezar a desarrollar sobre eso
.IP \(bu 2
Puede que haya complicaciones a la hora de implementar la funcionalidad en el prototipo
.RE
.ds CH Espiral
.bp
.ds RF 8
.nr PS 15
.SH
.ce 1
Espiral
.nr PS 11
.LP
El método de espiral es una mezcla entre el método de cascada y el método incremental.
Este combina los dos métodos, siguiendo unas fases preestablecidas, pero en manera dinámica y flexible, recibiendo feedback del cliente.
Es un método diseñado para grandes proyectos y para minimizar riesgos.

Como el modelo incremental, este modelo comienza con definir los requisitos mínimos mas importantes y trabaja sobre ellos. 
Después presenta el resultado al cliente, y basándonos en su opinión, se planteara la siguiente fase. 
Es aun mas flexible que el modelo incremental ya que nos deja libertad en cada fase y no solo al momento de comprobación con el cliente.
.SH
.ce 1
Fases del Modelo de Prototipado
\fR
.PS
move
[ 
box width 4 height 0
box height 4 width 0 at 1st box
arc from 2st box .se + (0, 0.4) to 2nd box .ne - (0, 0.6) <-
arc from 1st arc .end to 2nd box .sw + (0, 0.8) 
arc from 2nd arc .end to 2nd box .ne - (0, 1)
arc from 3rd arc .end to 2nd box .sw + (0, 1.2)
arc from 4th arc .end to 2nd box .ne - (0, 1.4)
arc from 5th arc .end to 2nd box .sw + (0, 1.6)
arc from 6th arc .end to 2nd box .ne - (0, 1.8)
]
"Fase de Planificación" rjust at last [].nw + (0.8, -0.5)
"Determinar Objetivos" rjust at last [].ne - (-0.6, 0.5)
"Desarrollo" rjust at last [].sw - (-0.5, -0.5)
"Identificación de Riesgos" rjust at last [].se + (0.5, 0.5)
"Revisión" rjust at last [].n + (0.29, 0.1)
.PE
.SH 
Determinar Objetivos
.LP
Al comienzo de cada ciclo, se identifica y analiza los objetivos a partir de los requisitos.
Después se elabora el plan a seguir durante este ciclo, junto con el cliente.
.SH
Identificación de Riesgos
.LP
Durante esta fase se identifican riesgos y problemas y se resuelven.
Comparado con los otros métodos aquí buscamos antes los errores y luego implementamos una solución.
Una vez eliminados los posibles errores de este ciclo se sigue a la siguiente fase.
.SH
.ds RF 9
Desarrollo
.LP
En esta fase se desarrolla una versión funcional del producto basado en el objetivo de este ciclo. 
Normalmente en el primer ciclo se desarrolla un prototipo, así que se podría decir que este método comprende metodologías inspiradas también por el método de prototipado.
.SH
Fase de Planificación
.LP
En esta ultima fase se planifica las siguientes fases y se evaluá la finalización del proyecto.
Gracias a la flexibilidad de este modelo se pueden saltar/añadir fases según lo que vea el equipo de desarrollo, y esta es la fase donde principalmente se introducen dichos cambios.
.SH
.ce 1
Ventajas y Inconvenientes
.SH
Ventajas
.LP
Este modelo tiene unas cuantas ventajas debido a que coge las mejores partes de modelos anteriores:
.RS
.IP \(bu 2
Permite el control de riesgos ya que trabaja poco a poco, buscando riesgos en todas las pequeñas partes del programa
.IP \(bu 2
El cliente obtiene lo que quiere ya que implementamos un modelo de prototipado en los primeros pasos del desarrollo
.IP \(bu 2
Tenemos flexibilidad a la hora de eligir la siguiente fase
.IP \(bu 2
Hay muchas fases donde recopilamos información, gracias a eso tendremos una documentación muy detallada del proyecto
.RE
.SH
Inconvenientes
.LP
Este método tienes unos inconvenientes relacionados con la estimación de tiempo y presupuesto:
.RS
.IP \(bu 2
Debido a la cantidad de información a recopilar y examinar, puede retrasar el desarrollo. Lo que lo lleva a nos ser tan recomendable para proyectos pequeños
.IP \(bu 2
No se puede estimar exactamente la fecha de finalización
.IP \(bu 2
Al examinar tanto los riesgos y lo optimo para el desarrollo, se requiere experiencia para que salga rentable el tiempo invertido. 
Si no puede pasar que perdamos tiempo en cosas no relevantes
.RE
.ds CH SCRUM
.bp
.ds RF 10
.nr PS 15
.SH
.ce 1
SCRUM
.nr PS 11
.LP
SCRUM es unos de los métodos de desarrollo mas famosos actualmente.
Los creadores de SCRUM lo describen como un framework ligero para encontrar soluciones a problemas complejos.
SCRUM es un método relativamente complejo y profundo a primera vista, pero se pueden detallar solo los pasos mas importantes para una descripción mas comprensible.

En pocas palabras SCRUM se basa en tener un 
.B "SCRUM Master" 
que tiene que gestionar un entorno donde: 
.IP \(bu 2
Un
.B "Product Owner"
genera y organiza trabajo a partir de un objetivo en un documento llamado 
.B "Product Backlog" .
.IP \(bu 2
El 
.B "SCRUM Team"
con el SCRUM Master eligen una pequeña parte del Product Backlog y empiezan a trabajar sobre algo que se denomina como incremento de valor(un diseño, una función, una solución de un problema, etc...). 
El SCRUM Team trabajará sobre este incremento de valor durante este
.B Sprint .
Un Sprint es un periodo de tiempo preestablecido para tener un incremento listo.
.IP \(bu 2
Al final del Sprint el SCRUM Team junto con el cliente analizan los resultados y preparan el siguiente Sprint.
.LP 
En SCRUM se usa también un método de reunión ágil conocido como 
.B "Daily SCRUM" ,
que es una reunión de 15 minutos que el SCRUM Team hace cada día para hablar de problemas encontrados y de como va el proyecto en general.
.SH
.ce 1
Fases del Modelo SCRUM
\fR
.PS
box "Requisitos"; 
box "Product Backlog" at 1st box - (0, 0.7)
box "Planteamiento" "Sprint" at 2nd box - (0, 0.7)
circle "Sprint" at 2nd box + (2, 0)
box "Incremento" "de Valor" at 1st circle + (2, 0)
box "Revisión Sprint" at 4th box - (0, 0.7)
circle "Daily" "scrum" at 1st circle .ne + (0.21, 0.21) rad 0.3 
arrow from 1st box .s to 2nd box .n
arrow from 2nd box .s to 3rd box .n
spline right 0.5 then up 0.7 from 3rd box .e to 1st circle .w ->
arrow from 1st circle .s to 1st circle .s + (0.07, 0)
arrow from 2nd circle .sw to 2nd circle .sw + (0.07, 0)
arrow from 1st circle .e to 4th box .w
arrow from 4th box .s to 5th box .n
spline down 0.4 from 5th box .s then left 4 to 3rd box .s ->
.PE
.SH
Requisitos y Product Backlog
.LP
El Product Owner crea el Product Backlog basándose en los requisitos del proyecto, en conjunto con el SCRUM Team.
El Product Backlog es donde el objetivo final es distribuido en pequeñas metas mas sencillas.
.SH 
.ds RF 11
Planteamiento Sprint
.LP
Desde el Product Backlog se eligen las metas para el Sprint que se va ha hacer. También se determina el tiempo que se va a dar para completar estas metas. Se genera un 
.B "Sprint Backlog" ,
que son metas mas pequeñas de las metas, para simplificar aun mas el trabajo.
.SH
Sprint
.LP
En el Sprint el SCRUM Team trabaja para completar el Sprint Backlog.
Cada día se hace el Daily SCRUM, para confrontar el avance del proyecto y los problemas encontrados.
.SH 
Incremento de Valor y Revisión del Sprint
.LP 
Una vez acabado el Sprint, se incorpora al producto, y, junto con el cliente se hace una revisión del Sprint, y basándonos en los resultados se plantea el siguiente Sprint; Esto se repite hasta que el Product Backlog no este acabado.
.SH
.ce 1
Ventajas y Inconvenientes
.SH
Ventajas
.LP
Debido a la estructura de SCRUM, este tiene las siguiente ventajas:
.RS
.IP \(bu 2
Un uso efectivo de tiempo y recursos
.IP \(bu 2
Una división de proyectos grandes fácil de gestionar gracias a los Sprint
.IP \(bu 2
El cliente puede dar su opinión al final de cada Sprint
.IP \(bu 2
Los Daily SCRUM hacen claros los avances de cada miembro del equipo y evidencian problemas
.IP \(bu 2
Permite la rápida implementación de una función al finalizar cada Sprint
.RE
.SH
Inconvenientes
.LP
Por cada ventaja que tiene el método SCRUM, tiene algunos inconvenientes que no es difícil que ocurran en su implementación: 
.RS
.IP \(bu 2
No hay una visión clara de una fecha limite
.IP \(bu 2
Si los miembros del equipo no participan se pierde mucha efectividad
.IP \(bu 2
Adoptarlo en grupos grandes es difícil. Seria mejor tener mas grupos pequeños
.IP \(bu 2
Si no se utiliza validación agresiva del código, es probable que la calidad se vea afectada
.RE
.ds CH Conclusión
.bp
.ds RF 12
.nr PS 15
.SH
.ce 1
Conclusión
.nr PS 11
.LP
Hemos visto diferentes metodologías, y en conclusión creo que podemos coincidir que en el ámbito de desarrollo de software, las metodologías ágiles hacen el proceso mucho mas flexible y dan un mejor resultado comparadas con las tradicionales.
Dentro de las metodologías ágiles, deberemos mirar nuestro caso en concreto para determinar cual usar, aunque podemos observar que todas siguen la misma idea de desarrollar poco a poco y valuando la opinión del cliente.

Lo que se puede hacer sabiendo las desventajas de cada método es juntar métodos como hace el método de espiral para intentar disminuir desventajas. Esto también dependerá de caso a caso.
.nr PS 15
.SH
.ce 1
Bibliografía
.nr PS 11
.SH
Metodologías
.IP
https://www.becas-santander.com/es/blog/metodologias-desarrollo-software.html
.IP
https://www.kpipartners.com/blog/traditional-vs-agile-software-development-methodologies
.SH
Cascada
.IP
https://www.whatissixsigma.net/development-methodologies/
.IP
https://www.crehana.com/mx/blog/desarrollo-web/modelo-en-cascada/
.SH
Incremental
.IP
https://www.guru99.com/what-is-incremental-model-in-sdlc-advantages-disadvantages.html
.IP
https://www.educba.com/incremental-model/
.IP
https://www.obsbusiness.school/blog/caracteristicas-y-fases-del-modelo-incremental
.SH
Prototipado
.IP
https://www.hostingplus.cl/blog/modelo-de-prototipos-que-es-y-cuales-son-sus-etapas/
.IP
https://www.javatpoint.com/prototype-model
.IP
https://www.educba.com/prototype-model/
.SH
Espiral
.IP
https://www.tecnologias-informacion.com/metodo-espiral.html
.IP
https://en.wikipedia.org/wiki/Spiral_model
.IP
https://www.guru99.com/what-is-spiral-model-when-to-use-advantages-disadvantages.html
.SH
SCRUM
.IP
https://www.scrum.org/resources/what-is-scrum
.IP
https://www.simplilearn.com/scrum-project-management-article
