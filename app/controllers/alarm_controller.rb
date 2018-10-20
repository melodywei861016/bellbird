require "uri"
require "net/http"
class AlarmController < ApplicationController
  def index
    @alarms = Alarm.order('created_at DESC')
  end

  def create
    @alarm = Alarm.new(alarm_params)

    if @alarm.save
      x = Net::HTTP.post_form(URI.parse('https://bellbird.joinhandshake-internal.com/push'), {alarm_id: @alarm.id})
      redirect_to alarm_index_path
    else
      error_response(@alarm)
    end
  end

  def upvote
    @session = VoterSession.find_by(session_id: request.session_options[:id])
    if @session == nil
      @session = VoterSession.create(session_id: request.session_options[:id])
    end
    @alarm = Alarm.find(params[:id])
    @alarm.upvote_by @session
    redirect_to alarm_index_path
  end

  private
    def alarm_params
      params.permit(:name)
    end

end
