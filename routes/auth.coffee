module.exports = (app) ->

  passport = app.get 'passport'

  app.get '/auth/facebook', passport.authenticate 'facebook'

  app.get '/auth/facebook/callback', passport.authenticate 'facebook', successRedirect: '/wall', failureRedirect: '/login'
