express = require 'express'
passport = require 'passport'
FacebookStrategy = require('passport-facebook').Strategy

app = express()

passport.serializeUser (user, done) ->
  done null, user.id

passport.deserializeUser (id, done) ->
  done null, id

passport.use new FacebookStrategy
  clientID: '432982730053284'
  clientSecret: '23117b49ab5b643f5de6bbc5ff75c5aa'
  callbackURL: "http://localhost:3000/auth/facebook/callback"
  (accessToken, refreshToken, profile, done) ->
    done null, profile

app.configure ->
  app.set 'views', "#{__dirname}/views"
  app.set 'view engine', 'jade'
  app.set 'passport', passport
  app.use(express.favicon())
  app.use(express.logger('dev'))
  app.use(express.static("#{__dirname}/public"))
  app.use(express.cookieParser('12345454sdfasdfasf'))
  app.use(express.bodyParser())
  app.use(express.session secret: '123456')
  app.use(passport.initialize())
  app.use(passport.session())
  app.use(express.methodOverride())
  app.use(app.router)


app.configure 'development', ->
  app.use(express.errorHandler())

require('./routes')(app)

module.exports = app
