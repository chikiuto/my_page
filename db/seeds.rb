# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.create!(
    name: "ado",
    question: "waht is your name?",
    answer: "tokyo",
    is_published: 1
)

User.create!(
    name:"admindesu",
    email:"admindesu@admin.com",
    password:"hoge123",
    is_admin: true
)

User.create!(
    name:"admin_jyanai",
    email:"admin_jyanai@admin.com",
    password:"fuga123",
    is_admin: false
)