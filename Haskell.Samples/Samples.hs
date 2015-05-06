doubleMe :: Int -> Int
doubleMe x = x + x

-- doubleUs x y = x*2 + y*2
doubleUs :: Int -> Int -> Int
doubleUs x y = doubleMe x + doubleMe y

-- concatenarElementos "Hello " "World"
-- concatenarElementos [0, 1] [2, 3]
-- Lento porque tiene que recorrer la lista para añadir los elementos al final
concatenarElementos x y = x ++ y

-- Más rápido para cadenas
concatenarElementosRapido x y = x : y

lucky :: (Integral a) => a -> String
lucky 7 = "¡El siete de la suerte!"
lucky o = "Lo siento, ¡no es tu día de suerte!"