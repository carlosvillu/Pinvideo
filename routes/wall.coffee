module.exports = (app) ->

  {isLogin} = require './middlewares'

  app.get '/wall', isLogin, (req, res) ->
    res.json req.session
