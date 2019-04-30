const getAllTeams = (req, res, teamData)=> {
  teamData.select('id', 'teamname').from('teams')
    .then(teams => {
      res.json(teams)
    })
}

module.exports = {
  getAllTeams: getAllTeams
};