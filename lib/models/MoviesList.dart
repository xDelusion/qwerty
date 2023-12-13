class Movies {
  String movieTitle;
  String moviePic;
  double movieRating;
  int releaseYear;
  String? description;
  List<String> reviews;

  static void sortOldToNew() {
    movieData.sort((a, b) => a.releaseYear.compareTo(b.releaseYear));
  }

  static void sortNewToOld() {
    movieData.sort((a, b) => b.releaseYear.compareTo(a.releaseYear));
  }

  static void sortUpcomingReleases() {
    int currentYear = DateTime.now().year;

    final movies =
        movieData.where((movie) => movie.releaseYear >= currentYear).toList();

    movies.forEach((element) {
      print("element");
    });
    // Filter movies with release years greater than the current year
    if (movies.isNotEmpty) {
      // Sort the filtered list by release year
      movies.sort((a, b) => a.releaseYear.compareTo(b.releaseYear));
      movieData = movies;
    }
  }

  Movies(
      {required this.movieTitle,
      required this.moviePic,
      required this.movieRating,
      required this.releaseYear,
      required this.reviews,
      this.description});

  static List<Movies> movieData = [
    Movies(
        movieTitle: 'House MD',
        moviePic:
            'https://github.com/xDelusion/test/blob/main/assets/images/HouseMD.jpg?raw=true',
        // 'assets/images/HouseMD.jpg',
        movieRating: 8.7,
        releaseYear: 2025,
        reviews: [
          'Great TV Show!!',
          "Simply House is the best medical series made or will be! If you happen to read my previous reviews, you will know that I do not like long interviews, in short, House is the best medical series that is integrated in all of its 176 episodes . My rate : 9.7",
          'I keep watching this TV Show over and over again!!',
          "Dr. Gregory House (Hugh Laurie) revels in solving the hardest of medical riddles. He chooses his team which changes over the years. Dr. Eric Foreman (Omar Epps), Dr. Robert Chase (Jesse Spencer), and Dr. Allison Cameron (Jennifer Morrison) are the three original underlings. Dr. James Wilson (Robert Sean Leonard) is his only true friend. Dr. Lisa Cuddy (Lisa Edelstein) starts as his boss.\n"
              "\n"
              "Hugh is a British actor playing an American doctor who has a badly damaged leg. He's a grumpy caustic know-it-all. Too bad for everybody else, he is almost always right. He is inevitably the smartest man in the room. Oh did I mention that he's a drug addict. It's master acting class from Hugh. It's physical. It's accent work. It's character work. It's a great character."
        ],
        description:
            'Gregory House tackles health mysteries as would a medical Sherlock Holmes, all the while playing mind games with colleagues that include his best friend, oncologist James Wilson. House, an acerbic infectious disease specialist, solves medical puzzles with the help of a team of young diagnosticians.'),
    Movies(
        movieTitle: 'The 100',
        moviePic:
            'https://github.com/xDelusion/test/blob/main/assets/images/The100.jpg?raw=true',
        // 'assets/images/The100.jpg',
        movieRating: 7.6,
        releaseYear: 2014,
        reviews: [
          "Hard to get into a show where everyone is so treacherous all the time. Add complete and utter stupidity from Clark and most of the 100. Super bad decisions that get made over and over again by everyone. By the end of season 3 this show is becoming near unwatchable. Usually i stay the course with shows I begin, but this one will be ending for me if it gets much worse.",
          "Seasons 1-4 were phenomenal. Seasons 5-6 weren't as good, but still really solid seasons with some fantastic episodes. Season 7 started out great with its first two episodes & a few other gems, but for the most part was downright horrendous.\n"
              "The 100's final season ruined the entire show arguably more than Game of Thrones' 8th season did for itself. It's as though everything that made The 100 what it was for the first 6 seasons got thrown out of the window in favor of spiteful, terrible writing. What was once my favorite show has no rewatchability after Season 7."
        ],
        description:
            "100 years in the future, when the Earth has been abandoned due to radioactivity, the last surviving humans live on an ark orbiting the planet — but the ark won't last forever. So the repressive regime picks 100 expendable juvenile delinquents to send down to Earth to see if the planet is still habitable."),
    Movies(
        movieTitle: 'Into the Badlands',
        moviePic:
            'https://github.com/xDelusion/test/blob/main/assets/images/IntoTheB.jpg?raw=true',
        // 'assets/images/IntoTheB.jpg',
        movieRating: 7.9,
        releaseYear: 2015,
        reviews: [
          "One of my favourite shows of all time I can't believe they're getting rid of it as it goes from strength to strength. The last season ended perfectly to set up for a game changing 4th season that I absolutely need to see. I pray somebody saves this great program.",
          "The love child of Mad Max and Ip Man mixed with an old school Western. This show is nothing like anything else, but there's something for everyone. I'm not really a fan of steam punk, but this is very well done. High production value and slick choreography.",
          "Into the Badlands is a very underrated show that didn't get the recognition it deserved. It's an action packed thriller that keeps you entertained throughout the entire series and one of the better martial arts series I've ever seen! The fight scenes are the biggest highlight of the show though, the choreography is just beautiful."
        ],
        description:
            'A mighty warrior and a young boy with supernatural powers search for enlightenment in a ruthless post-apocalyptic America controlled by feudal barons.'),
    Movies(
        movieTitle: 'White Collar',
        moviePic:
            'https://github.com/xDelusion/test/blob/main/assets/images/WhiteCollar.jpg?raw=true',
        // 'assets/images/WhiteCollar.jpg',
        movieRating: 8.2,
        releaseYear: 2009,
        reviews: [
          "What to say. White collar is one of the special ones. It's funny, heart warming, action packed (at times). Worth watching for all ages the the two leads play off each other better than any other tv duo I can recall in recent history.\n"
              "\n"
              "Give it a go you won't be sorry.",
          "I love this show, seen it many times from start to finish.\n"
              "\n"
              "Great cast - the main reason I like the show so much is that I love every single character and that I wish I could be part of it all myself! I especially like the Neal/Elizabeth/Mozzie/Peter bond and can't get enough of those four.\n"
              "\n"
              "Love the setting in New York, Neal's flat, the FBI office. Some funny twists and interesting crimes the team have to solve, even though some of it doesn't always makes sense it doesn't even matter.\n"
              "\n"
              "Brilliant show."
        ],
        description:
            "White Collar is an American police procedural drama television series created by Jeff Eastin, starring Tim DeKay as FBI Special Agent Peter Burke and Matt Bomer as Neal Caffrey, a highly intelligent and multi-talented con artist, forger, and thief, working as both Burke's criminal informant and an FBI consultant."),
    Movies(
        movieTitle: 'Friends',
        moviePic:
            'https://github.com/xDelusion/test/blob/main/assets/images/Friends.jpg?raw=true',
        // 'assets/images/Friends.jpg',
        movieRating: 8.9,
        releaseYear: 1994,
        reviews: [
          "People are saying that friends is running out of ideas and that the humour is getting dull. Running out of ideas? possibly. Humour getting feeble? absolutely not. In fact it's getting better. OK, so perhaps they're beginning to 'pair up' the six of them, but so what. Chandler's sarcasm is still as funny as ever. Monica's quirkiness still works. Phoebe's goofiness still brings about a smile. And Joey,Rachel and Ross are still as funny as they always were. So stop being a bunch of cynics and enjoy the show while it's still on.",
          "I never used to watch this show. My wife loved this show and whenever she would watch it I would never pay attention because I had no interest in it. But then one day I happen to look up and see something funny and I got hooked. Out of all the characters on this show the one I can relate to the most was Chandler.\n"
              "\n"
              "I started watching all the reruns with my wife all the time on TBS. But after my wife passed away in September of last year I just can't bring myself to watch the show. All I have to say is the show is definitely worth watching and it was sad to see it go.\n"
              "\n"
              "Thank you Matthew for making me and my wife laugh. Rest in peace."
        ],
        description:
            'Comedy series about a tight-knit group of friends living in Manhattan. It also covers their interactions with their families, their lovers, and various colleagues over a period of several years. The series opens with runaway bride Rachel Green, who has just abandoned her fiance Barry Farber at the altar.'),
    Movies(
        movieTitle: 'Suits',
        moviePic:
            'https://github.com/xDelusion/test/blob/main/assets/images/Suits.jpg?raw=true',
        // 'assets/images/Suits.jpg',
        movieRating: 8.4,
        releaseYear: 2011,
        reviews: [
          "Suits is one of those shows where once you start watching it you can't stop. It's addicting! The chemistry between the characters on this show is as good as it gets on tv! There are a thousand shows about lawyers out there but this is BY FAR the best and the most original one! I can not recommend this show enough!",
          "Patrick J. Adams & Gabriel Macht both give convincing performances in the pilot, something sure to excel even more throughout the series.\n"
              "\n"
              "The script, acting, and quality are all flawless, as far as television goes. If you're looking to be highly entertained on Thursday night, then look no further. The subtle humor, creative plot, and enjoyable dialogue entices the viewer more with each passing moment.\n"
              "\n"
              "If you're into legal shows that include all aspects of human nature, including compassion, then Suits is for you.\n"
              "\n"
              "Hopefully this show continues to have the opportunity to thrive; it has definitely drawn me in and I won't miss a second of it."
        ],
        description:
            "College drop-out Mike Ross accidentally lands a job with one of New York's best legal closers, Harvey Specter. They soon become a winning team with Mike's raw talent and photographic memory, and Mike soon reminds Harvey of why he went into the field of law in the first place."),
    Movies(
        movieTitle: 'Gossip Girl',
        moviePic:
            'https://github.com/xDelusion/test/blob/main/assets/images/GossipGirl.jpg?raw=true',
        // 'assets/images/GossipGirl.jpg',
        movieRating: 7.5,
        releaseYear: 2008,
        reviews: [
          "Gossip girl was a great show (first seasons were perfect) the acting is decent, the cast has chemistry, refreshing story, great cinematography although the last few seasons have worn off, the show is still good.",
          "I started to watch this series last month on Netflix (2015), and was so hooked I couldn't wait for the next episode. I also agree with all the positive comments. Being born and raised in Manhattan, I loved that it took place in my city. Even though I was not raised in affluence, The series made me imagine that I did. The acting was so superbly done by everyone, especially Ed Westwick and Leighton Bleester. Their chemistry was so intense and real, it seemed amazing they didn't get together in real life. I'm so sorry that it's over, but happy that I can play it over again whenever I want. I think that we will be seeing a lot more of Ed Westwick in the future; he is an amazing talent."
        ],
        description:
            "Gossip Girl, a ruthless and mysterious blogger reveals secrets about the lives of privileged upper-class adolescents living in Manhattan's Upper East Side.")
  ];
}
