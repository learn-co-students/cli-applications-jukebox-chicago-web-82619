# Add your code here

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  valid_input = false
  
  until valid_input == true
    if songs.any? {|song| song.include?(input)}
      valid_input = true
      break
    else
      puts "Invalid input, please try again"
      puts "Please enter a song name or number:"
      input = gets.strip
    end
  end
    
  songs.each do |song|
    if song.include?(input)
      puts "Playing #{song}"
    end
  end
end 

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  until input == "exit"
    case input
    when "list"
      list(songs)
      puts "Please enter a command:"
      input = gets.strip
    when "play"
      play(songs)
      puts "Please enter a command:"
      input = gets.strip
    when "help"
      help
      puts "Please enter a command:"
      input = gets.strip
    when "exit"
      exit_jukebox
      break
    else
      puts "Invalid command"
      puts "Please enter a command"
      input = gets.strip
    end
  end
end