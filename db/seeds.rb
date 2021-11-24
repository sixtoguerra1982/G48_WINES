# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
# Wines
    # Name String

# Strains
    # name
    
# Wines_Strains
    # wine_id
    # Strain_id  .intransitiva que son 2 modelos y 3 tablas
    # percentage .transitiva que son 3 modelos y 3 tablas

# Wine.all.destroy_all
# 100.times do |i|
#     Wine.create!(name: "Vino #{i+1}")
#     puts "Vino #{i+1}"
# end

# 100.times do |i|
#     Strain.create!(name: "Cepa #{i+1}")
#     puts "Cepa #{i+1}"
# end

#Enologo
 # Nombre
 # Edad
 # Nacionalidad

#Enologos_Wines
 #id_enologo
 #id_wine
 #Nota

# Wines
    # Name String




























