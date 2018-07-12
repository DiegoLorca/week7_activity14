# Crear un menú que permita registrar la información de los alumnos del curso.
#array.push({})
student = []

def add_person(array)
    puts 'Nombre: '
    STDOUT.flush
    nombre = gets.chomp
    puts 'Edad: '
    STDOUT.flush
    edad = gets.chomp.to_i
    puts 'Comuna: '
    STDOUT.flush
    comuna = gets.chomp
    puts 'Genero (Masculino/ Fenemino): '
    STDOUT.flush
    genero = gets.chomp
    array.push(nombre: nombre, edad: edad.to_i, comuna: comuna, genero: genero)
    puts "Se ha ingresado un usuario. \n #{array}"
end
def edit_person(people)
  puts 'Ingresa la persona que quieres editar'
  nombre = gets.chomp
  elegido = people.select{ |person| person[:nombre] == nombre }
  people.delete_if{ |person| person[:nombre] == nombre }
  puts 'Estos son los valores de la persona elegida'
  puts people
  add_person(people)
end
def delete_person(people)
  puts 'Ingresa la persona que deseas eliminar'
  nombre = gets.chomp
  elegido = people.select{ |person| person[:nombre] == nombre }
  if elegido.length == 0
    puts "#{nombre} no existe"
  else
  people.delete_if{ |person| person[:nombre] == nombre }
  puts "#{elegido} fue eliminado"
  end
end
def total_person(people)
  total = people.count
  puts "El total de alumnos es #{total}."

end
def state_person(people)
#  student.each{ |hash| comuna.push(hash[:comuna]) unique }
end
def list_person(array)

end
def total_age(array)

end
def average_age(array)

end
def gender_person(array)

end

print "\nInformación de los alumnos del curso\n"
puts "\n"

opcion = 0
while opcion != '10'
  puts 'Opción 1: Ingresar los datos de una persona'
  puts 'Opción 2: Editar los datos de la persona'
  puts 'Opción 3: Eliminar una persona'
  puts 'Opción 4: Muestra la cantidad de personas ingresadas'
  puts 'Opción 5: Muestra las comunas de todas las personas'
  puts 'Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años'
  puts 'Opción 7: Muestra la suma de las edades de todas las personas'
  puts 'Opción 8: Muestra el promedio de las edades del grupo'
  puts 'Opción 9: Muestra dos listas de personas, una por cada género'
  puts 'Opción 10: Salir'

  opcion = gets.chomp
  puts case opcion
  when '1'
    add_person(student)
  when '2'
    edit_person(student)
  when '3'
    delete_person(student)
  when '4'
    total_person(student)
  when '5'
    state_person(student)
  when '6'
    list_person(student)
  when '7'
    total_age(student)
  when '8'
    average_age(student)
  when '9'
    gender_person(student)
  else
    exit
  end
end
# Opción 1: Permite ingresar los datos de una persona:

# Nombre
# Edad
# Comuna
# Género
# Opción 2: Permite editar los datos de la persona.
# Opción 3: Permite eliminar una persona.
# Opción 4: Muestra la cantidad de personas ingresadas.
# Opción 5: Muestra las comunas de todas las personas.
# hint: Generar un array con las comunas, eliminar repeticiones. Considerar que pueden haber nombres escritos con mayúscula y minúscula.
# Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
# Opción 7: Muestra la suma de las edades de todas las personas.
# Opción 8: Muestra el promedio de las edades del grupo.
# Opción 9: Muestra dos listas de personas, una por cada género.
# El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).
