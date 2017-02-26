struct PlayerState {
    var houses: [House]

    init(houses: Int, seeds: Int) {
        self.houses = [House](repeating: seeds,
                              count: houses)
    }
}
