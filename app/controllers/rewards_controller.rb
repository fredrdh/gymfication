class RewardsController < ApplicationController

  def new
    @reward = Reward.new
  end

  def create
    @reward = Reward.new(reward_params)

    if @reward.save
      redirect_to rewards_index_path, notice: 'A recompensa foi criada.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def index
    @rewards = Reward.all
  end

  def show
    @reward = Reward.find(params[:id])
  end

  def edit
    @reward = Reward.find(params[:id])
  end

  def update
    @reward = Reward.find(params[:id])
    if @reward.update(reward_params)
      redirect_to reward_index_path, notice: 'A recompensa foi atualizada'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @reward = Reward.find(params[:id])
    @reward.destroy
    redirect_to reward_index_path, notice: 'A recompensa foi deletada com sucesso.', status: :see_other
  end

  private

  def reward_params
    params.require(:reward).permit(:title, :points)
  end
end
