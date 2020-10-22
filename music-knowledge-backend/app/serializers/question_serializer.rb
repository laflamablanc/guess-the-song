class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :filename, :ask, :game_id, :answer1, :answer2, :answer3, :answer4, :artist, :name, :genre, :answers, :correct

  def answers
  end

  def correct
  end

end
