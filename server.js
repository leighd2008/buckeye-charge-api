const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const morgan = require('morgan');
const knex = require('knex')

const allTeams = require('./controllers/allTeams');
const teamInfo = require('./controllers/teamInfo');
const roster = require('./controllers/roster');
const tournaments = require('./controllers/tournaments');

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

app.get('/', (req, res) => {allTeams.getAllTeams(req, res, teamData) })

app.get('/Team/:name', (req, res) => {teamInfo.getTeamInfo(req, res, teamData) })

app.get('/Team/:name/roster', (req, res) => {roster.getRoster(req, res, teamData) })

app.get('/tournaments', (req, res) => {tournaments.getTournaments(req, res, teamData) })

app.listen(3000, ()=> {
  console.log('app is running on port 3000')
})
