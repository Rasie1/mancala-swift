struct GameState {
    var players: [PlayerState]

public init(houses: Int, seeds: Int, players: Int) {
        self.players = [PlayerState](repeating: PlayerState(houses: houses, seeds: seeds),
                                     count: players)
    }
}
