def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card_sum = deal_card + deal_card
  display_card_total(card_sum)
  return card_sum
end

def hit?(total)
  prompt_user
  choice = get_user_input
  if choice == 'h' 
    total += deal_card
  elsif choice == 's'
    total
  else
    invalid_command
    hit?(total)
  end
  return total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 0
  welcome 
  total = initial_round
   until total > 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
    
