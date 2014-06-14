class Bracket < ActiveRecord::Base

  belongs_to :game
  belongs_to :user

  scope :game_by_group, lambda{|group| by_group(group)}

  def point
    points = 0
    return 0 if game.nil?
    points += game.round if game.team_a == team_a
    points += game.round if game.team_b == team_b
    points
  end

  def self.total_point(user)
    brackets = includes(:game).where(user: user)
    brackets.map(&:point).sum
  end

  private
  def self.by_group(group)
    game = includes(:game).where(:games => {group: group}).first
    my_pick = where(game: game)
    game || Bracket.new(team_a: "#{group} team_A", team_b: "#{group} team_B")
  end
end
