class Team
  attr_accessor :name, :win, :lose, :draw

  def initialize
    name = ""
    win = 0
    lose = 0
    draw = 0
  end

  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  def calc_win_rate
    return win.to_f / (win + lose).to_f
  end

  def show_team_result
    str = "#{name} の2020年の成績は #{win}勝 #{lose}敗 #{draw}分、勝率は#{calc_win_rate}です。"
    puts str
  end
end

giants = Team.new("Giants", 67, 45, 8)
giants.show_team_result()

tigers = Team.new("Tigers", 60, 53, 7)
tigers.show_team_result()

dragons = Team.new("Dragons", 60, 55, 5)
dragons.show_team_result()

bayStars = Team.new("BayStars", 56, 58, 6)
bayStars.show_team_result()

carp = Team.new("Carp", 52, 56, 12)
carp.show_team_result()

swallows = Team.new("Swallows", 41, 69, 10)
swallows.show_team_result()