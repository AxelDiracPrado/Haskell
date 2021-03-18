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


