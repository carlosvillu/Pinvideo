
  require.config({
    paths: {
      jquery: 'libs/jquery-1.7.2',
      underscore: 'libs/underscore-1.3.3',
      backbone: 'libs/backbone-0.9.2'
    }
  });

  define(function(require) {
    var Backbone, MainRouter;
    MainRouter = require('routes/main');
    Backbone = require('backbone');
    new MainRouter();
    return Backbone.history.start();
  });
