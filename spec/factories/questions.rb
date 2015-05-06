require 'faker'

FactoryGirl.define do
  factory :question do |f|
    f.question "Guess a number between 1 and 10?"
    f.answer {Faker::Number.digit}
    f.submission {Faker::Number.digit}
  end

  factory :invalid_question, parent: :question do |f|
    f.question nil
    f.submission nil
  end


end