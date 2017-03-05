# This extracts lines from the txt file and formats them into the 'struct'.

Song = Struct.new(:title, :artist, :length)

File.open("songdata.txt") do |song_file|
  songs = []

  song_file.each do |line|
    file, length, artist, title = line.chomp.split(/\s*\|\s*/)
    artist.squeeze!(" ")
    mins, secs = length.scan(/\d+/)
    songs << Song.new(title, artist, mins.to_i*60 + secs.to_i)
  end

  puts songs[0..2]
end
