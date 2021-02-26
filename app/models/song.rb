class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
      if Artist.find_by_name(name) != nil
          self.artist = Artist.find_by_name(name)
      else
          new_artist = Artist.create(name: name)
          self.artist = new_artist
          self.save
      end
  end

end
