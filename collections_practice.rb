# your code goes here
def begins_with_r(array)
  array.all? {|element| element.start_with? "r"}
end

def contain_a(array)
  array.keep_if {|element| element.include? "a"}
end

def first_wa(array)
  array.find {|element| element.to_s.start_with? "wa"}
end

def remove_non_strings(array)
  array.keep_if {|element| element.class == String}
end

def count_elements(array)
  # TODO: re-implement this in a simpler way?
  array.group_by(&:itself).map{|a, b| a.merge(count: b.length)}
end

def merge_data(keys, data)
  merged_data = keys
  person_1 = data[0].values[0]
  person_2 = data[0].values[1]
  if keys[0][:first_name] == person_1
    merged_data[0] = merged_data[0].merge(person_1)
    merged_data[1] = merged_data[1].merge(person_2)
  else
    merged_data[0] = merged_data[0].merge(person_2)
    merged_data[1] = merged_data[1].merge(person_1)
  end
 merged_data
end

def find_cool(cool)
  cool_hash = []
  for i in 0..cool.length - 1
    cool_values = cool[i].values
    cool_values.each do |value|
      if value == "cool"
        cool_hash << cool[i]
      end
    end
  end
 cool_hash
end

def organize_schools(schools)
  new_school = {}
  schools.each do |bootcamp, city|
    location = city[:location]
    new_school[location] ||= []
    new_school[location] << bootcamp
  end
  new_school
end
