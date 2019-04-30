const getAllTeams = (teamData)=> (req, res) => {
  teamData.select('id', 'teamname').from('teams')
    .then(teams => {
      res.json(teams)
    })
    .catch(err => res.status(400).json('error getting team list'))
}

module.exports = {
  getAllTeams: getAllTeams
};