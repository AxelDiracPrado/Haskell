# Algunas notas sobre Haskell.  

## Algo de listas, tuplas y operadores en Haskell.
    
1.- El operadon "/=" representa la relación de diferente.  
2.- Los argumentos de una función no van entre paréntesis como en otros lenguajes.  
3.- Para cargar un script foo.hs, escribimos ":l foo.hs" dentro de ghci, con esto  
    podemos cargar todas las funciones del script.  
4.- La expresión "if P then a else b" regresa una expresión (valor) lo cual diferencia  
    a haskell de otros lenguajes pues en los otros es una condición de ejecución.  
5.- El nombre de una función no debe empezar en mayúsculas.  
6.- Las funciones sin argumentos se les llama definiciones o nombres y no pueden ser  
    cambiadas, es decir, no son variables como en otros lenguajes.  
7.- En ghci, la expresión "let a = algo" hace que a sea un identificador para ese algo  
    que puede ser una lista, una cadena, o algún otro tipo.  
8.- Si L1, L2 son listas, al aplicar L1 ++ L2, internamente, Haskell tiene que recorrer  
    la lista entera desde la parte izquierda del operador ++.  
9.- Los caracteres se escriben entre comilla simple: 'a' es un ejemplo.  
10.- Si L1 es una lista e i>=0, la operación "L1 !! i" regresa el elemento de la lista   
     en la posición i (como los arreglos en otros lenguajes).  
11.- Las listas pueden ser comparadas con <,>=,>,>=, pero las comparaciones se hacen  
     Lexicograficamente, es decir, primero se comparan las cabezas, luego los segundos  
     elementos y asi sucesivamente.    
12.- Funciones importantes sobre listas:    
	* head: regresa la cabeza de una lista.    
	* tail: regresa la cola de la lista (la cual es una lista sin la cabeza original).  
	* last: regresa el último elemento de una lista.  
	* init: regresa una lista sin el último elemento de la lista original.  
		(Estas funciones lanzan una excepción si se usan con la lista vacía).    
	* length: regresa el tamaño de una lista.  
	* null: regresa Treu si la lista es vacía, False en caso contrario.    
	* reverse: Pone del revés la lista.  
	* take: toma un entero i y una lista L1 y regresa la lista con los primeros i  
	  elementos de L1.  
	* drop: toma u entero i y una lista L1 y elimina los primeros i elementos de  
    	  L1.  
	* maximum: toma una lista L1 cuyos elementos son del tipo que se pueden ordenar,  
 	  devuelve el elemento "más grande".  
	* minimum: similar a maximum pero devuelve el "más pequeño".  
	* sum:  toma una lista de números y devuelve su suma.
	* product: toma una lista de números y devuelve su producto.  
	* elem:  toma un valor de tipo comparable y una lista de tipos comparables y nos  
 	  indica si dicho valor es miembro de la lista.     
    * replicate: tomoa un elemento y un entero, regresa una lista con el elemento repetido  
      tantas veces como indica el entero.  
13.- Un función prefija foo puede ponerse infija si se encierra entre "`foo`", por ejemplo:  
     "a `foo` b = foo a b".  
14.- Los rangos se usan para crear listas con una secuencia aritmética de elementos enumerables.  
     Por ejemplo: los números del 1 al 20: "[1..20]".    
15.- Se pueden especificar el número de pasos entre elementos de un rango, por ejemplo:   
     números pares menores o iguale a 20 "[2,4..20]".  
16.- Algunas funciones para crear listas infinitas:    
    * cycle: toma una lista y crea un ciclo de listas iguales infinito.    
    * repeat: toma un elemento y produce una lista infinita con solo ese elemento.    
17.- Listas intencionales o por comprensión son las listas que se crean con una expresión de   
     salida, un predicado que indica de donde tomar los argumentos de la función de salida    
     y una condición que expresa que elementos compondrán la lista, por ejemplo:  
     "[x*2 | x <- [1..10], x*2 >= 12]".  
18.- Las tuplas son estructuras similares a las listas, la diferencia radica en que las listas  
     son homogéneas pero las tuplas pueden almacenar componentes de diferente tipo. Las tuplas  
     se denotan con paréntesis y sus elementos se separan por comas.  
19.- Podemos meter tuplas a una lista siempre y cuando todas las tuplas sean de la misma  
     dimensión y sean igualemnte heterogéneas.   
20.- Si m /= n, enotnces una n-tupla es de diferente tipo que una  m-tupla.  
21.- Si dos tuplas no alamcenan los mismos tipos en el mismo orden, entonces no son del mismo tipo.  
22.- Dos tuplas pueden ser comparadas si sus elementos pueden ser comparados. Dos tuplas de   
     diferente tamaño no pueden ser comparadas.
23.- Algunas funciones sobre tuplas:
    * fst: toma una tupla y devuelve su primer elemento.    
    * snd: toma una tupla y devuelve su segunda componente.    
        (Nota: Estas dos funciones funcionan solo con duplas).
    * zip: recibe dos listas y forma una lista de duplas con los elementos de cada dupla.  
      Ejemplo: "zip [1,2,3] ["uno","dos","tres"] = [(1,"uno"),(2,"dos"),(3,"tres")]"  

## Algo sobre tipos.
1.- Los tipos son como etiquetas parqa categorizar las expresiones. La etiqueta nos dice a que  
    categoría de cosas se ajusta una expresión.  
2.- Para conocer el tipo de una expresión usamos, en ghci, el comando ":t" seguido de la expresión.  
    El símbolo "::" puede leerse como "tiene el tipo".  
3.- Los tipos explícitos (como los tipos básicos) se identifican con un nombre que incia en  
    mayúscula, por ejemplo: Char.  
4.- Tipos como listas o tuplas llevan dentro el tipo que almacenan, por ejemplo, [Char] representa  
    una lista de chars, (Bool, Char) representa una tupla que almacena un Bool y un Char.  
5.- Las funciones en Haskell son consideradas expresione y por tanto también se les puede declarar  
    explícitamente un tipo, por ejemplo: "foo :: Char -> Char".  
6.- Para expresar el tipo de una función de varios parámetros hacemos como sigue: Si es una función  
    de tres parámetros: "foo :: Char -> Char -> Char -> [char]". El último elemnto es la sálida de  
    la función.  
7.- Los siguientes son algunos tipos básicos en Haskell:
	* Int: representa enteros acotados.  
	* Integer: representa enteros no acotados, o el equivalente a "long int".  
	* Float: número real o flotante de precisión simple.  
	* Double: número real o flotante de doble precisión.  
	* Bool: representa al tipo booleano, solo tienen dos valores: True y Flase.  
	* Char: representa a los caracteres y se definen con comilla simple: 'a'.  
8.- Hay funciones cuyo tipo se representa con una letra "a", por ejemplo "head :: [a] -> a". A "a"  
    se le conoce como variable de tipo y sirve para definir funciones polimorficas, es decir, que    
    que funcionan con cualquier tipo. las varibles de tipo son como los génericos de Java.  
9.- Una clase de tipo define el comportamiento de un tipo. Si un tipo pertenece a una clase de tipos    
    entonces  ese tipo  soporta e implementa ese comportamiento definido por la clase de tipos.  
    Una clase de tipos es como una interfaz de Java que define un comportamiento.  
10.- Para declarar que un tipo pertenece "a" pertenece a la clase de tipos A, en la declaración de  
     tipos de una función, después de "::" se pone "(A a) =>" luego se pone la definición de   
     argumentos y sálida. Lo que esta a la izquierda de "=>" es una restricción de clase.  
11.- Las siguientes son algunas clases de tipos en Haskell:
	* Eq: define el comportamiento de los tipos que soportan comparaciones por igualdad.   
	* Ord: define el comportamiento de los tipos que soportan algún orden.  
	  La función compare toma dos mienbros de Ord y regresa un elemento del tipo Ordering.
  	  El tipo Ordering consta de 3 valores distintos GT (mayor que), EQ (igual que) y  
	  LT (menor que). Para pertenecer a Ord hay que ser miembro de Eq.    
	* Show: define el comprtamiento de los tipos que pueden ser representados por cadenas.
	  Es parecido a "toString" de Java.  
	* Read: define el comportamiento de los tipos cuya representación en cadena puede  
          transformarse en su tipo, por ejemplo cuando se usa la función read. La función read  
	  debe ir acompañada siempre de una función del tipo que lee para que el compilador  
	  infiera el tipo, por ejemplo: read "5" + 1 regresa el valor 6.  
	Nota: vemos que read por si sola devuelve un error, es decir, en Haskell, "read "5""  
	      provoca un error de compilación. Para resolver este problema se usan anotaciones   
	      de tipo las cuales le indican al compilador cual es tipo que quiere que regrese:    
	      "read "5" :: Int" le dice al compilador que read debe regresar el Int 5.    
	* Enum: define el comportamiento de los tipos secuencialmente ordenados, es decir, que  
	  pueden ser ordenados.  
	* Bounded: define el comportamiento de los tipos que tienen límites inferiores y   
	  superiores, es decir, están acotados.    
	* Num: define el comportamiento de los tipos numéricos, es decir, los que se pueden   
	  comportar como números.  
	* Integral: define el comportamiento de los tipos que se pueden comportar como números  
	  enteros.   
	* Floating: define el comportamiento de los tipos que se pueden comportar como números  
	  en coma flotante.  

## Sintaxis de las funciones.  
1.- En la definición de las funciones, se puede separar el cuerpo de la función en varías partes  
    dependiendo del o de los argumentos. Para ello escribimos en diferentes lineas el   
    el comportamiento de la función cuando recibe ciertos argumentos. Este proceso de dividir el  
    cuerpo de una función permite ahorrar el uso de if-else y forma parte de lo que se conoce como  
    ajuste de patrones.  
2.- El ajuste de patrones se refiere a cuando se tiene una función con diferentes cuerpos evaluando 
    diferentes patrones de argumentos. Cuando se manda  a llamar la función con ciertos argumentos,
    se evalúa el cuerpo que se ajuste al patrón de los argumentos.  
3.- Es conveniente escribir primero los cuerpos de la función con los patrones de argumentos   
    más específicos y dejar al final los más generales.    
4.- Cuando utilizamos patrones siempre tenemos que incluir uno general para asegurarnos que   
    nuestro programa no fallará.    
	Nota: Variables ligadas por ":" en un argumento, deben ser rodeadas por paréntesis.    
		la función "error" recibe una cadena y genera un error en tiempo de ejecución.    
5.- as pattern es un patrón que etiqueta un argumento dividido como un todo. Se usa "@" para usarlo.  
    por ejemplo xs@x:y:ys indica que xs hace referencia a la lista x:y:ys como un todo.  
6.- Guardas son una forma de comprobar si una propiedad de un valor o varios de ellos cumplen   
    es verdadera o flasa. Es similar a usar if's repetidas veces con la conveniencia de que los  
    guardas son más legibles. Se usan barras verticales "|" seguido de una expresión que ha de cumplir  
    o no el argumento. Los guardas van con sangría y alineados.    
7.- Regularmente los guardas terminan con "otherwise" que acepta todo.   
8.- "where" es una palabra reservada que sirve para asignar identificadores a algunas expresiones    
    dentro de las funciones. Se coloca al final de las funciones y liga variables a expresiones.  
    todas las asignaciones deben ir bien alineadas:     
     where bmi = weight / height ^ 2
           skinny = 18.5
           normal = 25.0
           fat = 30.0    
9.- "let-in" permite ligar variables en cualquier lugar de las funciones, son muy locales en el sentido  
     de que no son tranbsferibles entre guardas. La sintaxis es "let <definición de las variables> in <expresión>".  
     Las variables definidas en let <definición> son accesibles en in <expresión>.   
10.- where hace definiciones sintáctica por lo que no define expresiones. let-in si define expresiones por lo que   
     como tal, puede ser usada como expresión.  
11.- La expresión case-of es similar a usar diferentes cuerpos de una función, su sintaxis es: 
     case expresion of patron -> resultado
                       patron -> resultado
                       patron -> resultado
                       ...    
12.- se puede usar let dentro de una lista intensional como si fuera un predicado, solo que no filtra los  
     elementos, únicamente liga variables.  
13.- case es igual una expresión y puede ser usado como argumento de alguna otra operación.

## Funciones de orden superior.
1.- Un función en haskell puede recibir como parámetros funciones y/o devolver una función.  
    Una función de orden superior es aquella que que que recibe como parámetros funciones y/o  
    devuelve una función.  
2.- En haskell, las funciones solo pueden tomar un parámetro, las funciones que se definen con más de un  
    parámetro son funciones currificadas.  
3.- Una ejemplo de función currificada es "max :: (Ord a) => a -> a -> a". Lo que en realidad hace max es  
    tomar un valor del tipo a y regresa que toma algo de a y regresa algo de a. Por ejemplo:  " max 3 4"  
    en realidad se ve como (max 3) 4, donde max 3 en realidad es una función que toma como valor el 4.  
    "a -> a -> a" puede verse como "a -> (a -> a)".  
4.- Cuandose llama a funciones con menos parámetros de los necesarios, lo que se hace es definir funciones al vuelo.  
5.- Para definir una función como parámetro, su tipo debe ser rodeado por paréntesis, por ejemplo:  
    foo :: (a -> a) -> a, esto toma una función qua toma algo y regresa algo del mismo tipo y regresa algo del mismo tipo.   
6.- Las funciones infijas pueden igualmente ser aplicadas parcialmente para usar la propiedad de currificación.  
    Para aplicar parcialmente una fucnión infija, rodeamos la función con paréntesis y colocamos algún argumento  
    en alguno de sus lados, esto se conoce como seccionar: por ejemplo, "*" se secciona como "(2*)" o "(*7)".  
7.- Las funciones no tienen el comportamiento definido por la clase de tipos Show por lo que no pueden tener  
    representación en cadena.  
8.- Las ** Lambdas ** son funciones anónimas que suelen ser usadas cuando necesitamos una función una sola vez.  
    Para definir lambdas se usa "\" seguido de los parámetros separados por espacios, luego se usa "->" seguido  
    del cuerpo de la función. Las lambdas se encierran en paréntesis.    
9.- Pliegues son funciones que toman una función binaria f, un valor inicial o acumulador y una lista que plegar.  
    La función binaria toma dos parámetros, el primero es el acumulador y el segundo el primer elemento de la lista.  
    La función binaria actualiza el acumulador produciendo un nuevo acumulador, después la función binaria se  
    vuelve a llamar junto con el nuevo acumulador y el nuevo primer elemento de la lista. Cuando se acaba la lista,  
    se terminan las llamadas a la función binaria.  
10.- Existe el pliegue por la izaquierda "foldl" que consume una lista empezando por la izquierda, también  
     existe el pliegue por la derecha que consuyme la lista por la derecha.  
11.- Para los pliegues por la derecha, en la función binaria, el primer parámetro es el valor consumido de la lista  
     y el segundo parámetro es el acumulador.  
12.- El acumulador puede ser de cualquier tipo, como entero, lista, tupla, etc.  
13.- scanl y scanr son como foldl y foldr, solo que devuelven todos los acumuladores intermedios en forma de lista.  
14.- La función "$" se le llama aplicación de una función, toma una función con firma "a -> b" y algo de tipo a y regresa  
     la aplicación de la función al algo.  
15.- La aplicación explícita de una función tiene la más alta precedencia mientras que "$" tiene las más baja  
     precedencia.  
16.- La aplicación explícita de una función es asociativa a la izquierda mientras que "$" es asociativa a la derecha.  
17.- "$" puede considerarse como una parémtesis abierto que agrega encierra a toda la expresión a al derecha de él.  
18.- Composición de funciones con el operador ".". La composición tiene la siguiente firma:  
     (.) :: (b -> c) -> (a -> b) -> a -> c  
     f . g = \x -> f (g x)  

## Módulos en Haskell  

1.- Un módulo en haskell es una colección de funciones, tipos y clases de tipos relacionados  
    entre sí.  
2.- El módulo Prelude es el módulo importado por defecto y contien los tipos básicos y clases  
    de tipos más usados.  
3.- Es recomendable dividir un programa en haskell en módulos debilmente acoplados para su futura  
    reutilización.  
4.- La sintaxis para importar módulos en haskell es: import <nombreDelModulo>.  
5.- La importación de módulos debe realizarse antes de que se use una función definida en ese    
    módulo.  
6.- En ghci usamos ":m + <nombreDelModulo>" para cargar módulos.  
7.- Cuando se quiere importar solo algunas funciones de un módulo se usa:  
    "import <nombreDelMódulo> (funcion1, funión2, ...)"  
8.- Si queremos importar casí todas las funciones de un módulo excepto algunas, usamos:  
    "import <nombreDelMódulo> hiding (función1, función2,...).  
9.- Hay situaciones en que ocurre una colisión entre funciones, es decir, una función f del módulo
    M1 se llaman igual (aunque puede diferir en comportamiento) que la función f del módulo M2, en   
    este caso usamos:  
    "import qualified M1 M2" y para llamar a la funciones se usa "M1.f" o ""M2.f".  
10.- Podemos renombra un módulo como:  
     " import qualified M as N"  
11.- Algunos módulos de haskell son:  
    a) Data.List: Contiene funciones para manejar listas, algunas de ellas ya las carga Prelude.  
	* intersperse: toma un elemento y una lista, pone ese elemento entre cada par de elementos  
   	  de la lista.   
	* intercalate: toma una lista y una listas de listas. Inserta la primera lista entre todas  
          las demás listas, dando como resultado una única lista.    
        * transpose: transpone una lista de listas. Si miras la lista de listas como una matriz 2D,  
          las columnas se convierten en filas y viceversa.
	* concat aplana una lista de listas en una simple lista con los mismos elementos.  
	* foldl' y foldl1': son versiones estrictas de sus respectivas versiones perezosas. Cuando  
          usamos pliegues perezosos sobre listas muy grandes solemos obtener errores de desbordamiento de pila.   
	* concatMap: es lo mismo que hacer primero un mapeado con una función a una lista y concatenar  
          todos los resultados.  
	* and: toma una lista de booleanos y devuelve True solo si todos los elementos de la lista son True.  
	  or es como and solo que devuelve True solo si existe algún elemento True en la lista.  
	* any y all: toman un predicado y una lista y comprueban si el predicado se satisface para algún o  
          para todos los elementos respectivamente.   
 	* splitAt: toma un número y una lista. Luego divide la lista por el índice indicado y devuelve  
          una dupla con ambas listas.  
	* Muchas más, ver "Aprende haskel por el bien de todos".  


