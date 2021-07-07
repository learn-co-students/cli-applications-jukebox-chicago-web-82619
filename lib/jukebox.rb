# Add your code here
=begin
def say_hello(name)
  "Hi #{name}!"
end 

puts "Enter your name:"
users_name = gets.strip

puts say_hello(users_name)
=end

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index|
    puts "#{index+1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  songs.each_with_index { |song, index|
    if response == song || response == "#{index+1}"
      puts "Playing #{song}"
      return
    end
  }
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

###################################################
def run(songs) 
  puts "Please enter a command:"
  input = gets.strip
  until input == "exit"
    case input
      when "help"
        help 
      when "list"
        list(songs)
      when "play"
        play(songs)
    end
    input = gets.strip
  end
  exit_jukebox
end
