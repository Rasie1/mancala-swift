struct GameState: CustomStringConvertible{
    var players: [PlayerState]

    init(houses: Int, seeds: Int, players: Int) {
        self.players = [PlayerState](repeating: PlayerState(houses: houses, seeds: seeds),
                                     count: players)
    }

    public var description: String { 
        return "GameState" 
    }
}
