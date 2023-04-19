require "music_tracker"

describe MusicTracker do
  context "when given no tracks" do
    it "returns an empty list" do
      music_tracker = MusicTracker.new
      expect(music_tracker.list_tracks).to eq []
    end
  end

  context "when given multiple tracks" do
    it "returns those tracks in a list" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("Track 1")
      music_tracker.add_track("Track 2")
      expect(music_tracker.list_tracks).to eq ["Track 1", "Track 2"]
    end
  end

  context "when given a track already in the list" do
    it "fails" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("Track 1")
      expect { music_tracker.add_track("Track 1") }.to raise_error "Track already added"
    end
  end
end