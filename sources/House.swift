class House {
    private var seeds: Int

    public init(seeds: Int) {
        self.seeds = seeds
    }

    public func activate() {
        seeds = 0
    }
}
