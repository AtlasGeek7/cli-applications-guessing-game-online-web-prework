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
  case input
  when randNum.to_s
    puts "You guessed the correct number!"
  when "exit"
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed #{randNum}"
  end
end


