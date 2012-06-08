module.exports = (app) ->
  require('./home')(app)
  require('./wall')(app)
  require('./auth')(app)
