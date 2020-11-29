class SchedulersController < ApplicationController
  before_action :set_scheduler, only: [:show, :update, :destroy]

  # GET /schedulers
  def index
    @schedulers = Scheduler.all

    render json: @schedulers.to_json(include: [:user, :event])
  end

  # GET /schedulers/1
  def show
    render json: @scheduler.to_json([include: [:user, :event]])
  end

  # POST /schedulers
  def create
    @scheduler = Scheduler.new(scheduler_params)

    if @scheduler.save
      render json: @scheduler, status: :created, location: @scheduler
    else
      render json: @scheduler.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schedulers/1
  def update
    if @scheduler.update(scheduler_params)
      render json: @scheduler
    else
      render json: @scheduler.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schedulers/1
  def destroy
    @scheduler.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduler
      @scheduler = Scheduler.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scheduler_params
      params.require(:scheduler).permit(:user_id, :event_id, :qty)
    end
end
