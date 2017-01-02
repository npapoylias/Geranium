tests
testBigJsonTA

	| tJSParser  |
	tJSParser := TotJsonParser new with: TAlgo. "remember that the grammar is created its time -- for bench etc"

	charts := tJSParser parse: '[
  {
    "_id": "5829933f45655c137f72afb4",
    "index": 0,
    "guid": "1de3c7fa-9f5f-4ce2-bd00-1492485feea5",
    "isActive": true,
    "balance": "$3,545.59",
    "picture": "http://placehold.it/32x32",
    "age": 26,
    "eyeColor": "green",
    "name": {
      "first": "Reeves",
      "last": "Stanton"
    },
    "company": "CHILLIUM",
    "email": "reeves.stanton@chillium.io",
    "phone": "+1 (993) 405-2896",
    "address": "114 Lombardy Street, Tivoli, New York, 5382",
    "about": "Nulla eiusmod sunt cupidatat officia laborum exercitation duis aliquip Lorem laboris nostrud veniam. Sunt in magna consequat reprehenderit exercitation veniam ut consequat exercitation. Occaecat nisi aliquip ad exercitation dolore. Id laboris pariatur aliquip irure ut duis et sunt dolore dolore. Exercitation non aliqua excepteur sint magna laborum. Tempor velit quis ad in Lorem Lorem amet mollit voluptate duis reprehenderit sunt dolor. Dolor qui enim qui mollit labore sunt fugiat.",
    "registered": "Saturday, November 28, 2015 10:53 PM",
    "latitude": "-73.020167",
    "longitude": "134.786528",
    "tags": [
      "adipisicing",
      "irure",
      "velit",
      "in",
      "pariatur"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Mccarthy Mcguire"
      },
      {
        "id": 1,
        "name": "Sadie Swanson"
      },
      {
        "id": 2,
        "name": "Hodge Moody"
      }
    ],
    "greeting": "Hello, Reeves! You have 5 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "5829933f561d35c3308fbcd8",
    "index": 1,
    "guid": "f2601a6c-4999-44fb-aeb2-af7849905ca4",
    "isActive": false,
    "balance": "$2,760.73",
    "picture": "http://placehold.it/32x32",
    "age": 30,
    "eyeColor": "brown",
    "name": {
      "first": "Patti",
      "last": "Aguirre"
    },
    "company": "HYDROCOM",
    "email": "patti.aguirre@hydrocom.ca",
    "phone": "+1 (999) 589-2632",
    "address": "837 Adler Place, Brazos, New Mexico, 6246",
    "about": "Magna dolore in nulla esse sint occaecat excepteur deserunt culpa excepteur. Anim quis minim fugiat fugiat anim laborum. Pariatur culpa non id aliqua eu anim sint ad adipisicing tempor non adipisicing laboris. Dolore adipisicing pariatur sit occaecat ut. Aliqua dolor minim excepteur laborum cupidatat nisi est cupidatat ut exercitation. Incididunt est commodo esse ea sint reprehenderit est labore laboris ex minim proident Lorem do.",
    "registered": "Wednesday, October 19, 2016 5:22 PM",
    "latitude": "38.995324",
    "longitude": "-95.68088",
    "tags": [
      "sint",
      "amet",
      "sunt",
      "consectetur",
      "Lorem"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Briggs Chapman"
      },
      {
        "id": 1,
        "name": "Kelley Neal"
      },
      {
        "id": 2,
        "name": "Chandra William"
      }
    ],
    "greeting": "Hello, Patti! You have 6 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "5829933fc55451f6efea29e2",
    "index": 2,
    "guid": "9eed2015-63f5-469b-bc4d-3f625bb742d0",
    "isActive": false,
    "balance": "$2,077.11",
    "picture": "http://placehold.it/32x32",
    "age": 31,
    "eyeColor": "blue",
    "name": {
      "first": "Clemons",
      "last": "Jarvis"
    },
    "company": "COMTRAK",
    "email": "clemons.jarvis@comtrak.org",
    "phone": "+1 (910) 404-2741",
    "address": "258 Dakota Place, Summerset, South Carolina, 2662",
    "about": "Cillum magna tempor voluptate consectetur ullamco enim mollit ullamco aliquip incididunt nisi cupidatat. Nostrud aute est nisi incididunt cupidatat ut dolor ad non nostrud. Dolore labore fugiat consequat consectetur incididunt cupidatat minim laboris. Ullamco est est incididunt nulla nulla minim enim occaecat fugiat ut tempor. Deserunt cupidatat nisi adipisicing est velit id amet qui. Commodo aliqua tempor occaecat ea consectetur consectetur.",
    "registered": "Monday, December 1, 2014 7:42 AM",
    "latitude": "22.819718",
    "longitude": "-159.31187",
    "tags": [
      "deserunt",
      "incididunt",
      "ipsum",
      "enim",
      "velit"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Little Rodgers"
      },
      {
        "id": 1,
        "name": "Sofia Cooley"
      },
      {
        "id": 2,
        "name": "Monroe Jennings"
      }
    ],
    "greeting": "Hello, Clemons! You have 5 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "5829933f376548679c1f7fe3",
    "index": 3,
    "guid": "6e22aeee-d6ee-433f-977c-7bd1acd10273",
    "isActive": false,
    "balance": "$1,811.95",
    "picture": "http://placehold.it/32x32",
    "age": 32,
    "eyeColor": "green",
    "name": {
      "first": "Mathis",
      "last": "Leach"
    },
    "company": "COMTREK",
    "email": "mathis.leach@comtrek.me",
    "phone": "+1 (941) 469-2252",
    "address": "885 Pooles Lane, Morriston, Indiana, 1144",
    "about": "Anim voluptate id nulla officia irure. Anim sunt qui elit ipsum consequat nisi. Minim laborum eiusmod officia nostrud. Duis irure laborum sit deserunt nostrud occaecat pariatur ut consectetur incididunt quis tempor consequat aliquip. Eu excepteur qui fugiat voluptate sint pariatur aliqua commodo ea fugiat aliquip ipsum nulla. Aliquip enim anim commodo pariatur dolor eiusmod fugiat culpa aliquip labore esse officia labore.",
    "registered": "Tuesday, July 15, 2014 12:27 AM",
    "latitude": "-86.086873",
    "longitude": "-145.063901",
    "tags": [
      "aliqua",
      "nisi",
      "cupidatat",
      "voluptate",
      "enim"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Nixon Underwood"
      },
      {
        "id": 1,
        "name": "Sandoval Oneil"
      },
      {
        "id": 2,
        "name": "Jodie Bass"
      }
    ],
    "greeting": "Hello, Mathis! You have 10 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "5829933f91080e43f2815a8f",
    "index": 4,
    "guid": "a110cbcd-da9c-44c5-9740-12795daa38a1",
    "isActive": true,
    "balance": "$3,948.74",
    "picture": "http://placehold.it/32x32",
    "age": 38,
    "eyeColor": "brown",
    "name": {
      "first": "Hardy",
      "last": "Pace"
    },
    "company": "EMOLTRA",
    "email": "hardy.pace@emoltra.biz",
    "phone": "+1 (823) 523-3553",
    "address": "150 Varick Street, Crawfordsville, Rhode Island, 1521",
    "about": "Amet sunt occaecat officia laboris exercitation. Id in amet nostrud eiusmod esse elit. Ullamco laborum occaecat ullamco ipsum qui dolore est pariatur mollit magna nostrud dolore cillum. Excepteur dolore ad consectetur magna pariatur eiusmod. Veniam exercitation proident deserunt magna. Ad consequat deserunt reprehenderit commodo nulla adipisicing id pariatur consequat exercitation do ullamco proident dolore.",
    "registered": "Saturday, February 20, 2016 3:42 AM",
    "latitude": "75.28317",
    "longitude": "176.558437",
    "tags": [
      "ex",
      "quis",
      "ex",
      "qui",
      "labore"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Macdonald Cleveland"
      },
      {
        "id": 1,
        "name": "Caldwell Brewer"
      },
      {
        "id": 2,
        "name": "Justine Beasley"
      }
    ],
    "greeting": "Hello, Hardy! You have 9 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "5829933fe9ef1f88060d2e73",
    "index": 5,
    "guid": "5e034438-ae3a-4981-bc30-c07ccb4ba2c2",
    "isActive": false,
    "balance": "$3,161.10",
    "picture": "http://placehold.it/32x32",
    "age": 21,
    "eyeColor": "blue",
    "name": {
      "first": "Martha",
      "last": "Spence"
    },
    "company": "COLLAIRE",
    "email": "martha.spence@collaire.net",
    "phone": "+1 (894) 513-2129",
    "address": "788 Crooke Avenue, Gardiner, Connecticut, 4632",
    "about": "Cupidatat fugiat id sint deserunt in et et aliquip qui velit do reprehenderit occaecat et. Nulla nostrud enim id anim irure elit enim fugiat nostrud voluptate est consequat. Voluptate laboris labore occaecat aliquip dolor. Voluptate ad fugiat laboris quis aute deserunt in aliqua.",
    "registered": "Wednesday, August 6, 2014 11:53 AM",
    "latitude": "21.811418",
    "longitude": "71.300384",
    "tags": [
      "incididunt",
      "pariatur",
      "cupidatat",
      "ea",
      "veniam"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Brown Williams"
      },
      {
        "id": 1,
        "name": "Deanna Ferguson"
      },
      {
        "id": 2,
        "name": "Violet Shaw"
      }
    ],
    "greeting": "Hello, Martha! You have 10 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "5829933fc77a2bae9dc5145a",
    "index": 6,
    "guid": "e33f729a-d690-49ba-bc89-ca56f934e0ea",
    "isActive": false,
    "balance": "$3,451.86",
    "picture": "http://placehold.it/32x32",
    "age": 21,
    "eyeColor": "brown",
    "name": {
      "first": "Stacy",
      "last": "Houston"
    },
    "company": "INSURON",
    "email": "stacy.houston@insuron.com",
    "phone": "+1 (854) 435-3498",
    "address": "959 Concord Street, Aurora, New Hampshire, 7772",
    "about": "Velit exercitation excepteur eiusmod exercitation aliqua duis cupidatat eiusmod aliquip pariatur laborum amet. Laborum adipisicing officia culpa enim pariatur fugiat id officia magna. Sit occaecat Lorem aliquip sint id laborum magna. Consectetur labore laborum reprehenderit magna nostrud adipisicing. Lorem deserunt Lorem sunt dolor. Dolore amet ut commodo nulla Lorem incididunt Lorem sunt labore laborum nisi consectetur.",
    "registered": "Tuesday, November 24, 2015 11:38 AM",
    "latitude": "77.866637",
    "longitude": "-57.468626",
    "tags": [
      "non",
      "esse",
      "velit",
      "deserunt",
      "labore"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Kimberley Mayer"
      },
      {
        "id": 1,
        "name": "Hampton Joyner"
      },
      {
        "id": 2,
        "name": "Bowen Freeman"
      }
    ],
    "greeting": "Hello, Stacy! You have 9 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "5829933fee2454e42a23756c",
    "index": 7,
    "guid": "6d5eeb9c-1c9b-4c94-9ade-7b85927e6d89",
    "isActive": true,
    "balance": "$3,923.75",
    "picture": "http://placehold.it/32x32",
    "age": 33,
    "eyeColor": "blue",
    "name": {
      "first": "Constance",
      "last": "Travis"
    },
    "company": "ZIDOX",
    "email": "constance.travis@zidox.biz",
    "phone": "+1 (918) 499-2733",
    "address": "243 Malbone Street, Wheaton, Iowa, 8798",
    "about": "Aliquip proident est et sunt magna. Duis ipsum velit laboris reprehenderit excepteur veniam. Sunt occaecat excepteur excepteur labore. Culpa sit aute ut id laborum commodo sint do qui enim magna ex anim. Voluptate ullamco veniam minim voluptate aute duis elit sunt voluptate in nisi dolore sit. Elit labore laboris amet incididunt in cupidatat non et est qui consectetur.",
    "registered": "Wednesday, January 20, 2016 9:41 PM",
    "latitude": "73.648824",
    "longitude": "-150.40766",
    "tags": [
      "duis",
      "est",
      "labore",
      "sint",
      "aute"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Terri Mccarthy"
      },
      {
        "id": 1,
        "name": "Amalia Blankenship"
      },
      {
        "id": 2,
        "name": "Salas Oneill"
      }
    ],
    "greeting": "Hello, Constance! You have 5 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "5829933fbdb1a902f9ed2736",
    "index": 8,
    "guid": "fa4ab5e7-b357-4da7-9a1e-33103721f4ad",
    "isActive": true,
    "balance": "$3,439.45",
    "picture": "http://placehold.it/32x32",
    "age": 34,
    "eyeColor": "blue",
    "name": {
      "first": "Thelma",
      "last": "Woods"
    },
    "company": "ACCUSAGE",
    "email": "thelma.woods@accusage.co.uk",
    "phone": "+1 (983) 512-2649",
    "address": "116 Gunnison Court, Idledale, West Virginia, 1593",
    "about": "Adipisicing quis qui Lorem est dolore elit qui Lorem sit aliqua. Sint duis veniam ipsum ex pariatur culpa nisi ut proident deserunt Lorem. Nisi enim non velit excepteur commodo non consectetur voluptate dolor quis mollit.",
    "registered": "Wednesday, July 23, 2014 7:59 AM",
    "latitude": "46.749703",
    "longitude": "-30.646582",
    "tags": [
      "sit",
      "veniam",
      "ipsum",
      "do",
      "consectetur"
    ],
    "range": [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9
    ],
    "friends": [
      {
        "id": 0,
        "name": "Lynnette Tanner"
      },
      {
        "id": 1,
        "name": "Lynn Thompson"
      },
      {
        "id": 2,
        "name": "Kristen Manning"
      }
    ],
    "greeting": "Hello, Thelma! You have 5 unread messages.",
    "favoriteFruit": "banana"
  }
]'.

	self assert: charts succeeded.