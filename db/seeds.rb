# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.create(title: 'TestProduct1',
  description: 
    %{<p>
        This is a test product number1
      </p>},
  image_url:   'cs.jpg',    
  price: 36.00)

Product.create(title: 'TestProduct2',
  description:
    %{<p>
       This is a test product number 2
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95)

Product.create(title: 'TestProduct3',
  description: 
    %{<p>
        This is a test product number 3.
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95)