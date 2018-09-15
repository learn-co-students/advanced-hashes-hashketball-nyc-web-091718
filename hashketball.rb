# Write your code here!
require 'pry'





def game_hash
  
  output_hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black","White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
        
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
        
      }
    }
  }
  
end

def get_player_by_name?(player_name_in)

  game_hash.each do |team,team_info|
    found_player = team_info[:players].find do |player_name, player_info|
      player_name_in == player_name
    end
    
    if(found_player != nil)
      return found_player[1]
    end
  end
  return false
  
end

def get_team_by_name?(team_name_in)
  
  found_team = game_hash.find do |team,team_info|
    team_info[:team_name] == team_name_in
    end
    
    if(found_team != nil)
      return found_team[1]
    end
  return false
end

def num_points_scored(player_name_in)
  points = get_player_by_name?(player_name_in)[:points].to_i
end

def shoe_size (player_name_in)
  shoes = get_player_by_name?(player_name_in)[:shoe].to_i
end

def team_colors(team_name_in)
  colors = get_team_by_name?(team_name_in)[:colors]
end

def team_names()
  names = []
  game_hash.each do |team, team_info|
    names << team_info[:team_name]
  end
  names
end

def player_numbers(team_name_in)
  
  numbers = []
  get_team_by_name?(team_name_in)[:players].each do | player_name, player_info|
    numbers << player_info[:number].to_i
  end
  
  numbers
  
end

def player_stats(player_name)
  
  get_player_by_name?(player_name)
  
end

def big_shoe_rebounds
  current_biggest_shoe = nil
  
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_name, player_info|
      if(current_biggest_shoe == nil)
        current_biggest_shoe = player_info
      else
        
        if(current_biggest_shoe[:shoe] < player_info[:shoe])
          current_biggest_shoe = player_info
        end
        
      end
    end
  end
  
  current_biggest_shoe[:rebounds]
end