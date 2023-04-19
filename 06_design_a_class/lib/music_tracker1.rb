class MusicTracker
  def initialize
    @tracks = []
  end

  def add_track(track)
    fail "Track already added" if @tracks.include? track
    @tracks << track
  end

  def list_tracks
    return @tracks
  end

end