//
//  Game.swift
//  Bullseye
//
//  Created by Ash Oldham on 11/04/2021.
//

import Foundation

struct LeaderboardEntry {
  let score: Int
  let date: Date
}

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var leaderboardEntry: [LeaderboardEntry] = []
  
  init(loadTestData: Bool = false) {
    if loadTestData {
      leaderboardEntry.append(LeaderboardEntry(score: 100, date: Date()))
      leaderboardEntry.append(LeaderboardEntry(score: 200, date: Date()))
      leaderboardEntry.append(LeaderboardEntry(score: 80, date: Date()))
    }
  }
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        let bonus: Int
        if difference == 0 {
            bonus = 100
        }else if difference <= 2 {
            bonus = 50
        }else {
            bonus = 0
        }
        let awardedPoints = 100 - difference + bonus
            return awardedPoints
    }
  
  mutating func addToLeaderboard(points: Int) {
    leaderboardEntry.append(LeaderboardEntry(score: points, date: Date()))
    leaderboardEntry.sort {$0.score > $1.score}
  }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
        addToLeaderboard(points: points)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
