//
//  DataView.swift
//  Prototipo1
//
//  Created by Lucas Real Dias on 26/04/23.
//

import Foundation

struct Anwser {
    let text: String
    var correct: Bool = false
}

struct Questions {
    let question : String
    let alternatives : [Anwser]
    
    init(question: String, alternatives : [Anwser]) {
        self.question = question
        self.alternatives = alternatives.shuffled()
    }
}

var questions: [Questions] = [
    
    Questions(question: "Qual a bebida preferida do Kel da série Kennan e Kel?",
              alternatives: [Anwser(text: "Suco de uva"),
                             Anwser(text: "Cerveja"),
                             Anwser(text: "Agua tônica"),
                             Anwser(text: "Refrigerante de laranja", correct: true),
                             Anwser(text: "Suco de tomate")]),
    
    Questions(question: "Qual dos animes abaixo foi desenvolvido pelo estúdio Ghibli?",
              alternatives: [Anwser(text: "A Viagem de Chihiro", correct: true),
                             Anwser(text: "Shaman King"),
                             Anwser(text: "Naruto"),
                             Anwser(text: "Death Note"),
                             Anwser(text: "Inu Yasha")]),
    
    Questions(question: "Quem é o autor de O Senhor dos Anéis?",
              alternatives: [Anwser(text: "Bram Stoker"),
                             Anwser(text: "H. G. Wells"),
                             Anwser(text: "Júlio Verne"),
                             Anwser(text: "António Nunes"),
                             Anwser(text: "J. R. R. Tolkien", correct: true)]),
    
    Questions(question: "Qual é o nome do jogo de cartas jogado em Yu-Gi-Oh!?",
              alternatives: [Anwser(text: "Magic: The Gathering"),
                             Anwser(text: "Duel Monsters", correct: true),
                             Anwser(text: "Pokémon TCG "),
                             Anwser(text: "World of Warcraft TCG"),
                             Anwser(text: "Yu-Gi-Oh! TCG")]),
    
    Questions(question: "Qual o nome da personagem principal da série de jogos Tomb Raider?",
              alternatives: [Anwser(text: "Sam Nishimura"),
                             Anwser(text: "Kurtis Trent"),
                             Anwser(text: "Lara Croft", correct: true),
                             Anwser(text: "Amanda Evert"),
                             Anwser(text: "Jacob")]),
    
    Questions(question: "Qual o nome do personagem principal da série de jogos God of War?",
              alternatives: [Anwser(text: "Hades"),
                             Anwser(text: "Ares"),
                             Anwser(text: "Zeus"),
                             Anwser(text: "Atreus"),
                             Anwser(text: "Kratos", correct: true)]),

    Questions(question: "Qual o nome do personagem principal da série de jogos Uncharted?",
              alternatives: [Anwser(text: "Luck Sterblich"),
                             Anwser(text: "The Rock"),
                             Anwser(text: "Henry James"),
                             Anwser(text: "Victor Sullivan"),
                             Anwser(text: "Nathan Drake", correct: true)]),

    Questions(question: "Qual dos jogos a seguir não é um jogo de corrida?",
              alternatives: [Anwser(text: "Gran Turismo"),
                             Anwser(text: "Driver"),
                             Anwser(text: "Need for Speed"),
                             Anwser(text: "Forza Motorsport"),
                             Anwser(text: "Alan Wake", correct: true)]),

    Questions(question: "Qual o gênero dos mangás escritos pelo mestre Junji Ito?",
              alternatives: [Anwser(text: "Comédia"),
                             Anwser(text: "Romance"),
                             Anwser(text: "Ação"),
                             Anwser(text: "Aventura"),
                             Anwser(text: "Horror", correct: true)]),

    Questions(question: "Qual o nome do super-herói interpretado pelo Chaves?",
              alternatives: [Anwser(text: "Super Chaves"),
                             Anwser(text: "El Chavo"),
                             Anwser(text: "Super Chavo"),
                             Anwser(text: "Capitão Linguiça"),
                             Anwser(text: "Chapolim Colorado", correct: true)]),

    Questions(question: "Qual a comida preferida do Chaves?",
              alternatives: [Anwser(text: "Lasanha"),
                             Anwser(text: "Churros"),
                             Anwser(text: "Churrasco"),
                             Anwser(text: "Saunduíche de Pernil"),
                             Anwser(text: "Sanduíche de Presunto", correct: true)]),

    Questions(question: "Qual dos jogos abaixo não pertence a franquia Souls?",
              alternatives: [Anwser(text: "Dark Souls 3"),
                             Anwser(text: "Elden Ring"),
                             Anwser(text: "Dark Souls"),
                             Anwser(text: "Demon's Souls"),
                             Anwser(text: "Bloodborn", correct: true)]),

    Questions(question: "Qual o nome da atriz que interpreta Eleven em Stranger Things?",
              alternatives: [Anwser(text: "Megan Fox"),
                             Anwser(text: "Palmirinha"),
                             Anwser(text: "Adriana Esteves"),
                             Anwser(text: "Emma Stone"),
                             Anwser(text: "Millie Bobby Brown", correct: true)]),

    Questions(question: "Qual o nome da atriz que interpreta Wandinha na série da Netflix?",
              alternatives: [Anwser(text: "Paolla Oliveira"),
                             Anwser(text: "Emma Myers"),
                             Anwser(text: "Bella Ramsey"),
                             Anwser(text: "Anna Torv"),
                             Anwser(text: "Jenna Ortega", correct: true)]),

    Questions(question: "Qual o ponto fraco do Super-Homem?",
              alternatives: [Anwser(text: "Diamante"),
                             Anwser(text: "Cobre"),
                             Anwser(text: "Agua"),
                             Anwser(text: "Lava"),
                             Anwser(text: "Kryptonita", correct: true)]),

    Questions(question: "Qualo nome do planeta natal do personagem Spock em Star Trek?",
              alternatives: [Anwser(text: "Ferenginar"),
                             Anwser(text: "Qo'noS"),
                             Anwser(text: "Romulus"),
                             Anwser(text: "Andoria"),
                             Anwser(text: "Vulcano", correct: true)]),

    Questions(question: "Qual o nome da criatura lendária que é a mascote em Final Fantasy?",
              alternatives: [Anwser(text: "Tonberry"),
                             Anwser(text: "Cactuar"),
                             Anwser(text: "Moogle"),
                             Anwser(text: "Behemoth"),
                             Anwser(text: "Chocobo", correct: true)]),

    Questions(question: "Qual o nome da nave pilotada por Han Solo e Chewbacca em Star Wars?",
              alternatives: [Anwser(text: "IE Fighter"),
                             Anwser(text: "X-Wing"),
                             Anwser(text: "Star Destroyer"),
                             Anwser(text: "Death Star"),
                             Anwser(text: "Millennium Falcon", correct: true)]),

    Questions(question: "Em qual dos consoles abaixo foi lançado o game Super Mario World?",
              alternatives: [Anwser(text: "Xbox 360"),
                             Anwser(text: "Playstation 1"),
                             Anwser(text: "Nintendo Wii"),
                             Anwser(text: "Nintendo 64"),
                             Anwser(text: "Super Nintendo", correct: true)]),

    Questions(question: "Qual é o nome do personagem principal dos livros Crônicas de Gelo e Fogo?",
              alternatives: [Anwser(text: "Tonberry"),
                             Anwser(text: "Tyrion Lannister"),
                             Anwser(text: "Cersei Lannister"),
                             Anwser(text: "Bran Stark"),
                             Anwser(text: "Jon Snow", correct: true)]),

    Questions(question: "O jogo Dungeons e Dragon é um:",
              alternatives: [Anwser(text: "MMORPG"),
                             Anwser(text: "FPS"),
                             Anwser(text: "MOBA"),
                             Anwser(text: "TCG"),
                             Anwser(text: "RPG de Mesa", correct: true)]),

    Questions(question: "Qual o nome de umas das armas mais famosas do jogo Counter Strike?",
              alternatives: [Anwser(text: "AK37"),
                             Anwser(text: "AK77"),
                             Anwser(text: "AK44"),
                             Anwser(text: "AK74"),
                             Anwser(text: "AK47", correct: true)]),

    Questions(question: "Qual o nome do jogo de luta criado pela SNK, que teve sua estreia em 1994?",
              alternatives: [Anwser(text: "Street Fighter"),
                             Anwser(text: "Mortal Kombat"),
                             Anwser(text: "Virtua Fighter"),
                             Anwser(text: "Tekken"),
                             Anwser(text: "King of Fighters", correct: true)]),

    Questions(question: "Qual o nome do planeta natal da personagem Gamora em Guardiões da Galáxia?",
              alternatives: [Anwser(text: "Xandar"),
                             Anwser(text: "Knowhere"),
                             Anwser(text: "Contraxia"),
                             Anwser(text: "Sovereign"),
                             Anwser(text: "Zen-Whoberi", correct: true)]),

    Questions(question: "Qual o nome do personagem que é considerado o maior vilão em Star Trek?",
              alternatives: [Anwser(text: "Q"),
                             Anwser(text: "The Borg Queen"),
                             Anwser(text: "Gul Dukat"),
                             Anwser(text: "Emperor Palpatine"),
                             Anwser(text: "Khan Noonien Singh", correct: true)]),

    Questions(question: "Qual o nome do Shinigami que acompanha Light Yagami em Death Note?",
              alternatives: [Anwser(text: "Tandherium"),
                             Anwser(text: "Ryuga"),
                             Anwser(text: "Goolard"),
                             Anwser(text: "Baphomet"),
                             Anwser(text: "Ryuk", correct: true)]),

    Questions(question: "Qual o nome da espada mágica de Guts na série de mangá e anime Berserk?",
              alternatives: [Anwser(text: "Excalibur"),
                             Anwser(text: "Masamune"),
                             Anwser(text: "Muramasa"),
                             Anwser(text: "Kusanagi"),
                             Anwser(text: "Dragon Slayer", correct: true)]),

    Questions(question: "One Piece é um anime de?",
              alternatives: [Anwser(text: "Terror"),
                             Anwser(text: "Corrida"),
                             Anwser(text: "Guerreiros Medievais"),
                             Anwser(text: "Robôs"),
                             Anwser(text: "Piratas", correct: true)]),

    Questions(question: "Qual o autor de It - A Coisa?",
              alternatives: [Anwser(text: "Anne Rice"),
                             Anwser(text: "Mary Shelley"),
                             Anwser(text: "H. P. Lovecraft"),
                             Anwser(text: "Edgar Allan Poe"),
                             Anwser(text: "Stephen King", correct: true)]),

    Questions(question: "Qual das cidades abaixo pertence ao universo de Ragnarok Online?",
              alternatives: [Anwser(text: "Argatha"),
                             Anwser(text: "Akakor"),
                             Anwser(text: "Alba"),
                             Anwser(text: "Atlântida"),
                             Anwser(text: "Prontera", correct: true)]),

    Questions(question: "Os Humanos em World of Warcraf pertencem a qual facção?",
              alternatives: [Anwser(text: "Ferrápios"),
                             Anwser(text: "Guálapagos"),
                             Anwser(text: "Alienígenas"),
                             Anwser(text: "Horda"),
                             Anwser(text: "Aliança", correct: true)]),

    Questions(question: "Qual o gênero de Prison Tale, um dos primeiros jogos online?",
              alternatives: [Anwser(text: "Tabuleiro"),
                             Anwser(text: "RPG"),
                             Anwser(text: "MOBA"),
                             Anwser(text: "FPS"),
                             Anwser(text: "MMORPG", correct: true)]),

    Questions(question: "Qual dos terrenos abaixo não pertence ao jogo de cartas Magic: The Gathering?",
              alternatives: [Anwser(text: "Ilha"),
                             Anwser(text: "Planíce"),
                             Anwser(text: "Pântano"),
                             Anwser(text: "Montanha"),
                             Anwser(text: "Lunar", correct: true)]),

    Questions(question: "Qual o verdadeiro nome do Homem-Aranha?",
              alternatives: [Anwser(text: "Tommy Shelby"),
                             Anwser(text: "Mario Bros"),
                             Anwser(text: "Jack Sparrow"),
                             Anwser(text: "Pedro Stwart"),
                             Anwser(text: "Peter Parker", correct: true)]),

    Questions(question: "Qual o nome da príncesa que Mario tenta resgatar?",
              alternatives: [Anwser(text: "Xuxa"),
                             Anwser(text: "Safíra"),
                             Anwser(text: "Rubi"),
                             Anwser(text: "Pearl"),
                             Anwser(text: "Peach", correct: true)]),

    Questions(question: "Os Orcs em World of Warcraf pertencem a qual facção?",
              alternatives: [Anwser(text: "Ferrantes"),
                             Anwser(text: "Marrápios"),
                             Anwser(text: "Alienígenas"),
                             Anwser(text: "Aliança"),
                             Anwser(text: "Horda", correct: true)]),
    
]
