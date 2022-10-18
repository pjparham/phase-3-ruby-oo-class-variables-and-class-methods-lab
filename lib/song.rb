require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        genres = @@genres.uniq
    end

    def self.artists
        artists = @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

love_on_top = Song.new("Love on Top", "Beyonce", "R&B")
love_on_top_too = Song.new("Love on Top", "Beyonce", "R&B")
sorry = Song.new("Sorry", "Justin Bieber", "Pop")
