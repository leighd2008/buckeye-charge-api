const getTournaments = (req, res, teamData)=> {
  teamData.select('id', 'weekend', 'teamId', 'tourname').from('tournaments')
    .then(tournaments => {
      res.json(tournaments)
    })
}

module.exports = {
  getTournaments: getTournaments
};