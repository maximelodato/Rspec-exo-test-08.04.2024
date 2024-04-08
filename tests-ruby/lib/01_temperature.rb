def ftoc(fahrenheit)
    (fahrenheit - 32) * 5.0 / 9.0
  end
  
  def ctof(celsius)
    celsius * 9.0 / 5.0 + 32
  end
  
  def main
    puts "Choisissez l'option de conversion :"
    puts "1. Convertir de Fahrenheit à Celsius"
    puts "2. Convertir de Celsius à Fahrenheit"
    print "Entrez votre choix (1 ou 2) : "
    choix = gets.chomp.to_i
  
    case choix
    when 1
      print "Entrez la température en Fahrenheit : "
      fahrenheit = gets.chomp.to_f
      celsius = ftoc(fahrenheit)
      puts "#{fahrenheit} Fahrenheit équivaut à #{celsius} Celsius."
    when 2
      print "Entrez la température en Celsius : "
      celsius = gets.chomp.to_f
      fahrenheit = ctof(celsius)
      puts "#{celsius} Celsius équivaut à #{fahrenheit} Fahrenheit."
    else
      puts "Option invalide. Veuillez choisir 1 ou 2."
    end
  end
  
  main
  