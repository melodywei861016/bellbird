class Alarms::VotesController < ApplicationController

  def create
      @alarm.votes.where(user_id: current_user.id).
end
