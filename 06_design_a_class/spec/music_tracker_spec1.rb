require "music_tracker1"

describe MusicTracker do
  context "given no tracks" do
    it "returns an empty array" do
      music_tracker = MusicTracker.new
      expect(music_tracker.list_tracks).to eq []
    end
  end

  context "given multiple tracks" do
    it "returns a list of those tracks" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("Track 1")
      music_tracker.add_track("Track 2")
      expect(music_tracker.list_tracks).to eq ["Track 1", "Track 2"]
    end
  end

  context "given a duplicate track name" do
    it "fails" do
      music_tracker = MusicTracker.new
      music_tracker.add_track("Track 1")
      expect { music_tracker.add_track("Track 1") }.to raise_error "Track already added"
    end
  end
end