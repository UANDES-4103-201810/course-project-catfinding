# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
date_4 = Date.new(1996, 9, 3)
date_5 = Date.new(1980, 1, 4)
date_6 = Date.new(1993, 12, 22)
user_1 = User.create(name: 'Francisco',  email: 'fjborie@miuandes.cl', adress: 'San Carlos de Apoquindo 2200', birthday: date_4)
user_2 = User.create(name: 'Diego', email: 'dbeckdorf@miuandes.cl', adress: 'San Carlos de Apoquindo 2200', birthday: date_5)
user_3 = User.create(name: 'Maximiliano', email: 'mrgarcia1@miuandes.cl', adress: 'San Carlos de Apoquindo 2200', birthday: date_6)


catt_1 = Category.create(name: 'Categoria 1')

date_1 = Date.new(2018, 9, 1)
date_2 = Date.new(2018, 9, 2)

project_1 = Project.create(tittle: 'Proyecto 1', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_1, category: catt_1, user_id: 1)

promise_1 = Promise.create(name: 'Promise 1', amount: 30, description: 'kkjsgehgberkbghbuvfkjhvkjshvjshvgk', etd: date_2, project:project_1)
promise_2 = Promise.create(name: 'Promise 2', amount: 45, description: 'kkjsgehgberkbghbuvfkjhvkjshvjshvgk', etd: date_2, project:project_1)

#userproject_1 = UserProject.create(user: user_1, project: project_1)
#userproject_2 = UserProject.create(user: user_2, project: project_1)
#userproject_3 = UserProject.create(user: user_3, project: project_1)