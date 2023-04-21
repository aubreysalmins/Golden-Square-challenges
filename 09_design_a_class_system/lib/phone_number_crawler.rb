class PhoneNumberCrawler
  def initialize(diary)
    @diary = diary
  end

  def extract_numbers
    @diary.entries.map do |entry|
      extract_numbers_from_entry(entry)
    end.flatten.uniq
  end

  def extract_numbers_from_entry(entry)
    return entry.contents.scan(/07[0-9]{9}/)
  end
end