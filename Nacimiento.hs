main = do
    opciones True

opciones n = do
    if n
        then do
        putStrLn ("********Menu*********")
        putStrLn "1.- Dia"
        putStrLn "2.- Mes"
        putStrLn "3.- Salir"
        putStrLn "Dame una opción"
        opc <- getLine
        putStrLn ("_______________________")

        case opc of
            "1" -> dia
            "2" -> mes
            "3" -> opciones False 
    else
        putStrLn "Termina el programita"

casos mes = do
    case mes of
        1 -> putStrLn "Enero, 31 días"
        2 -> putStrLn "Febrero, 26 días"
        3 -> putStrLn "Marzo, 31 días"
        4 -> putStrLn "Abril, 30 días"
        5 -> putStrLn "Mayo, 31 días"
        6 -> putStrLn "Junio, 30 días"
        7 -> putStrLn "Julio, 31 días"
        8 -> putStrLn "Agosto, 31 días"
        9 -> putStrLn "Septiembre, 30 días"
        10 -> putStrLn "Octubre, 30 días"
        11 -> putStrLn "Noviembre, 30 días"
        12 -> putStrLn "Diciembre, 31 días"
        _ -> putStrLn "Opcion no disponible"
    opciones True
    
dia  = do
    putStrLn("Dame el dia en que naciste: ")
    dia <- readLn
    if dia > 1 || dia < 31
            then do
                putStrLn "Día correcto, si existe"
                mes   
            else do
                putStrLn"Día incorrecto, no existe"  
                
                

mes = do
    putStrLn("Dame el mes en que naciste")
    mes <- readLn
    if mes > 1 || mes < 12
        then do
            putStrLn("Correcto, el mes existe")
            casos mes
        else
            putStrLn("Mes incorrecto, el mes no existe")
         

