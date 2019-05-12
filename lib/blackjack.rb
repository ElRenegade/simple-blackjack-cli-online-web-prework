def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  answer = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
<<<<<<< HEAD
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
=======
  total = deal_card + deal_card
  display_card_total(total)

>>>>>>> 4c81090b0aee4ccf2430c7a1f0d01e920620a400
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer == "h"
    card_total+=deal_card
  elsif answer == "s"
    card_total
  else
    invalid_command
<<<<<<< HEAD
=======
    prompt_user
    card_total
>>>>>>> 4c81090b0aee4ccf2430c7a1f0d01e920620a400
  end
end

def invalid_command
  puts "Please enter a valid command"
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
<<<<<<< HEAD
  sum = initial_round
  while sum < 21
  sum = hit?(sum)
  display_card_total(sum)
=======
  initial_round
  sum = initial_round
  while sum < 21
  hit?(sum)
  sum +=hit?(sum)
>>>>>>> 4c81090b0aee4ccf2430c7a1f0d01e920620a400
  end

  end_game(sum)
end
