require "diary"
require "diary_entry"

RSpec.describe "Diary Integration" do
  it "lists out the entries added" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my title", "my contents")
    diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end

  describe "word counting behaviour" do
    it "counts the words in all diary entries' contents" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 5
    end
  end

  describe "reading time behaviour" do
    # Remember the case where wpm is 0
    it "calculates the reading time for all entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time).to eq 3
    end
  end
end