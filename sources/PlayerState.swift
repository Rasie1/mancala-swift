struct PlayerState {
    var houses: [House]
    var home: House
    var active: Bool = true

    init(houses: Int, seeds: Int) {
        self.houses = [House](repeating: House(seeds: seeds),
                              count: houses)
        self.home = House(seeds: seeds)
    }
}
