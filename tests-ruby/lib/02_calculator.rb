# Addition
def add(a, b)
    a + b
  end
  
  # Soustraction
  def subtract(a, b)
    a - b
  end
  
  # Somme
  def sum(numbers)
    numbers.reduce(0, :+)
  end
  
  # Multiplication
  def multiply(a, b)
    a * b
  end
  
  # Division
  def division(a, b)
    a / b
  end
  
  # Exécute la calculatrice
  def calculatrice
    puts "Bienvenue dans la calculatrice Ruby !"
    puts "Veuillez choisir une opération :"
    puts "1. Addition"
    puts "2. Soustraction"
    puts "3. Multiplication"
    puts "4. Division"
    print "Entrez votre choix (1-4) : "
    choix = gets.chomp.to_i
  
    case choix
    when 1
      print "Entrez le premier nombre : "
      a = gets.chomp.to_f
      print "Entrez le deuxième nombre : "
      b = gets.chomp.to_f
      puts "Résultat : #{add(a, b)}"
    when 2
      print "Entrez le premier nombre : "
      a = gets.chomp.to_f
      print "Entrez le deuxième nombre : "
      b = gets.chomp.to_f
      puts "Résultat : #{subtract(a, b)}"
    when 3
      print "Entrez le premier nombre : "
      a = gets.chomp.to_f
      print "Entrez le deuxième nombre : "
      b = gets.chomp.to_f
      puts "Résultat : #{multiply(a, b)}"
    when 4
      print "Entrez le premier nombre : "
      a = gets.chomp.to_f
      print "Entrez le deuxième nombre : "
      b = gets.chomp.to_f
      puts "Résultat : #{division(a, b)}"
    else
      puts "Choix invalide"
    end
  end
  
  calculatrice