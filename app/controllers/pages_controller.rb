class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @total_sales = Challenge.joins(:challenge_dones).sum(:price)

      # Grouping challenges done by user_id
      challenges_done_per_user = current_user.challenge_dones.group(:user_id).pluck(:user_id, Arel.sql('array_agg(challenge_id)'))

      # Fetch current user's email and challenge titles
      @labels_challenges_done_per_user = {}
      challenges_done_per_user.each do |user_id, challenge_ids|
        challenges = Challenge.where(id: challenge_ids.flatten.uniq).pluck(:title)
        @labels_challenges_done_per_user[current_user.email] = challenges
      end

      
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
