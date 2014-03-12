function Question(id, question, choices) {
  this.id = id;
  this.question = question;
  this.choices = choices;
}

Question.prototype.render = function() {
  return '<h3>' + this.question.question + '</h3>' + this.renderChoices();
}

Question.prototype.renderChoices = function() {
  var list = '<ul>';
  for (var i=0; i<this.choices.length; i++) {
    var choice = this.choices[i]
    list += '<li class="answer" data-question-id='+this.id+' data-answer-id='+choice.choice_id+'>'
    list += choice.choice + '</li>'
  }
  list += '</ul>'
  return list;
}