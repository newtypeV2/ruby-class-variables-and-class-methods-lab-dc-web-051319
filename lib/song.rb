require "pry"
class Song

attr_accessor :name,:artist,:genre

@@count = 0
@@genres = []
@@artists = []
@@artist_count = {}
@@genre_count = {}

  def initialize(name, artist,genre)
    @name=name
    # binding.pry
    @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
    @@artists << artist
    @artist=artist
    @@genre_count[genre] ? @@genre_count[genre]+= 1 : @@genre_count[genre]= 1
    @@genres << genre
    @genre=genre
    @@count+=1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
