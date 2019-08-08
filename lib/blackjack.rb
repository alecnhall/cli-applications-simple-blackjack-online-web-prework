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
  choice = get_user_input
  if choice == 's'
    nil
  elsif choice == 'h'
    card_total += deal_card
  else
    invalid_command
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  until card_total <= 21 do
    welcome
    initial_round
    hit?
    display_card_total
  end
end_game
end
