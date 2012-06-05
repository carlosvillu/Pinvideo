(function() {
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  define(function(require) {
    var Backbone, MainRoute;
    Backbone = require('backbone');
    MainRoute = (function() {

      __extends(MainRoute, Backbone.Router);

      function MainRoute() {
        MainRoute.__super__.constructor.apply(this, arguments);
      }

      MainRoute.prototype.routes = {
        '': 'home',
        '!gallery': 'gallery'
      };

      MainRoute.prototype.home = function() {
        return alert('Home');
      };

      MainRoute.prototype.gallery = function() {
        return alert('Gallery');
      };

      return MainRoute;

    })();
    return MainRoute;
  });

}).call(this);
