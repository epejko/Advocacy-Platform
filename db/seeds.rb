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

