#Dado el array:

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

#Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.
b = a.map do |e|
  e += 1
end
p b
#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.
b = a.map do |e|
  e.to_f
end
p b
#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.
b = a.map do |e|
  e.to_s
end
p b
#Utilizando reject descartar todos los elementos menores a 5 en el array.
b = a.reject{ |x| x < 5 }
print b
#Utilizando select descartar todos los elementos mayores a 5 en el array.
b = a.select{ |x| x < 5 }
p b
#Utilizando inject obtener la suma de todos los elementos del array.
b = a.inject(0) { |sum, x| sum + x }
puts b
#Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
p a.group_by{ |x| x.even?}
#Utilizando group_by agrupar todos los números mayores y menores que 6.
p a.group_by{ |x| x > 6 }
