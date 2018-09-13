require 'pry'
# Write your code here!
def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

def num_points_scored(name)
  points = 0
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        # binding.pry
        data.each do |player, info|
          #binding.pry
          if player == name
            points = info[:points]
          end
        end
      end
    end
  end
  points
end

def shoe_size(name)
  size = 0
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        # binding.pry
        data.each do |player, info|
          # binding.pry
          if player == name
            size = info[:shoe]
          end
        end
      end
    end
  end
  size
end

def team_colors(team)
  colors = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      # binding.pry
      if data == team
        colors = team_data[:colors]
      end
    end
  end
  colors
end

def team_names
  teams = []
  teams << game_hash[:home][:team_name]
  teams << game_hash[:away][:team_name]
end

def player_numbers(team)
  numbers = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      # binding.pry
      if data == team
        team_data[:players].each do |stat, value|
          # binding.pry
          numbers << value[:number]
        end
      end
    end
  end
  numbers
end

def player_stats(name)
  stats = {}
  game_hash.each do |location, team_data|
    if team_data[:players].include? name
      stats = team_data[:players][name]
    end
  end
  stats
end

def big_shoe_rebounds
  home_players = game_hash[:home][:players]
  biggest_shoe_size = 0
  biggest_shoe_player = ""
  biggest_shoe_rebounds = 0

  home_players.each do |key, value|
    if value[:shoe] > biggest_shoe_size
      biggest_shoe_player = key
      biggest_shoe_size = value[:shoe]
      biggest_shoe_rebounds = value[:rebounds]
    end
  end

  away_players = game_hash[:away][:players]
  away_players.each do |key, value|
    if value[:shoe] > biggest_shoe_size
      biggest_shoe_player = key
      biggest_shoe_size = value[:shoe]
      biggest_shoe_rebounds = value[:rebounds]
    end
  end
  biggest_shoe_rebounds
end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    #binding.pry
      team_data.each do |attribute, data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
        binding.pry

        #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
        data.each do |data_item|
            binding.pry
      end
    end
  end
end
