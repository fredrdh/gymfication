class ChallengesDoneController < ApplicationController
  def index
  end

  def new
    @challenge_done = ChallengesDone.new
  end

  def create
    @challenge_done = ChallengesDone.new(challenges_done_params)
    if @challenge_done.save
      redirect_to index, notice: "Pontos atribuídos!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def challenges_done_params
    params.require(:challenges_done).permit(:user_id, :challenge_id)
  end
end
