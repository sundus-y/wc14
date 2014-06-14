class Game < ActiveRecord::Base

  has_many :bracket
  scope :bracket_game_picker, -> {where('round > 0').order(:game_date, :game_time)}
  scope :bracket_team_picker, -> {select(:team_a).distinct}

  def self.group_games(group)
    self.where(group: group)
  end

  def self.fix_game_time
    all.each do |game|
      game_date = game.game_date_before_type_cast.split('/')
      y = ('20'+game_date[2]).to_i
      m = game_date[0].to_i
      d = game_date[1].to_i
      game.game_date = Date.new(y,m,d)
      game.save!
    end
  end

  def self.total_number_of_goals

  end

  def to_s
    "#{self.team_a} vs. #{self.team_b} Group: #{self.group}"
  end

  def goal_a
    super || 0
  end

  def goal_b
    super || 0
  end

  def game_date
    super || Date.today
  end

  def game_time
    super || Time.now
  end

  def winner
    if goal_a > goal_b
      "a"
    elsif goal_b > goal_a
      "b"
    else
      "t"
    end
  end

  def past?
    if game_date < Date.today
      true
    elsif game_date > Date.today
      false
    end
  end
end
