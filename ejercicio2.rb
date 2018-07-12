#Dado el arreglo

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
#Se pide:

#Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
nombres_largos = nombres.select do |nom|
  nom.length > 5
end
p nombres_largos
#Utilizando .map crear una arreglo con los nombres en minúscula.
nombres_minusculos = nombres.map do |nom|
  nom.downcase
end
p nombres_minusculos
#Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
nom_p = nombres.select do |nom|
  nom[0] == 'P'
end
p nom_p
#Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
nom_cantidad = nombres.map do |nom|
  nom.length
end
p nom_cantidad
#Utilizando .map y .gsub eliminar las vocales de todos los nombres.
nom_eli = nombres.map do |nom|
  nom.gsub(/[aeiou]/, '')
end
p nom_eli
