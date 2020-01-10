def run_guessing_game
  randNum = gen_rand
  prompt_user
  input = get_user_input
  process_input(randNum,input)
end

def gen_rand
  rand(6) + 1
end

def prompt_user
  puts "Guess the number? (1-6)"
end

def get_user_input
  gets.chomp.strip
end

def process_input(randNum,input)
  case capacity
when 0
  "You ran out of gas."
when 1..20
  "The tank is almost empty. Quickly, find a gas station!"
when 21..70
  "You should be ok for now."
when 71..100
  "The tank is almost full."
else
  "Error: capacity has an invalid value (#{capacity})"
end
end


