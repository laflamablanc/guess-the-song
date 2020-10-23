class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :filename, :ask, :game_id, :answer1, :answer2, :answer3, :answer4, :genre, :answers, :correct

  def answers
    # Answers.all.map do |answer|
    #   answer.name
    # end
  end



end
