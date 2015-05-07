# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.delete_all

Question.create(question: "<kbd>How old is Sadiq Okocha? </kbd>", answer: '27')
Question.create(question: "<pre><h4>What does H<sub>2</sub>O represent?</h4></pre>", answer: 'water')
Question.create(question: "<h2><i><samp>Who let the</samp> <code>dogs</code> out?</i></h2>", answer: 'snoopy')

Question.create(question: 'if <var>x</var> = 3, what is  <code><b><var>x</var></b> + <b>4</b></code>?', answer: '7')
Question.create(question: '<h4><kbd>How old</kbd> are you?</h4>', answer: '27')
Question.create(question: 'Which bear is best? <ul><li>brown bear</li><li>panda bear</li><li>polar bear</li></ul>', answer: 'brown bear')
Question.create(question: 'What color <kbd>is <code>white</code> wine</kbd>?', answer: 'wine')
Question.create(question: 'What comes next? <ol><li></li><li></li><li></li><li></li></ol>', answer: '5')
Question.create(question: '<b>How</b> does the <i>kitty</i> cat go?', answer: 'meow')
Question.create(question: '<pre>what would you do for a <strong>klondike</strong> bar?</pre>', answer: 'anything!')
Question.create(question: "<samp>When</samp> was the <sub>following</sub> company founded <a href = 'http://google.com'>Google</a>?", answer: '1996')
