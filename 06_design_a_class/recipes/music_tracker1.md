{{PROBLEM}} Class Design Recipe
1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
class MusicTracker
  def initialize
  end

  def add_track(track) # track is a string
    # returns nothing
  end

  def list_tracks
    # Returns a list of tracks as an array of strings
  end
end
3. Create Examples as Tests

# 1
music_tracker = MusicTracker.new
music_tracker.list_tracks
=> []

# 2
music_tracker = MusicTracker.new
music_tracker.add_track("Track 1")
music_tracker.add_track("Track 2")
music_tracker.list_tracks
=> ["Track 1", "Track 2"]

# 3
music_tracker = MusicTracker.new
music_tracker.add_track("Track 1")
music_tracker.add_track("Track 1")
=> "Track already added"

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.