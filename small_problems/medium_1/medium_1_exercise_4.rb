def populate_light_array(num)
  Array.new(num, 1).unshift("light number sync")
end

def make_toggle_array(walk_num, total_walks)
  toggle_array = []
  multiple = walk_num
  loop do
    toggle_array << multiple
    break if multiple + walk_num > total_walks
    multiple += walk_num
  end
  toggle_array
end

def light_logic(light_array, lights_to_toggle_array)
  lights_to_toggle_array.each do |idx|
    light_array[idx] = if light_array[idx] == 0
                         1
                       else
                         0
                       end
  end
  light_array
end

def lights_left_on(arr)
  on = []
  arr.each_with_index do |item, index|
    on << index if item == 1
  end
  on
end

def lights_on(num)
  light_state = nil
  lights = populate_light_array(num)
  2.upto(num) do |walk_num|
    toggle_array = make_toggle_array(walk_num, num)
    light_state = light_logic(lights, toggle_array)
  end
  lights_left_on(light_state)
end

p lights_on(1000)
