# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create(name: 'Francisco',  email: 'fjborie@miuandes.cl', address: 'San Carlos de Apoquindo 2200')
user_2 = User.create(name: 'Diego', email: 'dbeckdorf@miuandes.cl', address: 'San Carlos de Apoquindo 2200')
user_3 = User.create(name: 'Maximiliano', email: 'mrgarcia1@miuandes.cl', address: 'San Carlos de Apoquindo 2200')

up_1= Userpassword.create(password: 'pass123456', user: user_1)
up_2= Userpassword.create(password: 'pass123456', user: user_2)
up_3= Userpassword.create(password: 'pass123456', user: user_3)

catt_1 = Category.create(name: 'Categoria 1')

date_1 = Date.new(2018, 9, 1)
date_2 = Date.new(2018, 9, 2)

project_1 = Project.create(tittle: 'Proyecto 1', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_1, category: catt_1 )

promise_1 = Promise.create(name: 'Promise 1', amount: 30, description: 'kkjsgehgberkbghbuvfkjhvkjshvjshvgk', etd: date_2, project:project_1)
promise_2 = Promise.create(name: 'Promise 2', amount: 45, description: 'kkjsgehgberkbghbuvfkjhvkjshvjshvgk', etd: date_2, project:project_1)
