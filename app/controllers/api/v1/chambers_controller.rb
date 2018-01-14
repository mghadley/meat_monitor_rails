class Api::V1::ChambersController < Api::ApplicationController
  before_action :find_chamber
  before_action :authorize_token

  def show
    json_response @chamber
  end

  def update
    if @chamber.update(chamber_params)
      json_response @chamber
    else
      raise ActiveRecord::RecordInvalid
    end
  end 

  private

  def find_chamber
    @chamber = Chamber.find(params[:id])
  end

  private

  def chamber_params
    params.require(:chamber).permit(:target_humidity, :target_temp, :current_humidity, :current_temp)
  end

  def authorize_token
    unless params['token'] == @chamber.token
      json_response({ message: 'Correct token is required' }, :unauthorized)
    end
  end
end
