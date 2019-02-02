def begins_with_r(array)
  result = true
  array.each do|element|
  if !element.start_with?("r")
   result = false 
  end
  
  end
  result
end

def contain_a(array)
   array.select do |word|
  word.include?("a")
  end
end

def first_wa(array)
  letter_wa = []
  array.each do |letter|
   if letter.to_s.start_with?("wa")
     letter_wa << letter
   end
  end
  letter_wa.first
end

def remove_non_strings(array)
  array.grep(String)
end

def count_elements(array)
  array.group_by(&:itself).map{|k,v|k.merge(count:v.length)}
end

def merge_data(array)
  v1[0].values.map.with_index {|v, i| v2[i].merge(v)}
end
