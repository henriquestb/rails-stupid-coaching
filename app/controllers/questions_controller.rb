class QuestionsController < ApplicationController
  def ask; end

  def resposta
    @resp = params[:resposta]
    options = ["I don't care", 'Great Motherfucker', 'silly question beatch']
    @resposta = if params[:resposta].include? 'I AM GOING TO WORK RIGHT NOW!'
                  options[1]
                elsif params[:resposta].include? '?'
                  options[2]
                else
                  options[0]
                end
  end
end
