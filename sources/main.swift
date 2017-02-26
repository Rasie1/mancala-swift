import Foundation
import Glibc
 
func rules() {
    print("At the beginning of the game, four seeds are placed in each house. This is the traditional method.")
    print("Each player controls the six houses and their seeds on the player's side of the board. The player's score is the number of seeds in the store to their right.")
    print("Players take turns sowing their seeds. On a turn, the player removes all seeds from one of the houses under their control. Moving counter-clockwise, the player drops one seed in each house in turn, including the player's own store but not their opponent's.")
    print("If the last sown seed lands in an empty house owned by the player, and the opposite house contains seeds, both the last seed and the opposite seeds are captured and placed into the player's store.")
    print("If the last sown seed lands in the player's store, the player gets an additional move. There is no limit on the number of moves a player can make in their turn.")
    print("When one player no longer has any seeds in any of their houses, the game ends. The other player moves all remaining seeds to their store, and the player with the most seeds in their store wins.")
}

func runGame(houses: Int, seeds: Int, players: Int) {
    var gameShouldContinue = true


    let controllers = (0...(players - 1)).map({i in PlayerController(playerIndex: i)})
    let state = GameState(houses: houses, seeds: seeds, players: players)
    let game = MancalaGameMode(state: state, players: controllers)

    while gameShouldContinue {
        game.step()

        if let won = game.won() {
            gameShouldContinue = false
        }
    }
}


runGame(houses: 6, seeds: 4, players: 2)
 
