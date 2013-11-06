App.Views.QuizzesIndex = {
  render: function(quizzes) {
    quizzes.every(function(quizz){
      $('.container').append(Mustache.render($("#quizz").html(), {name: quizz.name}));
    })

  }
}
