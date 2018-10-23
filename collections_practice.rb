# your code goes here
require 'pry'
def begins_with_r(array)
    array.all? do |word|
        word[0] == "r"
    end
end

=begin
This is a much slower way of doing #begins_with_r:
 
def begins_with_r(array)
    t_or_f = true
    array.each do |word|
        if word.start_with?("r") == false
            t_or_f = false
            break
        elsif word.start_with?("r") == true
        end
    end
    t_or_f
end
=end

def contain_a(array)
    array.select do |word|
        word.include?("a")
    end
end

=begin
This is a much slower way of doing #contain_a:
 
def contain_a(array)
    all_the_as = []
    array.each do |word|
        if word.include?("a") == true
            all_the_as << word
            elsif word.include?("a") == false
        end
    end
    all_the_as
end
=end

def first_wa(array)
    array.find do |word|
        word[0..1].include?("wa")
    end
end

=begin
This is a much slower way of doing #first_wa:
 
def first_wa(array)
    wa_1 = ""
    array.each do |word|
        if word[0..1] == "wa"
            wa_1 = word
            break
        else
        end
    end
    wa_1
end
=end

def remove_non_strings(array)
    array.delete_if do |word|
        word.class != String
    end
end

def count_elements(stuff)
    b = Hash.new(0)
    stuff.each do |thing| 
        b[thing] += 1
    end
    b.each do |key, value|
        key[:count] = value
    end
    c = b.keys
    # binding.pry
end

def merge_data(keys, data)
    new_arr = []
    data[0].each do |kee, stuff|
        # binding.pry
        new_arr << stuff
    end
    i = 0
    new_arr.each do |ele|
        new_arr[i] = ele.merge(keys[i])
        i += 1    
        # binding.pry
    end
    new_arr
    # binding.pry
end

def find_cool(cool)
    cool.select do |ele|
        ele[:temperature] == "cool"
    end
end

=begin
def find_cool(cool)
    new_arr = []
    cool.each do |ele|
        if ele[:temperature] == "cool"
            new_arr << ele
        end
    end
    new_arr
end
=end


def organize_schools(schools)
    sorted = Hash.new(0)
    arr_nyc = []
    arr_chi = []
    arr_sf = []
    schools.each do |name, key_val|
        if key_val[:location] == "NYC"
            arr_nyc << name
        elsif key_val[:location] == "Chicago"
            arr_chi << name
        elsif key_val[:location] == "SF"
            arr_sf << name
        end
    end
    sorted["NYC"] = arr_nyc
    sorted["SF"] = arr_sf
    sorted["Chicago"] = arr_chi
    sorted
end
