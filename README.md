# quizzes

## This app exposes an API for a simple quiz appication.
It is a one-page app using jQuery, Javascript, and AJAX to render questions to the user, allow her to submit answers, tell her whether or not her submitted answer was correct, and give her her final correct / incorrect tally.

To get started, you can clone this repo and run the following commands:

rake db:setup

rails s

Then visit localhost:3000 to interact with the application


#### Request

```
GET /quizzes.json
```

#### Response

```javascript
{
  quizzes: [
    {
      quiz_id: 1,
      name: "Random Stuff"
    },
    {
      quiz_id: 2,
      name: "Javascript Questions"
    }
  ]
}
```

### Get Next Question

#### Request

```
GET /quizzes/1/questions/next.json
```

#### Request Data

Every request (except listing quizzes) must pass a "session_key" which uniquely identifies the particular user taking the quiz. The session key should be a unique string. I use Math.random() to generate a unique jey and send it with other data to the API.

```javascript
{ session_key: '0.01847296' }
```

#### Response

```javascript
{
  question: {
    quiz_id: 1,
    question_id: 1,
    question: "Did your mom go to college?",
    choices: [
      {
        quiz_id: 1,
        question_id: 1,
        choice_id: 12,
        choice: "Yes"
      },
      {
        quiz_id: 1,
        question_id: 1,
        choice_id: 13,
        choice: "No"
      }
    ]
  }
}
```

### Submit Answer

#### Request

```
POST /questions/1/answers.json
```

#### Request Data

```javascript
{ session_key: '0.01847296', choice_id: 12 }
```


#### Response

```javascript
{
  status: {
    quiz_id: 1,
    question_id: 1,
    more_questions: true,
    correct: false,
    submitted_choice_id: 12,
    correct_choice_id: 13,
    num_correct: 0,
    num_incorrect: 1
  }
}
```
