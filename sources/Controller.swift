protocol Controller {
    var playerIndex: Int { get }
    func takeTurn(state: GameState) -> PlayerMove
}
