# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([name: 'Star Wars' }, name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Taehoon = User.create(username: 'Taehoon')
  Jeffrey = User.create(username: 'Jeffrey')
  Ernie = User.create(username: 'Ernie')
  Stanton = User.create(username: 'Stanton')
  Andrew = User.create(username: 'Andrew')

  poll1 = Poll.create(title: 'This is Poll 1!!!!', author_id: 5)
  poll2 = Poll.create(title: 'Poll 2 is the best', author_id: 4)
  poll3 = Poll.create(title: 'Im poll number 3', author_id: 3)
  poll4 = Poll.create(title: 'poll number 4 over here', author_id: 2)
  poll5 = Poll.create(title: '5th poll right here', author_id: 1)

  question1 = Question.create(text: 'Favorite food?', poll_id: 1)
  question2 = Question.create(text: 'Favorite color?', poll_id: 2)
  question3 = Question.create(text: 'Age?', poll_id: 3)
  question4 = Question.create(text: 'Height?', poll_id: 4)
  question5 = Question.create(text: 'Name?', poll_id: 5)

  answer_choice1 = AnswerChoice.create(text: 'Hot Dog', question_id: 1)
  answer_choice2 = AnswerChoice.create(text: 'Burger',question_id: 1)
  answer_choice3 = AnswerChoice.create(text: 'Black',question_id: 2)
  answer_choice4 = AnswerChoice.create(text: 'Yellow',question_id: 2)
  answer_choice5 = AnswerChoice.create(text: '3yo',question_id: 3)
  answer_choice6 = AnswerChoice.create(text: '30yo',question_id: 3)
  answer_choice7 = AnswerChoice.create(text: '6ft',question_id: 4)
  answer_choice8 = AnswerChoice.create(text: '5ft',question_id: 4)
  answer_choice9 = AnswerChoice.create(text: 'Joe',question_id: 5)
  answer_choice10 = AnswerChoice.create(text: 'Jessica',question_id: 5)

  response1 = Response.create(user_id: 1, answer_choice_id: 5)
  response2 = Response.create(user_id: 2, answer_choice_id: 4)
  response3 = Response.create(user_id: 3, answer_choice_id: 3)
  response4 = Response.create(user_id: 4, answer_choice_id: 2)
  response5 = Response.create(user_id: 5, answer_choice_id: 1)
  response6 = Response.create(user_id: 4, answer_choice_id: 7)

end

