def translate(phrase)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = phrase.split.map do |word|
      if word.match(/\A[aeiou]/i)
        preserve_case(word + 'ay', word)
      else
        idx = word.index(/[aeiou]/)
        idx += 1 if word[idx - 1, 2] == 'qu'
        preserve_case(word[idx..-1] + word[0...idx] + 'ay', word)
      end
    end
    words.join(' ')
  end
  
  def preserve_case(translated_word, original_word)
    if original_word =~ /^[A-Z]/
      translated_word.capitalize
    else
      translated_word
    end
  end
  
  puts "Entrez une phrase à traduire en Pig Latin :"
input_phrase = gets.chomp

puts "La phrase traduite en Pig Latin est :"
puts translate(input_phrase)