express = require 'express'
passport = require 'passport'
FacebookStrategy = require('passport-facebook').Strategy

app = express()

passport.use new FacebookStrategy
  clientID: '432982730053284',
  clientSecret: '23117b49ab5b643f5de6bbc5ff75c5aa',
  callbackURL: "http://localhost:3000/auth/facebook/callback"
  ,
  (accessToken, refreshToken, profile, done) ->
    global.profile = profile

app.configure ->
  app.set 'views', "#{__dirname}/views"
  app.set 'view engine', 'jade'
  app.use(express.favicon())
  app.use(express.logger('dev'))
  app.use(express.static("#{__dirname}/public"))
  app.use(express.bodyParser())
  app.use(express.methodOverride())
  app.use(app.router)


app.configure 'development', ->
  app.use(express.errorHandler())

app.get '/', (req, res) ->
  res.render global.profile #'index', title: 'Wall'

module.exports = app
