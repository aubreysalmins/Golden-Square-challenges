
class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
  end

  def all
    return @tracks
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
  end
end