# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User Admin
User.create(email: 'admin@admin.com', password: '123456789', password_confirmation: '123456789',admin: true)

#Position
positions = [
            {description: '1º Lugar',score:10},
            {description: '2º Lugar',score:8},
            {description: '3º Lugar',score:6},
            {description: '4º Lugar',score:4},
            {description: '5º Lugar',score:2},
            {description: '6º Lugar',score:1},
            {description: '7º Lugar',score:1},
            {description: '8º Lugar',score:1},
            {description: '9º Lugar',score:1},
            {description: '10º Lugar',score:1},
            {description: '11º Lugar',score:1},
            {description: '12º Lugar',score:1},
            {description: '13º Lugar',score:1},
            {description: '14º Lugar',score:1},
            {description: '15º Lugar',score:1},
            {description: '16º Lugar',score:1},
            {description: '17º Lugar',score:1},
            {description: '18º Lugar',score:1},
            {description: '19º Lugar',score:1},
            {description: '20º Lugar',score:1}
          ]

# Modalities
modalities = [
              {genre: 'Masculino',oar:1},
              {genre: 'Masculino',oar:2},
              {genre: 'Masculino',oar:3},
              {genre: 'Masculino',oar:4},
              {genre: 'Feminino',oar:1},
              {genre: 'Feminino',oar:2},
              {genre: 'Feminino',oar:3},
              {genre: 'Feminino',oar:4}
            ]

positions.each do |p|
  Position.create(p)
end

modalities.each do |m|
  Modality.create(m)
end