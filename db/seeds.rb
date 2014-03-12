# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quiz = Quiz.create(name: "State Capitals")

question1 = quiz.questions.create(question: "What is the capital of Oregon?")
question1.choices.create(choice: "Portland", is_correct: false)
question1.choices.create(choice: "Medford", is_correct: false)
question1.choices.create(choice: "Salem", is_correct: true)
question1.choices.create(choice: "None of the Above", is_correct: false)

question2 = quiz.questions.create(question: "What is the capital of Washington?")
question2.choices.create(choice: "Seattle", is_correct: false)
question2.choices.create(choice: "Olympia", is_correct: true)
question2.choices.create(choice: "Tacoma", is_correct: false)
question2.choices.create(choice: "Spokane", is_correct: false)

quiz_two = Quiz.create(name: "NFL Teams")

question3 = quiz_two.questions.create(question: "Which team is not in the NFC West?")
question3.choices.create(choice: "Seattle Seahawks", is_correct: false)
question3.choices.create(choice: "Arizona Cardinals", is_correct: false)
question3.choices.create(choice: "St. Louis Rams", is_correct: false)
question3.choices.create(choice: "Denver Broncos", is_correct: true)

question4 = quiz_two.questions.create(question: "Which NFL plays in Tampa, Florida?")
question4.choices.create(choice: "Raiders", is_correct: false)
question4.choices.create(choice: "Buccaneers", is_correct: true)
question4.choices.create(choice: "Jaguars", is_correct: false)
question4.choices.create(choice: "Panthers", is_correct: false)
