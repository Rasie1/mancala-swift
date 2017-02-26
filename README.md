(work in progress)

# mancala-swift

This is an implementation of Mancala game in Swift for Mobile Development course.

At this point, I have no idea how to use it on macOS, so I made it using linux.

# How to get swift on ubuntu 16.04

Everything is explained in this [article](https://www.twilio.com/blog/2015/12/getting-started-with-swift-on-linux.html).

# How to build & run on ubuntu

To build, all you have to do is `swift build` from project's directory.

To run, you just `.build/debug/Mancala`

# How to play

At each turn, you just have to type in number of house you want to empty.

You can set any number of houses and initial seeds number for the game. Also, this game is multiplayer: by default, Mancala-Kalah is a 2-player game, but you can turn it into a merciless bloodbath by setting players to 132

You can replace current player with AI by typing "ai".
