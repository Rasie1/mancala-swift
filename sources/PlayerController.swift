class PlayerController: Controller {
    var playerIndex: Int

    public init(playerIndex: Int) {
        self.playerIndex = playerIndex
    }

    func makeMove(state: GameState) -> PlayerMove {
        return 0
    }
}
