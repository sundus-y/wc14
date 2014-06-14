json.array!(@games) do |game|
  json.extract! game, :id, :round, :team_a, :team_b, :goal_a, :goal_b
  json.url game_url(game, format: :json)
end
