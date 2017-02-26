class PlayerController: Controller {
    var playerIndex: Int

    public init(playerIndex: Int) {
        self.playerIndex = playerIndex
    }

    func makeMove(state: GameState) -> PlayerMove {
        print("Board")

        var intVal:Int
        if let i = readLine(strippingNewline: true) {
            intVal = Int(i)!
        } else {
            intVal = -1
        }

        if intVal < 0 || intVal > state.players[0].houses.count {
            print("Wrong input")
            return makeMove(state: state)
        }

        return intVal
    }
}
