const getTeamInfo = (teamData)=> (req, res) => {
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
}

module.exports = {
  getTeamInfo: getTeamInfo
};