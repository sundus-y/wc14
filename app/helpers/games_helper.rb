module GamesHelper
  def recent_tab?(game_list)
    if game_list.last.past?
      false
    end
    true
  end
end
