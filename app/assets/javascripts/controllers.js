App.Controllers.Quizzes = (function(){
  var quizzes = {};
  quizzes.index = function() {
    var all = App.Models.Quizz.all();
      $(all).on('updated', function(e, data) {
        quizzes.qs = data.quizzes;
        App.Views.QuizzesIndex.render(quizzes.qs);
      });
  }
  return quizzes;
}());
