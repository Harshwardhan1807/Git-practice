words = ["ruby", "rails", "docker", "linux", "backend", "database", "github"]

word = words.sample
guessed_letters = []
wrong = 0
max_wrong = 6

def show_word(word, guessed_letters)
  result = ""
  word.each_char do |ch|
    if guessed_letters.include?(ch)
      result += ch + " "
    else
      result += "_ "
    end
  end
  result.strip
end

def hangman_pic(wrong)
  pics = [
"  +---+
  |   |
      |
      |
      |
      |
=========",
"  +---+
  |   |
  O   |
      |
      |
      |
=========",
"  +---+
  |   |
  O   |
  |   |
      |
      |
=========",
"  +---+
  |   |
  O   |
 /|   |
      |
      |
=========",
"  +---+
  |   |
  O   |
 /|\\  |
      |
      |
=========",
"  +---+
  |   |
  O   |
 /|\\  |
 /    |
      |
=========",
"  +---+
  |   |
  O   |
 /|\\  |
 / \\  |
      |
========="
  ]

  pics[wrong]
end

puts "===== HANGMAN GAME ====="
puts "Guess the word (letters only)"
puts

while wrong < max_wrong
  puts hangman_pic(wrong)
  puts
  puts "Word: #{show_word(word, guessed_letters)}"
  puts "Guessed: #{guessed_letters.join(", ")}"
  puts "Lives left: #{max_wrong - wrong}"

  print "Enter a letter: "
  letter = gets.chomp.downcase
  
  if guessed_letters.include?(letter)
    puts "Already guessed! Try new letter.\n\n"
    next
  end

  guessed_letters.push(letter)

  if word.include?(letter)
    puts "Correct!\n\n"
  else
    wrong += 1
    puts "Wrong!\n\n"
  end


  all_found = true
  word.each_char do |ch|
    if !guessed_letters.include?(ch)
      all_found = false
      break
    end
  end

  if all_found
    puts "YOU WON!"
    puts "Word was: #{word.upcase}"
    exit
  end
end

puts hangman_pic(wrong)
puts "YOU LOST!"
puts "Word was: #{word.upcase}"