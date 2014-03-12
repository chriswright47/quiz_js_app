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

question3 = quiz.questions.create(question: "What is the capital of Utah?")
question3.choices.create(choice: "Reno", is_correct: false)
question3.choices.create(choice: "Salt Lake City", is_correct: true)
question3.choices.create(choice: "Provo", is_correct: false)
question3.choices.create(choice: "Park City", is_correct: false)

question4 = quiz.questions.create(question: "What is the capital of New Mexico?")
question4.choices.create(choice: "Santa Fe", is_correct: true)
question4.choices.create(choice: "Albuquerque", is_correct: false)
question4.choices.create(choice: "Flagstaff", is_correct: false)
question4.choices.create(choice: "None of the above", is_correct: false)

question5 = quiz.questions.create(question: "What is the capital of Alaska?")
question5.choices.create(choice: "Juneau", is_correct: true)
question5.choices.create(choice: "Anchorage", is_correct: false)
question5.choices.create(choice: "Nome", is_correct: false)
question5.choices.create(choice: "Ketchikan", is_correct: false)

quiz_two = Quiz.create(name: "NFL Teams")

question11 = quiz_two.questions.create(question: "Which team is not in the NFC West?")
question11.choices.create(choice: "Seattle Seahawks", is_correct: false)
question11.choices.create(choice: "Arizona Cardinals", is_correct: false)
question11.choices.create(choice: "St. Louis Rams", is_correct: false)
question11.choices.create(choice: "Denver Broncos", is_correct: true)

question12 = quiz_two.questions.create(question: "Which NFL team beat the Patriots twice in the Super Bowl, in 2008 and 2012?")
question12.choices.create(choice: "Indianapolis Colts", is_correct: false)
question12.choices.create(choice: "Baltimore Ravens", is_correct: false)
question12.choices.create(choice: "NY Giants", is_correct: true)
question12.choices.create(choice: "Green Bay Packets", is_correct: false)

question13 = quiz_two.questions.create(question: "Which NFL plays in Tampa, Florida?")
question13.choices.create(choice: "Raiders", is_correct: false)
question13.choices.create(choice: "Buccaneers", is_correct: true)
question13.choices.create(choice: "Jaguars", is_correct: false)
question13.choices.create(choice: "Panthers", is_correct: false)

question14 = quiz_two.questions.create(question: "Which NFL team did Brett Favre last play for?")
question14.choices.create(choice: "Vikings", is_correct: false)
question14.choices.create(choice: "Packers", is_correct: false)
question14.choices.create(choice: "Saints", is_correct: false)
question14.choices.create(choice: "Jets", is_correct: true)

question15 = quiz_two.questions.create(question: "Which NFL team drafted Marshawn Lynch?")
question15.choices.create(choice: "Raiders", is_correct: false)
question15.choices.create(choice: "Seahawks", is_correct: false)
question15.choices.create(choice: "Bills", is_correct: true)
question15.choices.create(choice: "49ers", is_correct: false)