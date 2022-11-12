# frozen_string_literal: true

# Questions controller
class QuestionsController < ApplicationController
  def ask() end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question == 'I am going to work' || @question == 'i am going to work'  # =~ /i am going to work/i
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
