#le plus grand nombre parmi trois nombres
def who_is_bigger(a, b, c)
    if a.nil? || b.nil? || c.nil?
      "nil detected"
    else
      max = [a, b, c].max
      if max == a
        "a is bigger"
      elsif max == b
        "b is bigger"
      else
        "c is bigger"
      end
    end
  end
  
  #inverser, mettre en majuscules et supprimer les lettres
  def reverse_upcase_noLTA(str)
    str.reverse.upcase.delete("LTA")
  end
  
  #vérifier tableau contient  nombre 42
  def array_42(arr)
    arr.include?(42)
  end
  
  #opérations spécifiques sur un tableau
  def magic_array(arr)
    arr.flatten.map { |x| x * 2 }.reject { |x| x % 3 == 0 }.uniq.sort
  end
  
  puts who_is_bigger(3, 5, 2) # Output: "b is bigger"
puts who_is_bigger(nil, 5, 2) # Output: "nil detected"

puts reverse_upcase_noLTA("Hello World") # Output: "DLROW O"
puts reverse_upcase_noLTA("This is a test") # Output: "TSET IS SI"

puts array_42([1, 2, 3, 42, 5]) # Output: true
puts array_42([1, 2, 3, 4, 5]) # Output: false

puts magic_array([1, [2, 3, 4], 5, 6]) # Output: [2, 4, 8, 10]
puts magic_array([3, 9, 15, 21]) # Output: [4, 8, 10, 12, 16, 20]
