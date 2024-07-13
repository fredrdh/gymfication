class RewardsGivenController < ApplicationController
  def new
    @rewards_given = RewardGiven.new
  end

  def create
    @rewards_given = RewardGiven.new(rewards_given_params)
  end

  def index
  end

  def destroy
  end

  private

  def rewards_given_params
    params.require(:rewards_given).permit(:reward_id, :user_id)

  end
end
