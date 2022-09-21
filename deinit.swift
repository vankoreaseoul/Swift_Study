import UIKit

// Deinitialization
// 해제

var a: Int? = 10
a = nil     // a를 없앤다. -> 메모리에서 지운다. (메모리 해제)

class Game {
    var score = 0
    var name = ""
    var round: Round?
    
    init() {
        print("game init")
    }
    
    deinit {
        print("game deinit")
    }
}

class Round {
    weak var gameInfo: Game?  // Round는 Game에 의존적. 'weak' -> 약한 참조, Game이 없어지면 Round도 없어지겠다. 순환참조시 문제 방지.
    var lastRound = 10        // weak var lastRound = Game() -> 객체가 이미 있는데 약한 참조는 참조를 안 하겠다는 의미. 초기화 안됨. nil.
    var roundTime = 20
    
    deinit {
        print("round deinit")
    }
}

var game1: Game? = Game()
var game2: Game? = game

game1 = nil
game2 = nil                 // game, game2 즉, 2개의 참조변수가 같은 인스턴스를 참조하므로
                            // 두 변수가 모두 다 사라질 때, 메모리에서 인스턴스를 삭제(해제)


var game: Game? = Game()
var round: Round? = Round()

game?.round = round
round?.gameInfo = game

game = nil
round = nil                 // 순환 참조를 함으로써, 변수는 메모리에서 없어지지만 인스턴스들은 계속 존재
                            // 쓸데없이 메모리 소모 -> 앱 구동이 느려질 수 있음. => weak 사용! 
