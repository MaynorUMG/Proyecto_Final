Algoritmo CalculadoraAvanzada
    Definir opcion, n, m, i, j, num, cantidadNumeros, arribaPromedio, abajoPromedio Como Entero;
    Definir suma, promedio, mayor, menor Como Real;
    Definir matriz1, matriz2, matrizResultado Como Entero;
    Definir numeros Como Real;
    
    Repetir
        Escribir "==== MEN� PRINCIPAL ====";
        Escribir "1. Suma";
        Escribir "2. Resta";
        Escribir "3. Multiplicaci�n";
        Escribir "4. Divisi�n";
        Escribir "5. Sumar todos los valores de la matriz";
        Escribir "6. Restar todos los valores de la matriz";
        Escribir "7. Suma de matrices";
        Escribir "8. Resta de matrices";
        Escribir "9. Tri�ngulo con n�meros";
        Escribir "10. Rect�ngulo con asteriscos";
        Escribir "11. Estad�sticas en una lista de n�meros";
        Escribir "0. Salir";
        Escribir "Seleccione una opci�n: ";
        Leer opcion;
        
        Segun opcion Hacer
            1: 
                Escribir "Ingrese primer n�mero: ";
                Leer n;
                Escribir "Ingrese segundo n�mero: ";
                Leer m;
                Escribir "Resultado: ", n + m;
                
            2: 
                Escribir "Ingrese primer n�mero: ";
                Leer n;
                Escribir "Ingrese segundo n�mero: ";
                Leer m;
                Escribir "Resultado: ", n - m;
                
            3: 
                Escribir "Ingrese primer n�mero: ";
                Leer n;
                Escribir "Ingrese segundo n�mero: ";
                Leer m;
                Escribir "Resultado: ", n * m;
                
            4: 
                Escribir "Ingrese dividendo: ";
                Leer n;
                Escribir "Ingrese divisor: ";
                Leer m;
                Si m <> 0 Entonces;
                    Escribir "Resultado: ", n / m;
                Sino
                    Escribir "Error: No se puede dividir por cero";
                FinSi
                
            5: 
                Repetir
                    Escribir "Ingrese tama�o de la matriz cuadrada (n x n, m�ximo 5): ";
                    Leer n;
                    Si n <= 0 O n > 5 Entonces
                        Escribir "Tama�o no v�lido. Debe ser entre 1 y 5.";
                    FinSi
                Hasta Que n > 0 Y n <= 5
                
                Dimension matriz1[n, n];
                suma <- 0;
                
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Escribir "Ingrese valor para [", i, ",", j, "]: ";
                        Leer matriz1[i, j];
                        suma <- suma + matriz1[i, j];
                    FinPara
                FinPara
                
                Escribir "La suma de todos los elementos es: ", suma;
                
            6: 
                Repetir
                    Escribir "Ingrese tama�o de la matriz cuadrada (n x n, m�ximo 5): ";
                    Leer n;
                    Si n <= 0 O n > 5 Entonces
                        Escribir "Tama�o no v�lido. Debe ser entre 1 y 5.";
                    FinSi
                Hasta Que n > 0 Y n <= 5
                
                Dimension matriz1[n, n];
                suma <- 0;
                
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Escribir "Ingrese valor para [", i, ",", j, "]: ";
                        Leer matriz1[i, j];
                        Si i = 1 Y j = 1 Entonces
                            suma <- matriz1[i, j];
                        Sino
                            suma <- suma - matriz1[i, j];
                        FinSi
                    FinPara
                FinPara
                
                Escribir "La resta de todos los elementos es: ", suma;
                
            7: 
                Repetir
                    Escribir "Ingrese tama�o de las matrices cuadradas (n x n, m�ximo 5): ";
                    Leer n;
                    Si n <= 0 O n > 5 Entonces
                        Escribir "Tama�o no v�lido. Debe ser entre 1 y 5.";
                    FinSi
                Hasta Que n > 0 Y n <= 5
                
                Dimension matriz1[n, n];
                Dimension matriz2[n, n];
                Dimension matrizResultado[n, n];
                
                Escribir "Ingrese valores para la primera matriz:";
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Escribir "Ingrese valor para [", i, ",", j, "]: ";
                        Leer matriz1[i, j];
                    FinPara
                FinPara
                
                Escribir "Ingrese valores para la segunda matriz:";
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Escribir "Ingrese valor para [", i, ",", j, "]: ";
                        Leer matriz2[i, j];
                    FinPara
                FinPara
                
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        matrizResultado[i, j] <- matriz1[i, j] + matriz2[i, j];
                    FinPara
                FinPara
                
                Escribir "Resultado de la suma:";
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Escribir Sin Saltar matrizResultado[i, j], " ";
                    FinPara
                    Escribir "";
                FinPara
                
            8: 
                Repetir
                    Escribir "Ingrese tama�o de las matrices cuadradas (n x n, m�ximo 5): ";
                    Leer n;
                    Si n <= 0 O n > 5 Entonces
                        Escribir "Tama�o no v�lido. Debe ser entre 1 y 5.";
                    FinSi
                Hasta Que n > 0 Y n <= 5
                
                Dimension matriz1[n, n];
                Dimension matriz2[n, n];
                Dimension matrizResultado[n, n];
                
                Escribir "Ingrese valores para la primera matriz:";
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Escribir "Ingrese valor para [", i, ",", j, "]: ";
                        Leer matriz1[i, j];
                    FinPara
                FinPara
                
                Escribir "Ingrese valores para la segunda matriz:";
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Escribir "Ingrese valor para [", i, ",", j, "]: ";
                        Leer matriz2[i, j];
                    FinPara
                FinPara
                
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        matrizResultado[i, j] <- matriz1[i, j] - matriz2[i, j];
                    FinPara
                FinPara
                
                Escribir "Resultado de la resta:";
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Escribir Sin Saltar matrizResultado[i, j], " ";
                    FinPara
                    Escribir "";
                FinPara
                
            9: 
                Repetir
                    Escribir "Ingrese n�mero de filas para el tri�ngulo (1-10): ";
                    Leer n;
                    Si n <= 0 O n > 10 Entonces
                        Escribir "N�mero no v�lido. Debe ser entre 1 y 10.";
                    FinSi
                Hasta Que n > 0 Y n <= 10
                
                Para i <- 1 Hasta n Hacer
                    num <- 2*i - 1;
                    Para j <- 1 Hasta i Hacer
                        Escribir Sin Saltar num, " ";
                        num <- num - 2;
                        Si num < 1 Entonces
                            num <- 1;
                        FinSi
                    FinPara
                    Escribir "";
                FinPara
                
            10: 
                Repetir
                    Escribir "Ingrese tama�o del rect�ngulo (2-20): ";
                    Leer n;
                    Si n < 2 O n > 20 Entonces
                        Escribir "Tama�o no v�lido. Debe ser entre 2 y 20.";
                    FinSi
                Hasta Que n >= 2 Y n <= 20
                
                Para i <- 1 Hasta n Hacer
                    Para j <- 1 Hasta n Hacer
                        Si i = 1 O i = n O j = 1 O j = n Entonces
                            Escribir Sin Saltar "* ";
                        Sino
                            Escribir Sin Saltar "  ";
                        FinSi
                    FinPara
                    Escribir "";
                FinPara
                
            11: 
                Dimension numeros[100];
                cantidadNumeros <- 0;
                suma <- 0;
                arribaPromedio <- 0;
                abajoPromedio <- 0;
                
                Escribir "Ingrese n�meros (m�ximo 100). Ingrese -1 para terminar:";
                Repetir
                    Leer num;
                    Si num <> -1 Y cantidadNumeros < 100 Entonces
                        cantidadNumeros <- cantidadNumeros + 1;
                        numeros[cantidadNumeros] <- num;
                    FinSi
                Hasta Que num = -1 O cantidadNumeros >= 100
                
                Si cantidadNumeros > 0 Entonces
                    mayor <- numeros[1];
                    menor <- numeros[1];
                    suma <- numeros[1];
                    
                    Para i <- 2 Hasta cantidadNumeros Hacer
                        suma <- suma + numeros[i];
                        Si numeros[i] > mayor Entonces
                            mayor <- numeros[i];
                        FinSi
                        Si numeros[i] < menor Entonces
                            menor <- numeros[i];
                        FinSi
                    FinPara
                    
                    promedio <- suma / cantidadNumeros;
                    
                    Para i <- 1 Hasta cantidadNumeros Hacer
                        Si numeros[i] > promedio Entonces
                            arribaPromedio <- arribaPromedio + 1;
                        Sino
                            Si numeros[i] < promedio Entonces
                                abajoPromedio <- abajoPromedio + 1;
                            FinSi
                        FinSi
                    FinPara
                    
                    Escribir "=== ESTAD�STICAS ===";
                    Escribir "Cantidad de n�meros: ", cantidadNumeros;
                    Escribir "Suma: ", suma;
                    Escribir "Promedio: ", promedio;
                    Escribir "Mayor n�mero: ", mayor;
                    Escribir "Menor n�mero: ", menor;
                    Escribir "N�meros por encima del promedio: ", arribaPromedio;
                    Escribir "N�meros por debajo del promedio: ", abajoPromedio;
                Sino
                    Escribir "No se ingresaron n�meros.";
                FinSi
                
            0: 
                Escribir "Saliendo del programa...";
                
            De Otro Modo:
                Escribir "Opci�n no v�lida. Intente nuevamente.";
        FinSegun
        
        Si opcion <> 0 Entonces
            Escribir "Presione una tecla para continuar...";
            Esperar Tecla;
            Limpiar Pantalla;
        FinSi
    Hasta Que opcion = 0
FinAlgoritmo
