class WorkoutsController < ProtectedController
  before_action :authenticate
  before_action :set_workout, only: %i[show update destroy]

  # GET /workouts
  def index
    @workouts = Workout.where(week: params[:week])
                       .where(user_id: current_user.id)

    render json: @workouts
  end

  # GET /workouts/1
  def show
    render json: @workout
  end

  # POST /workouts
  def create
    @workout = current_user.workouts.build(workout_params)

    if @workout.save
      render json: @workout, status: :created
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  def update
    if @workout.update(workout_params)
      render json: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = current_user.workouts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def workout_params
      params.require(:workout).permit(:week, :day, :exercise, :sets, :reps)
    end
end
