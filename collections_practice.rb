def begins_with_r(arr)
 arr.all? {
    |word| word[0] == "r"
  }
end

def contain_a(arr)
  arr1 = []
  arr.map do |word|
    if word.include?("a")
      arr1.push(word)
    end
  end
  return arr1
end



def first_wa(arr)
    arr.find do |word|
      word[0..1].include?("wa")
    end
end

def remove_non_strings(arr)
  arr.grep(String)
end


# [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
# [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])

def count_elements(arr)
      arr.uniq.each {|i| count = 0
        arr.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end
    
def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}} 
end
    
def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end

