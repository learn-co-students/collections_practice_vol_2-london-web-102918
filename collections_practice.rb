def begins_with_r(tools)
  tools.map do |word|
    unless word[0].include?("r")
      return false
    end
  end
  return true
end

def contain_a(elements)
  elements_with_a = []
  elements.each do |word|
    if word.include?("a")
      elements_with_a << word
    end
  end
  elements_with_a
end

def first_wa(elements)
  elements.map do |word|
    if word.match(/wa/)
    return word
  end
end
end

def remove_non_strings(array)
  array_only_string = []
  array.map do |word|
    if word.is_a?(String)
      array_only_string << word
    end
  end
  array_only_string
end

def count_elements(array)
  array.each do |hash|
  hash[:count] = 0
  name = hash[:name]
  array.each do |word|
    if word[:name] == name
      hash[:count] += 1
    end
  end
end.uniq
end

def find_cool(hashes)
  cool_array = []
  hashes.each do |hash|
    if hash[:temperature] == "cool"
      cool_array << hash
    end
  end
  cool_array
end

def organize_schools(schools)
  organised_hash = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organised_hash[location]
      organised_hash[location] << name
    else
      organised_hash[location] = []
      organised_hash[location] << name
    end
  end
  organised_hash
end

def merge_data(keys, values)
  merged_array = []
  keys.each do |key|
    name = key[:first_name]
    values.each do |value|
    if value[name]
      merged_data = value[name]
      merged_data[:first_name] = name
      merged_array << merged_data
    end
  end
end
merged_array
end
