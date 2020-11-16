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

# demande à l'utilsateur de saisir un chiffre
# attention, l'utilsateur est en droit, de mettre n'importe quoi à ce stade
# il faudrait vérifier à la saisie qu'il s'agisse bien d'un nombre d'un chiffre sans lettres
puts 'Saisir votre mot'
number = gets.chomp.to_i

# on effectue une boucle de 1 à 10
# on affihe la phrase comme demandée
# pas besoin de méthode ici
(1..10).each do |n|
  puts "#{n} * #{number} = #{n * number}"
end