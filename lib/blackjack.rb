def runner
  welcome
  initial_round
  cards = deal_card + deal_card
    until cards > 21
      hit?(cards)
      cards += deal_card;
    display_card_total(cards)
  end
  end_game(cards)
end

##################
# shared methods #
##################

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def deal_card
  rand(1..11)
end

##########
# rounds #
##########

def welcome
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  cards = deal_card + deal_card
  display_card_total(cards)
  return cards
end

def hit?(card_total)
    prompt_user
    user_input = get_user_input
  if user_input == "h"
    card_total += deal_card;
  elsif user_input == "s"
    card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Sorry, not a valid command"
  hit?(card_total)
end

def get_user_input
  gets.chomp.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
  