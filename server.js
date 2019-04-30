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

app.get('/', allTeams.getAllTeams(teamData))

app.get('/Team/:name', teamInfo.getTeamInfo(teamData))

app.get('/Team/:name/roster', roster.getRoster(teamData))

app.get('/tournaments', tournaments.getTournaments(teamData))

app.listen(process.env.PORT || 3000, ()=> {
  console.log(`app is running on port ${process.env.PORT}`)
})
