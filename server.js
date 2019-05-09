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
  connection: process.env.POSTGRES_URI
  // {
  //   host : process.env.POSTGRES_HOST,
  //   user : process.env.POSTGRES_USER,
  //   password : process.env.POSTGRES_PASSWORD,
  //   database : process.env.POSTGRES_DB
  // }
});

const app = express();
app.use(morgan('combined'));
app.use(cors());

app.get('/', allTeams.getAllTeams(teamData))

app.get('/Team/:name', teamInfo.getTeamInfo(teamData))

app.get('/Team/:name/roster', roster.getRoster(teamData))

app.get('/tournaments', tournaments.getTournaments(teamData))

app.listen(process.env.PORT || 3000, ()=> {
  console.log(`app is running on port ${process.env.PORT}`)
})
