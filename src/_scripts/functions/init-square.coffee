initSquare = (module) ->
	$ = require 'jquery'
	winWidth = $(window).width()
	winHeight = $(window).height()
	if winWidth < 1024 && module.parents('.features--unswipe').length == 0
		module.height(winHeight)
module.exports = initSquare