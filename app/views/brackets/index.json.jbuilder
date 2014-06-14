json.array!(@brackets) do |bracket|
  json.extract! bracket, :id, :user_id, :game_id, :team_a, :team_b
  json.url bracket_url(bracket, format: :json)
end
