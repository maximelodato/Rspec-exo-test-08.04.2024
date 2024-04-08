# Méthode pour répéter une chaîne de caractères
def echo(str)
    str
  end
  
  #majuscules chaîne caractères
  def shout(str)
    str.upcase
  end
  
  #répéter une chaîne de caractères un certain nombre de fois
  def repeat(str, n = 2)
    result = ""
    n.times { result += str + " " }
    result.strip
  end
  
  #premières lettres d'un mot ou d'une phrase
  def start_of_word(str, n)
    str[0, n]
  end
  
  #premier mot d'une phrase
  def first_word(str)
    str.split.first
  end
  
  #majuscule chaque première lettre de chaque mot
  def titleize(sentence)
    small_words = %w{a an and the or for of nor}
    words = sentence.split(' ')
    capitalized_words = words.map do |word|
      unless small_words.include?(word.downcase)
        word.capitalize
      else
        word
      end
    end
    capitalized_words.first.capitalize!
    capitalized_words.join(' ')
  end

  puts echo("Hello")  # Affiche "Hello"
  puts shout("hello") # Affiche "HELLO"
  puts repeat("hello", 3) # Affiche "hello hello hello"
  puts start_of_word("hello", 2) # Affiche "he"
  puts first_word("Hello world") # Affiche "Hello"
  puts titleize("the bridge over the river kwai") # Affiche "The Bridge over the River Kwai"
  