exports.isLogin = (req, res, next) ->
  res.redirect '/' unless req.session.passport.user?
  next()
