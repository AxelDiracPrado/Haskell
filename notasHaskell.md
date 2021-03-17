# Algunas notas sobre Haskell.  
  
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
	* 
13.- Un función prefija foo puede ponerse infija si se encierra entre "`foo`", por ejemplo:  
     "a `foo` b = foo a b".  
14.- Los rangos se usan para crear listas con una secuencia aritmética de elementos enumerables.

