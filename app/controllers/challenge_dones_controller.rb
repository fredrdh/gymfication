class ChallengeDonesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @challenge_done = ChallengeDone.new(challenge_done_params)
    if @challenge_done.save
      redirect_to challenges_path, notice: "Pontos atribuídos!"
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

  def challenge_done_params
    params.require(:challenge_done).permit(:user_id, :challenge_id)
  end
end
