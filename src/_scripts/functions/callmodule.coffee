callmodule = ->
	$ = require('jquery')
	callBtn = $('[data-call]')
	callBtn.click (e) ->
		e.preventDefault()
		thisCall = $(this).data('call')

		calledModule = $(".#{thisCall}")
		if thisCall.match(/([\s\S]{1,99})--([\s\S]{1,99})/)
			thisCall = thisCall.replace(/--[\s\S]{1,99}/, '')
		calledModule.toggleClass("#{thisCall}--enabled")
		$(document).keyup (e) ->
			if e.keyCode == 27 && calledModule != undefined
				calledModule.removeClass("#{thisCall}--enabled")
module.exports = callmodule