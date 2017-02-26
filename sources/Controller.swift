protocol Controller {
    func makeMove(state: GameState) -> PlayerMove
}
