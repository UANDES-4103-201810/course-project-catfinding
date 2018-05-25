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

user_1 = User.create(name: 'Francisco',password: 'lalala', last_name: 'Borie', phone: '123456789', gender: 'M', description: 'lalalalala',  email: 'fjborie@miuandes.cl', address: 'San Carlos de Apoquindo 2200', birthday: date_4, is_admin: true)
user_1 = User.create(name: 'Max',password: '123456', last_name: 'Garcia', phone: '123456789', gender: 'M', description: 'lalalalala',  email: 'mrgarcia1@miuandes.cl', address: 'San Carlos de Apoquindo 2200', birthday: date_5)


catt_1 = Category.create(name: 'Design & Tech')
catt_2 = Category.create(name: 'Film')
catt_3 = Category.create(name: 'Publishing')
catt_4 = Category.create(name: 'Games')
catt_5 = Category.create(name: 'Arts')
catt_6 = Category.create(name: 'Music')
catt_7 = Category.create(name: 'Comic & Illustration')
catt_8 = Category.create(name: 'Food & Craft')


date_1 = Date.new(2018, 9, 1)
date_2 = Date.new(2018, 9, 2)


project_1 = Project.create(title: 'Proyecto 1', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, deadline: date_4, category: catt_1)
project_2 = Project.create(title: 'Proyecto 2', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, deadline: date_4, category: catt_2)
project_3 = Project.create(title: 'Proyecto 3', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, deadline: date_4, category: catt_3)
project_4 = Project.create(title: 'Proyecto 4', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, deadline: date_5, category: catt_4)
project_5 = Project.create(title: 'Proyecto 5', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, deadline: date_5, category: catt_5)
project_6 = Project.create(title: 'Proyecto 6', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, deadline: date_5, category: catt_6)
project_7 = Project.create(title: 'Proyecto 7', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, deadline: date_6, category: catt_7)
project_8 = Project.create(title: 'Proyecto 8', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, deadline: date_6, category: catt_8)

promise_1 = Promise.create(name: 'Promise 1', amount: 30, description: 'kkjsgehgberkbghbuvfkjhvkjshvjshvgk', etd: date_2, project:project_1)
promise_2 = Promise.create(name: 'Promise 2', amount: 45, description: 'kkjsgehgberkbghbuvfkjhvkjshvjshvgk', etd: date_2, project:project_1)

userproject_1 = UserProject.create(user: user_1, project: project_1)
userproject_2 = UserProject.create(user: user_1, project: project_2)
userproject_3 = UserProject.create(user: user_1, project: project_3)
userproject_4 = UserProject.create(user: user_1, project: project_4)
userproject_5 = UserProject.create(user: user_1, project: project_5)
userproject_6 = UserProject.create(user: user_1, project: project_6)
userproject_7 = UserProject.create(user: user_1, project: project_7)
userproject_8 = UserProject.create(user: user_1, project: project_8)

