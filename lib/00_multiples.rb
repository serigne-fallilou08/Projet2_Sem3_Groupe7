# Vérifie si un nombre est un multiple de 3 ou de 5
def is_multiple_of_3_or_5?(number)
  (number % 3).zero? || (number % 5).zero?
end

# Calcule la somme des multiples de 3 ou de 5 jusqu'à un nombre donné
def sum_of_3_or_5_multiples(final_number)
  final_sum = 0

  # Parcours tous les entiers de 0 à (final_number - 1)
  (0...final_number).each do |current_number|
    if is_multiple_of_3_or_5?(current_number)
      final_sum += current_number
    end
  end

  final_sum
end
