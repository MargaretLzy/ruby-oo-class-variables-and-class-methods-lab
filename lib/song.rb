class Song

@@count=0
@@artists=[]
@@genres =[]
@@hashgenre={}
@@hashartist={}
attr_accessor :name, :artist, :genre
def initialize(name, artist, genre)
  @name =name
  @artist = artist
  @genre = genre
  @@count +=1
@@artists << artist
@@genres << genre
end

def self.count
  @@count
end

def self.artists
  @@artists.uniq  do|artist|
  artist
end
end

def self.genres
  @@genres.uniq do |genre|
    genre
end
end

def self.genre_count
  @@genres.each do |genre| 
 @@hashgenre[genre]= @@genres.count(genre)
end
@@hashgenre
end

def self.artist_count
  @@artists.each do |artist|
  @@hashartist[artist]= @@artists.count(artist)
end
@@hashartist
end
end
