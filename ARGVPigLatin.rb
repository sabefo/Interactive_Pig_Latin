#METODO QUE DETERMINA CUANTAS CONSONANTES HAY ANTES DE UNA VOCAL Y DESPUES
#LAS PONE AL FINAL DE LA PALABRA, QUITANDOLAS DEL PRINCIPIO, Y AGREGA "ay"
#AL FINAL
puts "Los argumentos recibidos son:"
argumento = ARGV
puts argumento.inspect
puts ""

def consonante(palabra)
	vocal = ["a","e","i","o","u"]
	pal_2 = ""
	i = 0
	until vocal.include?(palabra[i])
		pal_2 = pal_2 + palabra[i]
		palabra.delete!(palabra[i])
	end
	return palabra + pal_2 + "ay"
end

#METODO QUE QUITA LA PRIMERA VOCAL, LA PONE AL FINAL Y LE AGREGA "way"
def vocales(palabra)
	vocal = ["a","e","i","o","u"]
	pal_3 = ""
	i = 0
	until i == vocal.length || palabra[0].include?(vocal[i])
		i += 1
	end
	pal_3 = palabra[0]
	palabra.delete!(palabra[0])
	pal_3 = palabra + pal_3 + "way"
end

#METODO DEL JUEGO PIG LATIN
def pig_latin(palabra)
	vocal = ["a","e","i","o","u"]
	i = 0
	bandera = false
	while i < vocal.length && bandera == false
		if palabra[0].include?(vocal[i])
			bandera = true	
		else
			i += 1
		end
	end
	if bandera == false
		consonante(palabra)
	else
		vocales(palabra)
	end
end

def pig_latin_varios(array)
	array.each{|x| puts pig_latin(x.dup)}
end

pig_latin_varios(argumento)