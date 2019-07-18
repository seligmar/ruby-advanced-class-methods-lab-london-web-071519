require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    new_song = self.new
    @@all << new_song
    new_song
  end 

  def self.new_by_name(name)
     new_song = self.new  
     new_song.name = name 
     new_song 
  end 
  
  def self.create_by_name(name)
    new_song = self.new  
     new_song.name = name 
     @@all << new_song
     new_song
  end 
  
  def self.find_by_name(name)
    song_find_by_name = @@all.find{ |songs| songs.name == name}  
    song_find_by_name
  end 
  
  def self.find_or_create_by_name(name)
    find_by_name(name) ? find_by_name(name) : create_by_name(name)
  end 
    
  # def self.alphabetical 
  # @@all.sort_by do |names|
  #   names.sort { |a, b| a <=> b }
  # end 
  # end 
  
   def self.create_from_filename(name, artist_name, file_format)
     
   end 
  
  def self.destroy_all
    self.all.clear 
  end 
  
end
