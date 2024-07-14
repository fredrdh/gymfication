class ChallengesController < ApplicationController

  def new

  end

  def create
  end

  def index
    @users = User.all
    @challenges = Challenge.all
    @challenge_done = ChallengeDone.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
