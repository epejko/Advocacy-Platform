# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t0 = Task.create(subject: 'subject0', category: 'category0', points: 0, author: 'user0')

tasks = [['Planned Parenthood', 'Reproductive Rights', 5, 'ExampleUser1'], 
        ['Pollution', 'Environment', 2, 'ExampleUser2'],
        ['Funding', 'Medicare', 10, 'ExampleUser3']]
tasks.each do |t|
    Task.create(subject: t[0], category: t[1], points: t[2], author: t[3])
end