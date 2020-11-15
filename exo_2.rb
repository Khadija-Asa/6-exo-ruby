#exo 2 - Table de multiplication
#L’utilisateur devrait renseigne un nombre de 1 chiffre
#Le résultat affichera :
#La table de multiplication du chiffre ##chiffre saisie## est :
#1 * chiffre saisie = chiffre saisie * 1
#2 * …
#3 *
#…
#10 *

puts "Saisissez un chiffre" #on demande de saisir un chiffre
number = gets.chomp.to_i #on le transforme en integer
puts "La table de multiplication du chiffre #{number} est : " #phrase qui introduit la table de multiplication
for i in [1,2,3,4,5,6,7,8,9,10] #on définit les chiffres
puts "#{i} * #{number} = #{number * i}" #calcul selon le chiffre qui sera écrit

# i = 0
# while i < 10
#   i = i + 1
# puts i

  end