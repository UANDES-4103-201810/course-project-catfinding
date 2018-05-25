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

user_1 = User.create(name: 'Francisco',password: 'lalala', last_name: 'Borie', phone: '123456789', gender: 'M', description: 'lalalalala',  email: 'fjborie@miuandes.cl', adress: 'San Carlos de Apoquindo 2200', birthday: date_4)

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

project_1 = Project.create(tittle: 'Proyecto 1', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_4, category: catt_1, user_id: 1)
project_2 = Project.create(tittle: 'Proyecto 2', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_4, category: catt_2, user_id: 1)
project_3 = Project.create(tittle: 'Proyecto 3', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_4, category: catt_3, user_id: 1)
project_4 = Project.create(tittle: 'Proyecto 4', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_5, category: catt_4, user_id: 1)
project_5 = Project.create(tittle: 'Proyecto 5', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_5, category: catt_5, user_id: 1)
project_6 = Project.create(tittle: 'Proyecto 6', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_5, category: catt_6, user_id: 1)
project_7 = Project.create(tittle: 'Proyecto 7', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_6, category: catt_7, user_id: 1)
project_8 = Project.create(tittle: 'Proyecto 8', markdown: 'lalallalalalalalaa', description: 'kgdskfwvfkhwrgk',goalamount: 200, currentamount: 5, approved: true, pendingapproval: false, deadline: date_6, category: catt_8, user_id: 1)

promise_1 = Promise.create(name: 'Promise 1', amount: 30, description: 'kkjsgehgberkbghbuvfkjhvkjshvjshvgk', etd: date_2, project:project_1)
promise_2 = Promise.create(name: 'Promise 2', amount: 45, description: 'kkjsgehgberkbghbuvfkjhvkjshvjshvgk', etd: date_2, project:project_1)

userproject_1 = UserProject.create(user: user_1, project: project_1)

admin_1= UserRole.create(user: user_1, isadmin: true)