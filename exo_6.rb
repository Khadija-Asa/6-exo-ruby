#exo 6 - Le chiffre est bon, consonne
#Dans le cadre de son activité, la société de crédit *PAIETONPRET* a besoin de contrôler le numéro de SIRET des sociétés clientes de leur solution.
#Pour cela, elle a, au moment de la saisie par un membre de l’équipe, besoin de contrôler que le membre a bien saisie le numéro de SIRET sans saisir d’erreur de frappe ou d’audition.
#Pour cela nous allons utiliser l’algorithme de Luhn.
#Votre mission si vous l’acceptez (c’est pas une question) sera de  créer le code qui permettra de vérifier le numéro de SIRET
#Le code devra simplement renvoyer  si c’est bon ou pas.

# on va utiliser cette fois ci une class, ça nous permettra 
class Luhn
  # on utilise la pethode initialize, pour nous permettre de passer une valeur à la class
  def initialize(identifiant)
    # on cré un variable qui sera visible dan toute la class, (donc toutes les méthode de celle ci)
    @identifiant = identifiant
  end

  # méthode pour vérifier si notre nombre et ok ou pas
  def check_m1
    total = 0
    # on va prendre noter chaine, la splitter pour la transformer en tableau
    # On retourne le tableau, et on le passe de string à integer
    # on va le parcourir tout en récupérant l'index dans le tableau
    # sortie de la boucle each_with_index  on va additionner l'ensemble des chiffres
    total += @identifiant.split('').reverse.map(&:to_i).each_with_index do |n, i|
      # si l'index est impair on multiplie par 2 
      n *= 2 if i.odd?
      # si le nombre est supérieur à 10 on le ramène à un nombre de 1 chiffre
      n -= 9 if n.to_i > 9
      n
    end.to_s.each_char.map(&:to_i).sum
    false
    true if total.divmod(10).last.zero?
  end
end

# 51100635500040
# siret qui fonctionne : 88176189400017
puts 'Entrez un numéro SIRET pour le vérifier :'
siret_one = gets.chomp

# ici après avoir recupéré la saisie du siret, on s'assure que c'est biens des nombres, 
# et que la saisie fait 14 chiffres.
if /^[0-9]{14,14}$/.match(siret_one)
  # on instancie notre class Luhn 
  instance = Luhn.new(siret_one)
  # et on applique notre methode dessus, qui va nous rendre true ou false
  if instance.check_m1
    puts 'numero valide'
  else
    puts "oups c'est pas bon"
  end
end

# class Luhn
#   def initialize(identifiant)
#     @identifiant = identifiant
#   end

#   def check_m1
#     total = 0
#     total += @identifiant.split('').reverse.map(&:to_i).each_with_index do |n, i|
#       n *= 2 if i.odd?
#       n -= 9 if n.to_i > 9
#       n
#     end.to_s.each_char.map(&:to_i).sum
#     false
#     true if total.divmod(10).last.zero?
#   end
# end

# puts 'Entrez un numéro SIRET pour le vérifier :'
# siret_one = gets.chomp

# if /^[0-9]{14,14}$/.match(siret_one)
#   instance = Luhn.new(siret_one)
#   if instance.check_m1
#     puts 'numero valide'
#   else
#     puts "oups c'est pas bon"
#   end
# end