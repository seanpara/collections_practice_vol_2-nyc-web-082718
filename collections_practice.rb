# your code goes here
def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.find_all do |word|
    word.include? "a"
  end
end

def first_wa(array)
  array.find do |word|
    word.slice(0,2) == "wa"
  end
end

def remove_non_strings(array)
  array.keep_if do |word|
    word.is_a? String
  end
end

def count_elements(array)
  counting_hash = Hash.new(0)
  array.each_with_object(counting_hash) do |a,b|
      b[a[:name]] += 1
    end
  counting_hash.map do |name, count|
    { :name=>name, :count=>count }
  end
end

def merge_data(structure_1, structure_2)
  merged =[]
	structure_1.each_index { |i|
		structure_2[0].keys.each { |name|
			merged << structure_1[i].merge(structure_2[0][name]) if name == structure_1[i][:first_name]
		}
	}
	merged
end

def find_cool(array)
  container = []
  array.each { |element| container << element if element[:temperature] == "cool" }
  container
end

def organize_schools(array)
  orranized_array = {}
  array.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
