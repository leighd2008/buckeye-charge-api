const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const morgan = require('morgan');
const knex = require('knex')

const teamData = knex({
  client: 'pg',
  connection: {
    host : '127.0.0.1',
    user : 'postgres',
    password : 'postgres',
    database : 'buckeye-charge'
  }
});

const app = express();
console.log('hmmm?');
app.use(morgan('combined'));
app.use(cors());

app.get('/', (req, res)=> {
  // res.send(teamData.teams);
  // console.log()
  teamData.select('id', 'teamname').from('teams')
    .then(teams => {
      res.json(teams)
    })
})

app.get('/Team/:name', (req, res) => {
  const { name } = req.params;
  
  teamData.select('*').from('teams').where({
    name: name
  }).then(team => {
    if (team.length) {
      res.json(team[0])
      
    } else {
      res.status(400).json('not found')
    }
  })
  .catch(err => res.status(400).json('error getting team'))
})

app.get('/Team/:name/roster', (req, res) => {
    const { name } = req.params;
  teamData.select('*').from('rosters').where({
    name: name
  }).then(roster => {
    if (roster.length) {
      res.json(roster)
    } else {
      res.status(400).json('not found')
    }
  })
  .catch(err => res.status(400).json('error getting roster'))
})

app.get('/tournaments', (req, res) => {
  teamData.select('id', 'weekend', 'teamId', 'tourname').from('tournaments')
    .then(tournaments => {
      res.json(tournaments)
    })
})


app.listen(3000, ()=> {
  console.log('app is running on port 3000')
})
