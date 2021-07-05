# Add your code here
def help
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end

def list(songs)
  songs.length.times do |index|
    puts "#{index+1}. #{songs[index]}"
  end
end
def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.chomp
  get_song ="Invalid input, please try again"
  songs.length.times do|index|
   if song_request == (index+1).to_s || song_request == songs[index]
     get_song = "Playing #{songs[index]}"
   end
  end
  puts get_song
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp 
  while command != "exit" do
    
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    end
    puts "Please enter a command:"
  command = gets.chomp 
  end 
  if command == "exit"
    exit_jukebox
  end
end