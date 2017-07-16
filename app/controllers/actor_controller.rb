class ActorController < ApplicationController

  # GET /actors
  def query
    result = Schema.execute params[:query]
    render json: result
  end

end
