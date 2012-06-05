require.config
  paths:
    jquery: 'libs/jquery-1.7.2'
    underscore: 'libs/underscore-1.3.3'
    backbone: 'libs/backbone-0.9.2'

define (require) ->

  MainRouter = require 'routes/main'
  Backbone = require 'backbone'
  
  new MainRouter()
  Backbone.history.start()
