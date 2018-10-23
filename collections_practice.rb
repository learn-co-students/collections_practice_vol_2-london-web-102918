require 'pry'

def begins_with_r(array)
  array.all? {|i| i.start_with?("r")}
end

def contain_a(array)
  array.select {|i| i.include?("a")}
end

def first_wa(array)
  array.find {|element| element[0..1].include?("wa")}
end

def remove_non_strings(array)
  array.select {|i| i.is_a? String}
end

def count_elements(array)
  array.uniq.each do |name1| count = 0 
    array.each do |name2| if name1 == name2
      count +=1
      end
    end
      name1[:count] = count
  end
end
#iterate to the value in each has and compare then add to array

def merge_data(keys, data)
  
  merged_data = keys.map {|hash| data.first.map {|k,v| if hash.values.first == k then hash.merge(v) end}.compact.first}
    
end

def find_cool(cool)
  cool.select {|element| element.any? {|key, value| value == "cool"}}
end 

def organize_schools(schools)
  locations = {}
  schools.collect {|key, value| locations[value[:location]] = []}
    locations.each do |key, value| schools.each do |key1, value1| 
      if key == value1[:location] 
        value.push(key1)
      end
    end
  end
end 