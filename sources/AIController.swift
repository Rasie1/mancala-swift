import Glibc

class AIController: Controller {
    func makeMove(state: GameState) -> PlayerMove {
        let border = state.players[0].houses.count
        let move = random() % border

        return move
    }
}
