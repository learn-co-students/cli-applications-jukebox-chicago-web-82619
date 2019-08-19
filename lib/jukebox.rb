def help 
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |item, index|
        puts "#{index + 1}. #{item}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.strip
    
    songs_list = {}
    songs.each_with_index {|song, index| songs_list[index + 1] = song }
    songs_list.each do |index, song|
    if input == index.to_s || input == song
      puts "Playing #{song}"
      return
    else
      puts "Invalid input, please try again"
      return
    end
  end
end

def exit_jukebox 
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    input = gets.strip
    while input != "exit" do
      case input
      when "list"
        list(songs)
        return
      when "play"
        play(songs)
        return
      when "help"
        help
        return
      end
    end
    exit_jukebox
  end


