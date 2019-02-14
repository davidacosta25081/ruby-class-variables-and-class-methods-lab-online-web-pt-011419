class Song
  @@count = 0
  @@genres = []
  @@genres2 = []
  @@artists = []
  @@artists2 = []
  def initialize(name,artist,genre)
      @name= name
      @artist= artist
      @genre= genre
      @@genres << genre
      @@count += 1
      @@artists << artist
end

attr_accessor :name, :artist, :genre


  def self.count
   @@count
  end

def self.genres
   @@genres
   @@genres2 = @@genres.uniq
end

def self.artists
  @@artists
  @@artists2 = @@artists.uniq
end

def self.genre_count

@@genres.uniq.map { |x| [x,@@genres.count(x)]}.to_h

end


def self.artist_count

@@artists.uniq.map { |x| [x,@@artists.count(x)]}.to_h

end



end
