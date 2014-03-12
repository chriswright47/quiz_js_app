// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(function () {
  var quiz = null;
  var key = null;
  $('#get_quizzes').on('click', function() {
    $.get('/quizzes.json', function(response) {
      renderQuizList(response.quizzes);
    });
  });

  $('.container').on('click', '.quiz_link', function() {
    key = Math.random();
    var quizId = $(this).data('quiz-id');
    var quizName = $(this).text();
    quiz = new Quiz(quizId, quizName);
    $.get('/quizzes/'+quiz.id+'/questions/next.json', {session_key: key}, function(response) {
      var question = new Question(response.question.question_id, response.question, response.question.choices);
      $('.container').html(question.render());
      $('.status_bar').html(quiz.renderNewStatus());
    });

  });

  $('.container').on('click', '.answer', function() {
    // need to make ajax request and find out if answer was correct
    var choice_id = $(this).data('answer-id');
    var question_id = $(this).data('question-id');
    $.post('questions/'+question_id+'/answers.json', {session_key: key, choice_id: choice_id}, function(response) {
      var answer = new Answer(response.status.correct);
      quiz.addAnswer(answer);
      $('.status_bar').html(renderQuizStatus(response.status));
      $.get('/quizzes/'+quiz.id+'/questions/next.json', {session_key: key}, function(response) {
        var question = new Question(response.question.question_id, response.question, response.question.choices);
        $('.container').html(question.render());
      });
    });

  });




});