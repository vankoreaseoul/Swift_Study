import UIKit

// Class - Inheritance
// 상속

class GameInfo {
    var homeScore = 0   // 우리팀 점수
    var awayScore = 0   // 상대팀 점수
    
    func presentScore() -> String {
        return homeScore.description + " : " + awayScore.description
    }
    
//    final func presentScore() -> String {
//        return homeScore.description + " : " + awayScore.description
//    }
//              -> final(최종) 키워드를 붙이면 override해서 수정 불가! 그대로 써라!!
}

class FootBall: GameInfo {
    var time = 0
    override func presentScore() -> String {
        return homeScore.description + " : " + awayScore.description + ", " + time.description + "분"
    }
}

class BaseBall: GameInfo {
    var round = 0
}

class BasketBall: GameInfo {
    
}

let footBall = FootBall()
footBall.homeScore = 2
footBall.awayScore = 1
footBall.time = 45
footBall.presentScore()

let baseBall = BaseBall()
baseBall.homeScore = 20
baseBall.presentScore()
baseBall.round = 2
