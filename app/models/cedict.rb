class Cedict < ActiveRecord::Base
  set_table_name "cedict"


  def self.retrieve_word_list(words)
    words_to_get = words.split()
    result = []
    for word in words_to_get
      temp_word = self.find(:first, :conditions => ["definition like ?", "%" + word + "%"])
      if !temp_word.nil?
        result << temp_word
      else
        result << "---blank---"
      end
    end 
    
    return result
    
  end

end
