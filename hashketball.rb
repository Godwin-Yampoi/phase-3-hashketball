# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(name)
  # Get all player's names
  all_players = game_hash[:home][:players] + game_hash[:away][:players]

  # Find player
  chosen = all_players.find do |player|
    player[:player_name] == name
  end
  chosen[:points]
end

def shoe_size(name)
  # Get all player's names
  all_players = game_hash[:home][:players] + game_hash[:away][:players]

  # Find player
  chosen = all_players.find do |player|
    player[:player_name] == name
  end
  chosen[:shoe]
end
def team_colors(team_name)
  # Get all teams names
  home_teams = game_hash[:home]
  away_teams = game_hash[:away]

  first = home_teams[:team_name]
  second = away_teams[:team_name]
  
  if team_name == first
    # team_colors.push("#{home_teams[:colors]}")
    home_teams[:colors]
    # team_colors
  elsif team_name == second
    away_teams[:colors]
    # team_colors
  end

end

def team_names
  teams = []
  home = game_hash[:home][:team_name]
  teams.push(home)
  away = game_hash[:away][:team_name]
  teams.push(away)

end

def player_numbers(team_name)
  # Returns an array of the jesrsey numbers

  home_teams = game_hash[:home]
  away_teams = game_hash[:away]

  first = home_teams[:team_name]
  second = away_teams[:team_name]
  
  if team_name == first
    players = home_teams[:players]
    numbers = players.collect do |player|
      player[:number]
    end
    numbers
  elsif team_name == second
    players = away_teams[:players]
    numbers = players.collect do |player|
      player[:number]
    end
    numbers
  end

end


def player_stats(player_name)
    # Get all player's names
    all_players = game_hash[:home][:players] + game_hash[:away][:players]

    # Find player
    chosen = all_players.find do |player|
      player[:player_name] == player_name
    end
    chosen
end

def big_shoe_rebounds
  # Get all player's names
  all_players = game_hash[:home][:players] + game_hash[:away][:players]
  shoe_size = all_players.max_by do |player|
    player[:shoe]
  end
  shoe_size[:rebounds]
end

big_shoe_rebounds