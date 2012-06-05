define (require) ->
  Backbone = require 'backbone'
  
  class MainRoute extends Backbone.Router
    
    routes:
      '': 'home'
      '!gallery': 'gallery'

    home: ->
      alert 'Home'

    gallery: ->
      alert 'Gallery'

  MainRoute
