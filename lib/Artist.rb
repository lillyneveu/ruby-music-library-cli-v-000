require 'pry'

class Artist
  attr_accessor :artist, :name, :title
  extend Concerns::Findable

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
    self
  end

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end

end