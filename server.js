const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const morgan = require('morgan');
const knex = require('knex')

// const teamData = knex({
//   client: 'pg',
//   connection: {
//     host : '127.0.0.1',
//     user : 'postgres',
//     password : 'postgres',
//     database : 'buckeye-charge'
//   }
// });

const app = express();
console.log('hmmm?');
app.use(morgan('combined'));
app.use(cors());

const teamData = {
  teams: [
    {
    id: 1,
    name: 'Cholley16U',
    teamname: 'Cholley 16U',
    headcoach: 'Mark Cholley',
    assistantcoaches: 'Paul Mason, Angie Cress, Kelli Martin',
    teamemail: 'Neiman41@msn.com',
    fieldname: "Jedd Park",
    fieldaddress1: "2275 Pickle Rd",
    fieldaddress2: "Akron, Ohio 44312",
    location: "Akron, Ohio",
    googlemaplink: "https://goo.gl/maps/a9NZ6ZDooJm",
    teampic: 'dugout.JPG',
    roster: [
      {
        jersey_num: 22,
        firstName: "Jordan",
        lastName: "Cholley",
        positions: "P, SS, 2B, OF"
      },
      {
        jersey_num: '01',
        firstName: "Olivia",
        lastName: "Mason",
        positions: "2B, OF"
      },
      {
        jersey_num: 42,
        firstName: "Mikayla",
        lastName: "Haydu",
        positions: "SS, 2B, OF"
      },
      {
        jersey_num: 19,
        firstName: "Kayedon",
        lastName: "Martin",
        positions: "C, 3B"
      },
      {
        jersey_num: 10,
        firstName: "Shea",
        lastName: "Cress",
        positions: "1B, OF"
      },
      {
        jersey_num: 12,
        firstName: "Haley",
        lastName: "Leininger",
        positions: "OF"
      },
      {
        jersey_num: 8,
        firstName: "Amber",
        lastName: "Burick",
        positions: "P, 2B, OF"
      },
      {
        jersey_num: 20,
        firstName: "Emma",
        lastName: "Rose",
        positions: "3B, 1B"
      },
      {
        jersey_num: 6,
        firstName: "Sydney",
        lastName: "Mantell",
        positions: "C"
      },
      {
        jersey_num: 24,
        firstName: "McKenzi",
        lastName: "Corpie",
        positions: "P, OF, 1B"
      },
      {
        jersey_num: 2,
        firstName: "Amanda",
        lastName: "Morten",
        positions: "P, OF, IF"
      },
      {
        jersey_num: 44,
        firstName: "Kylie",
        lastName: "Kratz",
        positions: "C, IF, OF"
      },
      {
        jersey_num: 15,
        firstName: "Samantha",
        lastName: "Secrest",
        positions: "P, IF, OF"
      },
    ],
    tournaments: [
      {
        date: '',
        Weekend: 'April 26-28',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 3-5',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 10-12',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 17-19',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 24-26',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 31- June 2',
        name: 'Perfect Storm',
        Location: ''
      },
      {
        date: '',
        Weekend: 'June 7-9',
        name: 'Toledo Tune-Up',
        Location: ''
      },
      {
        date: '',
        Weekend: 'June 14-16',
        name: 'Sheer Madness',
        Location: ''
      },
      {
        date: '',
        Weekend: 'June 21-23',
        name: 'Hall of Fame Classic (Eastern National Qualifier)',
        Location: ''
      },
      {
        date: '',
        Weekend: 'June 28-30',
        name: 'Fireworks Frenzy',
        Location: ''
      },
      {
        date: '',
        Weekend: 'July 5-7',
        name: 'GAPSS',
        Location: ''
      },
      {
        date: '',
        Weekend: 'July 12-14',
        name: 'Loudonville',
        Location: ''
      },
      {
        date: '',
        Weekend: 'July 19-20',
        name: "Hope's Turn At Bat",
        Location: ''
      },
      {
        date: '',
        Weekend: 'July 26-27',
        name: 'Christmas in July',
        Location: ''
      },
    ],
    fieldimage: '../images/mark-duffel-352915-unsplash2.jpg',
    eventurls: false,
    photogallery: false,
    scoreboard: false,
  },
  {
    id: 2,
    name: 'Kaisk16U',
    teamname: 'Kaisk 16U',
    headcoach: 'Steve Kaisk',
    assistantcoaches: '',
    teamemail: 'buckeyechargefastpitch @gmail.com',
    fieldname: "Jedd Park",
    fieldaddress1: "2275 Pickle Rd",
    fieldaddress2: "Akron, Ohio 44312",
    location: "Akron, Ohio",
    googlemaplink: "https://goo.gl/maps/a9NZ6ZDooJm",
    teampic: 'dugout.JPG',
    roster: [
      {
        jersey_num: 1,
        firstName: "",
        lastName: "",
        positions: ""
      },
    ],
    tournaments: [
      {
        date: '',
        Weekend: 'April 26-28',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 3-5',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 10-12',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 17-19',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 24-26',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 31- June 2',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'June 7-9',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'June 14-16',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'June 21-23',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'June 28-30',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'July 5-7',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'July 12-14',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'July 19-20',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'July 26-27',
        name: '----',
        Location: ''
      },
    ],
    fieldimage: '../images/mark-duffel-352915-unsplash2.jpg',
    eventurls: false,
    photogallery: false,
    scoreboard: false,
  },
  {
    id: 3,
    name: 'Cavanagh15U',
    teamname: 'Cavanagh 15U',
    headcoach: 'Kevin Cavanagh',
    assistantcoaches: 'Kerry Cavanagh, Wes Hench',
    teamemail: 'cavanagh1369@gmail.com',
    fieldname: "Jedd Park",
    fieldaddress1: "2275 Pickle Rd",
    fieldaddress2: "Akron, Ohio 44312",
    location: "Akron, Ohio",
    googlemaplink: "https://goo.gl/maps/a9NZ6ZDooJm",
    teampic: 'dugout.JPG',
    roster: [
      {
        jersey_num: 1,
        firstName: "Katelyn",
        lastName: "Porter",
        positions: "C, U"
      },
      {
        jersey_num: 3,
        firstName: "Hannah",
        lastName: "McCray",
        positions: "1B"
      },
      {
        jersey_num: 5,
        firstName: "Breyonnah",
        lastName: "Chapman",
        positions: "P, 1B"
      },
      {
        jersey_num: 7,
        firstName: "Emily",
        lastName: "Savage",
        positions: "OF"
      },
      {
        jersey_num: 9,
        firstName: "Melinda",
        lastName: "Hench",
        positions: "OF, P"
      },
      {
        jersey_num: 10,
        firstName: "Alana",
        lastName: "Spurrier",
        positions: "P, U"
      },
      {
        jersey_num: 12,
        firstName: "Alyssa",
        lastName: "Pallini",
        positions: "OF, MI"
      },
      {
        jersey_num: 15,
        firstName: "Summer",
        lastName: "Glota",
        positions: "P, 1B, 3B"
      },
      {
        jersey_num: 18,
        firstName: "Jaisha",
        lastName: "Hughes",
        positions: "SS, 2B"
      },
      {
        jersey_num: 25,
        firstName: "Kaylee",
        lastName: "Lough",
        positions: "C, U"
      },
      {
        jersey_num: 27,
        firstName: "Jenna",
        lastName: "Collins",
        positions: "3B, U"
      },
      {
        jersey_num: 88,
        firstName: "Erin",
        lastName: "Malaska",
        positions: "P, OF"
      },
    ],
    tournaments: [
      {
        date: '',
        Weekend: 'April 26-28',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 3-5',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 10-12',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 17-19',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 24-26',
        name: '----',
        Location: ''
      },
      {
        date: '',
        Weekend: 'May 31- June 2',
        name: 'Perfect Storm',
        Location: 'Youngstown, OH'
      },
      {
        date: '',
        Weekend: 'June 7-9',
        name: 'Descent into Sheer Madness Showcase and USA National Qualifier',
        Location: 'North Ridgeville, OH'
      },
      {
        date: '',
        Weekend: 'June 14-16',
        name: 'Maple Leaf West - FASA State Championship',
        Location: 'North Ridgeville, Oh'
      },
      {
        date: '',
        Weekend: 'June 21-23',
        name: 'USA Softball "B" State Championships',
        Location: 'Findlay, OH'
      },
      {
        date: '',
        Weekend: 'June 28-30',
        name: 'Akron/Kent Fastpitch Showdown',
        Location: 'Akron, OH'
      },
      {
        date: '',
        Weekend: 'July 5-7',
        name: 'Cinderella Classic',
        Location: 'North Ridgeville, OH'
      },
      {
        date: '',
        Weekend: 'July 12-14',
        name: 'All Sanctioned World Series',
        Location: 'Columbus, OH'
      },
      {
        date: '',
        Weekend: 'July 19-20',
        name: "Hope's Turn at Bat",
        Location: 'Mayfield, OH'
      },
      {
        date: '',
        Weekend: 'July 26-27',
        name: '----',
        Location: ''
      },
    ],
    fieldimage: '../images/mark-duffel-352915-unsplash2.jpg',
    eventurls: false,
    photogallery: false,
    scoreboard: "//gc.com/team-5b724364630b213c93724530/scoreboard?g=5&p=57d5c700506dd2001b0bd79f",
  }
  ]
}

app.get('/', (req, res)=> {
  // res.send(teamData.teams);
  // console.log()
  res.json(teamData.teams);
})

app.get('/Team/:name', (req, res) => {
  const { name } = req.params;
  let found = false;
  teamData.teams.forEach(team => {
    if (team.name === name) {
      console.log(team.name)
      found = true;
      return res.json(team);
    }
  })
    if (!found) {
      res.status(404).json('not found');
    }
  // teamData.select('*').from('teams').where({
  //   name: name
  // }).then(team => {
  //   if (team.length) {
  //     res.json(team[0])
  //   } else {
  //     res.status(400).json('not found')
  //   }
  // })
  // .catch(err => res.status(400).json('error getting user'))
})

// app.get('/tournaments', (req, res) => {
//   res.json('tournament information')
// })


app.listen(3000, ()=> {
  console.log('app is running on port 3000')
})
