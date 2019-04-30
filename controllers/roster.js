const getRoster = (teamData)=> (req, res) => {
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
}

module.exports = {
  getRoster: getRoster
};