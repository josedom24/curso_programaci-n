//Programa que lea 3 datos de entrada A, B y C. Estos corresponden a las dimensiones de los lados de un tri�ngulo. 
//El programa debe determinar que tipo de triangulo es, teniendo en cuenta los siguiente:
//Si se cumple Pit�goras entonces es tri�ngulo rect�ngulo
//Si s�lo dos lados del tri�ngulo son iguales entonces es is�sceles.
//Si los 3 lados son iguales entonces es equil�tero.
//Si no se cumple ninguna de las condiciones anteriores, es escaleno.
// An�lisis
// Pedir la medida de los tres lados de un triangulo:
// Si se cumple el teorema de pitagoras es un triangulo rectangulo
// Adem�s, si tienes dos lados iguales y uno desigual, es is�sceles
// O si tiene todos los lados iguales es equilatero
// o si son los tres distintos es escaleno.
// Datos de entrada: los tres lados del triangulo (real)
// Informaci�n de salida: Tipo de rectangulo
// Variables: ladoA, ladoB, ladoC (real)
// Dise�o
// 1.Leer ladoA, ladoB, ladoC
// 2.Si se cumple el teorema de pitagoras ( tenemos que suponer que cualquier lado puede ser la hipotenusa) mostrar "Triangulo rectangulo"
// 3.Si tiene dos lados iguales y uno desigual mostrar "Triangulo Is�sceles"
// 4. En otro caso, si tiene los tres lados iguales, mostrar "Triangulo Equilatero"
// 5. En otro caso, mostrar "Triangulo Escaleno"

// Ejemplos
//(3,4,5) rectangulo,escaleno
//(7,7,9.8994949366117) rectangulo,is�sceles

Proceso TipoTriangulo
	Definir ladoA,ladoB,ladoC Como Real;
	Escribir Sin Saltar "Introduce longitud lado A:";
	Leer ladoA;
	Escribir Sin Saltar "Introduce longitud lado B:";
	Leer ladoB;
	Escribir Sin Saltar "Introduce longitud lado C:";
	Leer ladoC;
	
	//Pit�goras
	Si ladoA^2+ladoB^2 = ladoC^2 O ladoB^2+ladoC^2 = ladoA^2 O ladoC^2+ladoA^2 = ladoB^2 Entonces
		Escribir "Triangulo Rectangulo";
	FinSi
	//is�sceles
	Si (ladoA=ladoB y ladoA<>ladoC) O (ladoB=ladoC y ladoB<>ladoA) O (ladoC=ladoA y ladoC<>ladoB) Entonces
		Escribir "Triangulo Is�sceles";
	SiNo
		//equil�tero
		Si ladoA=ladoB Y ladoA=ladoC Entonces
			Escribir "Triangulo Equilatero";
		SiNo
			Escribir "Triangulo Escaleno";
		FinSi
	FinSi
FinProceso
