class Question < ActiveRecord::Base

  # include Linguistics::EN
  require 'numbers_in_words'
  require 'numbers_in_words/duck_punch'

  validates_presence_of :question
  validates_presence_of :answer

  def is_correct?(submission)
    if answer.split.join(" ").downcase == submission.split.join(" ").downcase
      true
    elsif answer.split.join(" ").downcase != submission.split.join(" ").downcase
      if submission.in_numbers.to_s == answer || submission.to_i.in_words == answer
        true
      else
        false
      end
    end 

  end
  
end
