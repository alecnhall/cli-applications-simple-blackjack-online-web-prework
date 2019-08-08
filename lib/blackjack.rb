def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  card1 = rand(1..11)
  return card1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  hit_or_stay = gets.chomp
  return hit_or_stay
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  get_user_input
  return card_total
  if get_user_input == "h"
    card_total += deal_card
  elsif get_user_input == "s"
    card_total
  else
    invalid_command
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
  initial_round
  hit?
  display_card_total
  end_game
end
