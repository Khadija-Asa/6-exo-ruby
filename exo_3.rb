#exo 3 - Ecrire une méthode qui prendra 2 paramètres nom et surnom qui affichera
#Hello  surnom     # si seul le surnom est fourni
#Bonjour  nom #   si seul le nom est fourni
#Bonjour Nom # *ET QUE* si les 2 sont fournis

puts 'Veuillez entrer votre surnom'
surnom = gets.chomp

puts 'Veuillez entrer votre nom'
nom = gets.chomp

def bonjour (surnom, nom)

	if surnom != '' && nom == ''
	
		puts 'hello'

  elsif surnom == '' && nom != ''
	
		puts 'bonjour'

	elsif surnom != '' && nom != ''
		
		puts 'salut'
end
end