class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @challenges_done_count = ChallengeDone.group(:challenge_id).count

    @labels_challenges = @challenges_done_count.keys.map { |id| Challenge.find(id).title }
    @data_challenges = @challenges_done_count.values

    @top_users = User.joins(:challenge_dones)
                     .joins('INNER JOIN challenges ON challenge_dones.challenge_id = challenges.id')
                     .select('users.*, SUM(challenges.points) as total_points')
                     .group('users.id')
                     .order('total_points DESC')
                     .limit(3)
  end
end
