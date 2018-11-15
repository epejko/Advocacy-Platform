# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#tasks
tasks = [['Planned Parenthood', 'Reproductive Rights', 5, 'epejko'], 
        ['Facebook', 'Data Privacy', 2, 'mfein'],
        ['Funding', 'Computer Science Education', 10, 'ezurek'],
        ['General', 'Intellectual Property', 2, 'epejko'],
        ['Pollution', 'Environment', 2, 'mfein'],
        ['Call a Rep', 'Other', 2, 'oanderson']]
tasks.each do |t|
    Task.create(subject: t[0], category: t[1], points: t[2], author: t[3])
end

#users   
seed_users = [['Matt', 'Fein', 'mfein@gmail.com', 'mfein', 0, 'Tulane'],
              ['Emma', 'Pejko', 'epejko@gmail.com', 'epejko', 0, 'Tulane'],
              ['Emily', 'Zurek', 'ezurek@gmail.com', 'ezurek', 0, 'Tulane'],
              ['Olivia', 'Anderson', 'oanderson@gmail.com', 'oanderson', 0, 'Tulane']]
seed_users.each do |u|
    user0 = User.create(first_name: u[0], last_name: u[1], email: u[2], username: u[3], pointtotal: u[4], organization: u[5], password: 'pass123456', password_confirmation: 'pass123456')
end