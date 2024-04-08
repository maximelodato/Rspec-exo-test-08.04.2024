print "Entrez votre prénom : "
name = gets.chomp

def hello
    "Hello!"
end

def greet(name)
    "Hello, #{name}!"
end
puts greet(name)