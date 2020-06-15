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
  puts "- list : displays a list of songs to play"
  puts "- exit : exits this program"
end

def play (songs)
song = gets.chomp
  counter = 0
  if songs.include?(song)
    puts song
  elsif song.length == 1
    puts songs[song.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
end

def exit_jukebox
  puts "Goodbye"
end

def run(argument)
  help
  puts "Please enter a command:"
  var = gets.chomp
  case var
    when "exit"
      exit_jukebox
    when "help"
      help
    when "list"
      list
    end
  end
end
