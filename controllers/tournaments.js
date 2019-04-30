const getTournaments = (teamData)=> (req, res) => {
  teamData.select('id', 'weekend', 'teamId', 'tourname').from('tournaments')
    .then(tournaments => {
      if (tournaments.length) {
        res.json(tournaments)
      } else {
        res.status(400).json('tournaments not fournd')
      }
    })
    .catch(err => res.status(400).json('error getting tournaments'))
}

module.exports = {
  getTournaments: getTournaments
};