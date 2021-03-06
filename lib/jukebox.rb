

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
  puts "  I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if songs.include?(choice)
    puts "Playing #{choice}"
  elsif choice.to_i > 0 && choice.to_i <= songs.length
    puts "Playing #{songs[choice.to_i - 1]}"
  else
  puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  loop do
    puts "Please enter a command:"
    choice = gets.chomp
    help if choice == "help"
    play(songs) if choice == "play"
    list(songs) if choice == "list"
    break if choice == "exit"
  end

  exit_jukebox

  #loop until choice is exit
end
