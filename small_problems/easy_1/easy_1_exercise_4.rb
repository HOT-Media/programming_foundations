def count_occurrences(array)
  how_many_of_each_type_of_vehicle = {}
  array.each do |element|
    how_many_of_each_type_of_vehicle[element] = array.count(element)
  end

  how_many_of_each_type_of_vehicle.each do |type_of_vehicle, count|
    puts "#{type_of_vehicle} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
