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
Proyecto Fondo Sur
.AU \" author
Samuele Tonarini 
Erik Pardillo Chamorro
Josep Serra Vives
.AI \" institute
.ND 12 Junio 2022
CIFP Francesc de Borja Moll
.ds LH \D't 0.2p'\v'1.5'\l'7i'\v'-0.5'\h'-7i'12/11/2021\D't 0.5p' \" left header (from 2nd page)
.ds CH Proyecto Fondo Sur \" center header (from 2nd page)
.ds RH CIFP Francesc de Borja Moll \" right header (from 2nd page)
.ds LF \D't 0.2p'\v'-0.5'\l'7i'\v'1'\h'-7i'Samuele Tonarini, Erik Pardillo, Josep Serra\D't 0.5p' \" left footer
.ds RF i \" right footer
.ds TOC Tabla de Contenidos \" index name
.XS 1
Introducción
.XA 2
Modelo Entidad Relación
.XA 3
Modelo Relacional
.XA 6
Normalización
.XA 7
Conclusión
.XE
.PX
.ds CH Introducción 
.bp
.ds RF 1 
.nr PS 15
.SH
.ce 1
Introducción
.LP
.nr PS 11
.LP
El Fondo Sur™ ha encargado un aplicación móvil que les permita gestionar diferentes asuntos escolares. Necesitan una aplicación
que pueda decirles que tareas tienen que entregar, además de poder calcular la nota final de cada asignatura, y decirles
cuanto tienen que sacar en el siguiente examen para que sume 5 y estar aprobados.

.LP
Las tareas que se deberán notificar serán los exámenes, reuniones y charlas obligatorias y tareas entregables; NO se tendrán
en cuenta charlas opcionales y tareas no entregables.

.LP 
También necesitan que la aplicación tenga en cuenta las faltas de los alumnos del fondo sur de las diferentes asignaturas,
y que les diga cuantas horas pueden faltar aun, teniendo en cuenta que el tiempo máximo de faltas sin justificar es el 10%
de cada asignatura.

.LP 
Tendrán también que saber cuando no hay clase por fiestas; Además de tener un horario semanal, para saber que asignatura
tienen en una determinada hora de un determinado día.

.LP
Este proyecto engloba la realización de la base de datos, el modelo entidad relación y su paso a relacional, además de comentarios
sobre la normalización. No se ha realizado la parte de Entornos de Desarrollo por falta de tiempo.
.ds CH Modelo Entidad Relación
.bp
.ds RF 2
.nr PS 15
.SH
.ce 1
Modelo Entidad Relación
.PDFPIC "monke.pdf"
.nr PS 11
.LP
Aquí podemos observar el MER de lo que va a ser nuestra base de datos.

Se pueden observar las dos entidades más importantes, Asignatura y Monke Sureño,
que tendrán relación con las tablas de Faltas y de Notas Finales, para saber las
faltas de cada Monke en cuál asignatura y su nota final en que asignatura.

.LP
También podemos observar la herencia de Entrega, que será una herencia de tipo
{ M, XOR }, donde los hijos tendrán o bien un Monke que hace la entrega, o bien
el ID de un grupo de Monkes.

.LP
Por último observamos las tablas de horario escolar, que tendrá una asignatura asignada,
y la tabla de días festivos, donde se guardaran los días festivos del centro.
.ds CH Modelo Relación
.bp
.ds RF 3 
.nr PS 15
.SH
.ce 1
Modelo Relación
.nr PS 11
.LP
.SH
.ce 1
Paso 1 y 2.
.LP
Escoger una clave principal para cada entidad/relación/tabla. Cada una de las entidades del modelo relacional se convierte en una tabla/relación del modelo relacional.

.B "Horario Semanal"
(#dia, hora_inicio, hora_fin)
.LP
.B Asignatura
(#nombre, horas nom_profesor)
.LP
.B Faltas
(#id,horas,fecha,justificadas)
.LP
.B Persona 
(#nick, nombre, posición_gerarquica, IQ)
.LP
.B "Nota Final"
(#ID, valor, horas_faltadas, comentario)
.LP
.B "Entrega Individual"
.LP
.B "Entrega Grupal"
.LP
.B Grupo
(#id, group_id)
.LP
.B Entrega
(#Nombre, fecha, enunciado, tipo, puntuación, valor_En_porcentaje)
.LP
.B "Dias Festivos"
(#dia, motivo)

.LP
.SH
.ce 1
Paso 3.
.LP
Cada una de las relaciones del modelo relacional se convierte en una tabla/relación del modelo relacional, con sus atributos más las claves de las entidades que relaciona

.B R_HorarioSemanal_Asignatura
(#dia, #nombre)
.LP
.B R_Asignatura_Faltas
(#nombre, #id )
.LP
.B R_Asignatura_NotaFinal
(#id, #id)
.LP
.B R_Faltas_Persona
(#id, #nick)
.LP
.B R_NotaFinal_Persona
(#id, #nick)
.LP
.B R_Persona_EntregaIndividual
(#nick, )
.LP
.B R_persona_Grupo
(#nick, #id)
.LP
.B R_Grupo_EntregaGrupal
(#id, )

.LP
.SH
.ce 1
Paso 4.
.LP
Se elige una clave principal para cada una de las nuevas relaciones/tablas
∙ Si se tiene una relación 0/1..1 - 0/1..1 se elige cualquiera de las PK. 
∙ Si se tiene una relación 0/1..* - 0/1..1 se elige la PK del *
∙ Si se tiene una relación 0/1..* - 0/1..* se elige como PK las dos PK juntas

.B R_horarioSemanal_Asignatura
(#dia, #nombre )
.LP
.B R_Asignatura_Faltas
(#nombre, #idFaltas)
.LP
.B R_Asignatura_NotaFinal
(#nombre, #idNotaFinal)
.LP
.B R_Faltas_Persona
(#idFaltas, #nick)
.LP
.B R_NotaFinal_Persona
(#idNotaFinal, #nick)
.LP
.B R_Persona_EntregaIndividual
(#nick, #idEntergaIndividual)
.LP
.B R_persona_Grupo
(#nick, #idGrupo)
.LP
.B R_Grupo_EntregaGrupal
(#idGrupo, #IdEntregaGrupal)
.ds RF 4

.LP
.SH
.ce 1
Paso 5. 
.LP
Se estudia la posibilidad de “fusionar” algunas de las tablas/relaciones resultantes. Las candidatas son las que tienen la misma clave sin embargo, hay que tener en cuenta su significado y la conveniencia.

.B "Horario Semanal"
(#dia, hora_inicio, hora_fin, #nombre)
.LP
.B Asignatura
(#nombre, horas nom_profesor)
.LP
.B Faltas
(#id,horas,fecha,justificadas, #nombre, #nick)
.LP
.B Persona 
(#nick, nombre, posición_gerarquica, IQ)
.LP
.B "Nota Final"
(#ID, valor, horas_faltadas, comentario, #nombre, #nick)
.LP
.B "Entrega Individual"
(#nick)
.LP
.B Grupo
(#id, group_id, #nick)
.LP
.B "Entrega Grupal"
(#id)
.LP
.B Entrega
(#Nombre, fecha, enunciado, tipo, puntuación, valor_En_porcentaje)
.LP
.B "Dias Festivos"
(#dia, motivo)

.LP
.SH
.ce 1
HERENCIA
.LP
Al ser un {M,XOR} podemos escoger entre 3 opciones:

Opción1
• Crear una relación L para C con atributos Atributos(L)={K, A1, ..., An} y PK(L)=K
• Crear una relación Li para cada subclase Si, 1≤ i ≤ m, con atributos Atributos(Li)={K} U {Atributos(Si)} y PK(Li)=K 
• Opción siempre válida

Opción 2 
• Crear una relación Li para cada subclase Si, 1≤ i ≤ m con atributos Atributos(Li)= {K, A1, ..., An} U {Atributos(Si)} y PK(Li)=K
• Solo funciona bien para {M, XOR}
• Si no es XOR hay valores repetidos en las subclases por los atributos heredados. 
• Si no es M, la entidad que no pertenece a ninguna subclase se pierde.

Opcion3 
• Crear una sola relación L con atributos Atributos(L)={K, A1, ..., An} U {Atributos(S1)} U ... U {Atributos(Sm)} U { T } y PK(L)=K 
• Opción cuando las subclases son XOR, siendo T un atributo que indica la subclase a la que pertenece cada tupla. ¡¡¡Si hay muchos atributos genera muchos NULL!!!
• No recomendada si las subclases tienen muchos atributos.

Hemos decidido escoger la opción 2. 

.B "Entrega Individual"
(#Nombre, fecha, enunciado, tipo, puntuación, valor_en_porcentaje, #nick)
.LP
.B "Entrega Grupal"
(#Nombre, fecha, enunciado, tipo, puntuación, valor_en_porcentaje, #id)
.ds RF 5
.ds CH Normalización
.bp 
.ds RF 6
.nr PS 15
.SH
.ce 1
Normalización
.LP
.nr PS 11
.LP
Las tablas han sido pensadas desde el principio como tablas de bases de datos,
así que poco nos queda en la normalización.

Lo único que podríamos mencionar es el atributo nom_profesor de la tabla asignatura,
que podría ser sacado a una tabla profesor en conjunto con más información sobre
ese determinado profesor.
.ds CH Conclusión
.bp 
.ds RF 7
.nr PS 15
.SH
.ce 1
Conclusión
.LP
.nr PS 11
.LP
En este proyecto hemos visto el diseño de una base de datos para una aplicación
de gestión. En esta base de datos se puede encontrar bastante información para
cumplir con las diferentes demandas de nuestro cliente.

En el diseño también sé tubo en cuenta algunos detalles para el eventual pintado de esta
aplicación, además de que muchos de los datos vendrán calculados por la aplicación en sí.
