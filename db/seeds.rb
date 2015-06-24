
('a'..'p').each do |letter|
  User.create(name: letter*3, password: "123456", password_confirmation: "123456")
end

["Anejo Enchilado","Blue","Cotija","Gruyere"].each do |name|
  Cheese.create(cheese_name: name, category: "Hard Cheeses")
end


["Brick","Chevres","Edam","Butterkase"].each do |name|
  Cheese.create(cheese_name: name, category: "Semi-Hard Cheeses")
end


["Colby","Havarti"].each do |name|
  Cheese.create(cheese_name: name, category: "Semi-Soft Cheeses")
end


["Feta","Brie"].each do |name|
  Cheese.create(cheese_name: name, category: "Soft Cheeses")
end

