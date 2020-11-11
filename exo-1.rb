#Exo 1 - Le palindrome
#Le script Ruby permettra de saisir un mot et de vérifier que ce mot est un palindrome.
#Le retour de code se fera comme suit :
#Le mot saisie est un palindrome Le mot mot saisie n’est pas un palindrome
#ruby exo-1.rb, terminal

puts "Saisissez votre mot"
mot = gets.chomp
mot_reverse = mot.reverse
if mot_reverse == mot
  puts "Le mot saisie est un palindrome"
else
  puts "Le mot saisie n'est pas un palindrome"
end