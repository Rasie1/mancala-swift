import Foundation
import Glibc
 

import CommandLineKit

let cli = CommandLineKit.CommandLine()

let playersOption = IntOption(shortFlag: "p", longFlag: "players", helpMessage: "How many players will be present in game (default: 2)")
let housesOption = IntOption(shortFlag: "h", longFlag: "houses", helpMessage: "How many houses will each player have (default: 6)")
let seedsOption = IntOption(shortFlag: "s", longFlag: "seeds", helpMessage: "How many seeds will each player have in each house in the beginning of the game (default: 4)")
let rules = BoolOption(shortFlag: "r", longFlag: "rules",
  helpMessage: "Print rules")




cli.addOptions(playersOption, housesOption, seedsOption, rules)

do {
  try cli.parse()
} catch {
  cli.printUsage(error)
}

var players: Int = 2 
var houses: Int  = 6
var seeds: Int   = 4

if (playersOption.value != nil) {
    players = playersOption.value!
}
if (housesOption.value != nil) {
    houses = housesOption.value!
}
if (seedsOption.value != nil) {
    seeds = seedsOption.value!
}

func printRules() {
    print("At the beginning of the game, four seeds are placed in each house. This is the traditional method.")
    print("Each player controls the six houses and their seeds on the player's side of the board. The player's score is the number of seeds in the store to their right.")
    print("Players take turns sowing their seeds. On a turn, the player removes all seeds from one of the houses under their control. Moving counter-clockwise, the player drops one seed in each house in turn, including the player's own store but not their opponent's.")
    print("If the last sown seed lands in an empty house owned by the player, and the opposite house contains seeds, both the last seed and the opposite seeds are captured and placed into the player's store.")
    print("If the last sown seed lands in the player's store, the player gets an additional move. There is no limit on the number of moves a player can make in their turn.")
    print("When one player no longer has any seeds in any of their houses, the game ends. The other player moves all remaining seeds to their store, and the player with the most seeds in their store wins.")
}

if (rules.value) {
    printRules()
}


if (players < 2) {
    print("Incorrect players number")
    exit(0)
}
if (houses < 1) {
    print("Incorrect houses number")
    exit(0)
}
if (seeds < 1) {
    print("Incorrect seeds number")
    exit(0)
}

game(houses: houses, seeds: seeds, players: players)
 
