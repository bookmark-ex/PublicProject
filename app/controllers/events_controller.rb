class EventsController < ApplicationController
  def index
    @events = Event.all
  
    #ViewのFormで取得したパラメータをモデルに渡す
    @events = Event.search(params[:search]) if params[:search].present?
  end
end
