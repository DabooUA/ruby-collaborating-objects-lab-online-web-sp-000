class Song
	attr_accessor :artist, :name

	 def initialize(name)
	    @name = name
	 end

   #def artist_name=(name)
    #self.artist = Artist.find_or_create_by_name(name)
    #artist.add_song(self)
  #end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end

  #def self.new_by_filename(file_name)
  #  song = file_name.split(" - ")[1]
  #  artist = file_name.split(" - ")[0]
  #  new_song = self.new(song)
  #  new_song.artist_name = artist
  #  new_song
  #end
  def self.new_by_filename(file)
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end
end
