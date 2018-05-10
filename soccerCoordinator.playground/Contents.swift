//: Playground - noun: a place where people can play

import UIKit


// created dictionary above for each player and matched keys its corresponding values
let joeSmith: [String: Any] = ["name": "Joe Smith", "height": 42.0, "hasExperience": true, "guardian": "Jim and Jan Smith"]
let jillTanner: [String: Any] = ["name": "Jill Tanner", "height": 36.0, "hasExperience": true, "guardian": "Clara Tanner"]
let billBon: [String: Any] = ["name": "Bill Bon", "height" : 43.0, "hasExperience": true, "guardian": "Sara and Jenny Bon"]
let evaGordon: [String: Any] = ["name": "Eva Gordon", "height": 45.0, "hasExperience": false, "guardian": "Wendy and Mike Gordon"]
let mattGill: [String: Any] = ["name": "Matt Gill", "height": 40.0, "hasExperience": false, "guardian": "Charles and Sylvia Gill"]
let KimmyStein: [String: Any] = ["name": "Kimmy Stein", "height": 41.0, "hasExperience": false, "guardian": "Bill and Hillary Stein"]
let sammyAdams: [String: Any] = ["name": "Sammy Adams", "height": 45.0, "hasExperience": false, "guardian": "Jeff Adams"]
let karlSaygan: [String: Any] = ["name": "Karl Saygan", "height": 42.0, "hasExperience": true, "guardian": "Heather Bledsoe"]
let suzanaGreenberg: [String: Any] = ["name": "Suzana Greenberg", "height": 44.0, "hasExperience": true, "guardian": "Henrietta Dumas"]
let salDali: [String: Any] = ["name": "Sal Dali", "height": 41.0, "hasExperience": false, "guardian": "Gala Dali"]
let joeKavalier: [String: Any] = ["name": "Joe Kavalier", "height": 39.0, "hasExperience": false, "guardian": "Sam and Elaine Kavalier"]
let benFinkelstein: [String: Any] = ["name": "Ben Finkelstein", "height": 44.0, "hasExperience": false, "guardian": "Aaron and Jill Finkelstein"]
let diegoSoto: [String: Any] = ["name": "Diego Soto", "height": 41.0, "hasExperience": true, "guardian": "Robin and Sarika Soto"]
let chloeAlaska: [String: Any] = ["name": "Chloe Alaska", "height": 47.0, "hasExperience": false, "guardian": "David and Jamie Alaska"]
let arnoldWillis: [String: Any] = ["name": "Arnold Willis", "height": 43.0, "hasExperience": false, "guardian": "Claire Willis"]
let philipHelm: [String: Any] = ["name": "Philip Helm", "height": 44.0, "hasExperience": true, "guardian": "Thomas Helm and Eva Jones"]
let lesClay: [String: Any] = ["name": "Les Clay", "height": 42.0, "hasExperience": true, "guardian": "Wynonna Brown"]
let herschelKrustofski: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0, "hasExperience": true, "guardian": "Hyman and Rachel Krustofski"]

// added each player into an array collection
let players: [[String: Any]] = [joeSmith, jillTanner, billBon, evaGordon, mattGill, KimmyStein, sammyAdams, karlSaygan, suzanaGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, philipHelm, lesClay, herschelKrustofski]

// created arrays to store experienced or inexperienced
var experiencedPlayers: [[String: Any]] = []
var inexperiencedPlayers: [[String: Any]] = []

// used for in loop to iterate through each player and seperated them by experienced or inexperienced
for eachPlayer in players {
    if eachPlayer["hasExperience"] as! Bool == true {
        experiencedPlayers.append(eachPlayer)
    } else {
        inexperiencedPlayers.append(eachPlayer)
    }
}

// created variables and constants to store important values
var teamDragon: [[String: Any]] = []
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
let allTeams = [teamDragon, teamSharks, teamRaptors]
let averageExperiencedPlayers = experiencedPlayers.count / allTeams.count
let averageInexperiencedPlayers = inexperiencedPlayers.count / allTeams.count
let playerPerTeam = players.count / allTeams.count

// used for in loop to iterate through each experienced player and assign them to each team evenly
for eachExperiencedPlayer in experiencedPlayers {
    if teamDragon.count < averageExperiencedPlayers {
        teamDragon.append(eachExperiencedPlayer)
    } else if teamSharks.count < averageExperiencedPlayers {
        teamSharks.append(eachExperiencedPlayer)
    } else {
        teamRaptors.append(eachExperiencedPlayer)
    }
}

// used for in loop to iterate through each inexperienced player and assign them to each team evenly
for eachInexperiencedPlayer in inexperiencedPlayers {
    if teamDragon.count < playerPerTeam {
        teamDragon.append(eachInexperiencedPlayer)
    } else if teamSharks.count < playerPerTeam {
        teamSharks.append(eachInexperiencedPlayer)
    } else {
        teamRaptors.append(eachInexperiencedPlayer)
    }
}

// created array to store letters
var letters: [String] = []

// used for in loop to iterate through each player on team Dragon and personalized letter
for playerWithDragon in teamDragon {
    letters.append("Hello, \(playerWithDragon["guardian"] as! String).  Your child \(playerWithDragon["name"] as! String) has been placed on team Dragon.  Remember to attend practice on March 17 at 1pm")
}

// used for in loop to iterate through each player on team Sharks and personalized letter

for playerWithSharks in teamSharks {
    letters.append("Hello, \(playerWithSharks["guardian"] as! String).  Your child \(playerWithSharks["name"] as! String) has been placed on team Sharks.  Remember to attend practice on March 17 at 3pm")
}

// used for in loop to iterate through each player on team Raptors and personalized letter
for playerWithRaptors in teamRaptors {
    letters.append("Hello, \(playerWithRaptors["guardian"] as! String).  Your child \(playerWithRaptors["name"] as! String) has been placed on team Raptors.  Remember to attend practice on March 18 at 1pm")
}

// used for in loop to iterate though each letter to display content (not the array itself)
for letter in letters {
    print(letter)
}

