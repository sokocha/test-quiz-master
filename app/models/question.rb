class Question < ActiveRecord::Base

  validates_presence_of :question
  validates_presence_of :answer

  def is_correct?(submission)
    answer.split.join(" ").downcase == submission.split.join(" ").downcase
  end



end
