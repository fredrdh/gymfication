class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @total_sales = Challenge.joins(:challenge_dones).sum(:price)

  @challenges_done_prices = Challenge.joins(:challenge_dones)
                                    .where('challenges.price > 0')
                                     .group(:id, :title)
                                     .sum(:price)
  @labels_sales = @challenges_done_prices.keys.map { |id, title| title }
  @data_sales = @challenges_done_prices.values
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
