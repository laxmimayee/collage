# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#qualifications = Qualification.create([{ qname: 'MCA' }, { qname: 'BTECH' }, {qname: 'MSC'}, {qname: 'MTECH'}])


#locations = Locations.create([{ locname: 'NewDelhi' }, { locname: 'Bombay' }, {locname: 'Kolkata'}, {locname: 'Chennai'}])

#examtype = Examtype.create([{exname: 'Sliptest'}, {exname: 'Monthly'}, {exname: 'Quaterly'}, {exname: 'HalfYear'}, {exname: 'Prefinal'}, {exname: 'Final'}])

subname = Subject.create([{subname: 'Telugu'}, {subname: 'English'}, {subname: 'Maths'}, {subname: 'Science'}])

#LEARN ABOUT FAKER GEM AND TRUNCATE IN APIRAILS
6.times do
  
Cstudent.create(   :fname => "googs",
                   :lname => "test",
                    :age => "23",
                    :username => "gopiiiiii",                    
 )
end
