#exo 3 - Ecrire une méthode qui prendra 2 paramètres nom et surnom qui affichera
#Hello  surnom     # si seul le surnom est fourni
#Bonjour  nom #   si seul le nom est fourni
#Bonjour Nom # *ET QUE* si les 2 sont fournis

puts 'Veuillez entrer votre surnom'
nickname = gets.chomp

puts 'Veuillez entrer votre nom'
name = gets.chomp

def bonjour (nickname, name)

	if nickname != '' && name == '' #si surnom différent de vide et nom vide
		
		puts 'Hello ' + nickname #on renvoi Hello + surnom
		
  elsif nickname == '' && name != '' #si surnom vide et nom différent de vide
		
		puts 'Bonjour ' + name #on renvoi Bonjour + nom
		
	elsif nickname != '' && name != '' #si surnom et nom différent de vide
		
		puts 'Bonjour ' + name #on renvoi Bonjour + nom

	end
end