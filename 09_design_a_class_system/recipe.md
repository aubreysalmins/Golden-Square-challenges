 Multi-Class Planned Design Recipe
1. Describe the Problem
  As a user
  So that I can record my experiences
  I want to keep a regular diary

  As a user
  So that I can reflect on my experiences
  I want to read my past diary entries

  As a user
  So that I can reflect on my experiences in my busy day
  I want to select diary entries to read based on how much time I have and my reading speed

  As a user
  So that I can keep track of my tasks
  I want to keep a todo list along with my diary

  As a user
  So that I can keep track of my contacts
  I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System
  class Diary
    def add(entry) 
    end

    def entries
    end
  end

  class DiaryEntry
    def initialize(title, contents)
    end

    def title
      Return title as a string
    end

    def contents
      Returns the contents as a string
    end
  end

  class TaskList
    def add(task)
    end

    def list_tasks
    end
  end

  class Task
    def initialize(title)
    end

    def title
    end
  end

  class DiaryReader
    def initialize(wpm, diary)
    end

    def find_most_readable_in_time(time)
    end
  end

  class PhoneNumberCrawler
    def initialize(diary)
    end

    def extract_numbers
    end
  end
3. Create Examples as Integration Tests
diary = Diary.new
entry_1 = DiaryEntry.new("my title", "my contents")
entry_2 = DiaryEntry.new("my title two", "my contents two")
diary.add(entry_1)
diary.add(entry_2)
expect(diary.entries).to eq [entry_1, entry_2]

diary = Diary.new
reader = DiaryReader.new(2, diary)
entry_1 = DiaryEntry.new("title1", "one")
entry_2 = DiaryEntry.new("title2", "one two")
entry_3 = DiaryEntry.new("title3", "one two three")
entry_4 = DiaryEntry.new("title4", "one two three four")
entry_5 = DiaryEntry.new("title5", "one two three four five")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.add(entry_4)
diary.add(entry_5)
expect(reader.find_most_readable_in_time(2)).to eq entry_4

diary = Diary.new
reader = DiaryReader.new(2, diary)
entry_1 = DiaryEntry.new("title1", "one")
entry_2 = DiaryEntry.new("title2", "one two")
entry_3 = DiaryEntry.new("title3", "one two three")
entry_4 = DiaryEntry.new("title4", "one two three four five")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.add(entry_4)
expect(reader.find_most_readable_in_time(2)).to eq entry_3

diary = Diary.new
reader = DiaryReader.new(2, diary)
expect(reader.find_most_readable_in_time(2)).to eq nil

diary = Diary.new
DiaryReader.new(2, diary)
entry_1 = DiaryEntry.new("title1", "one two three four five")
diary.add(entry_1)
expect(reader.find_most_readable_in_time(2)).to eq nil

task_list = TaskList.new
task_1 = Task.new("Walk the dog")
task_2 = Task.new("Walk the cat")
task_list.add(task_1)
task_list.add(task_2)
expect(task_list).to eq [task_1, task_2]

diary = Diary.new
phone_book = PhoneNumberCrawler.new(diary)
diary.add(DiaryEntry.new("title1", "my friend 07000000000 is cool"))
diary.add(DiaryEntry.new("title1", "my friends 07000000000, 07000000001 and 07000000002 are cool"))
expect(phone_book.extract_numbers).to eq [
  "07000000000"
  "07000000001"
  "07000000002"
]
5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.