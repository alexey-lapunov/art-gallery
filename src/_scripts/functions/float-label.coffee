floatLabel = (param)->
	$ = require 'jquery'
	field = $ ".jFloatField"
	field.each ->
		thisField = $ this
		thisLabel = thisField.find ".jFloatLabel"
		thisInput = thisField.find ".jFloatInput"
		changeInputs = (qthisInput)->
			thisInputValue = qthisInput.val()
			thisPlaceholder = qthisInput.attr('placeholder')
			if (thisPlaceholder == '' || thisPlaceholder == undefined) && thisInputValue == '' 
				thisLabel.removeClass("to-top")
			else
				thisLabel.addClass('to-top')

		thisInput.focusin ->
			thisLabel.addClass('to-top')
		thisInput.focusout ->
			changeInputs($(this))
		thisInput.change ->
			changeInputs($(this))
module.exports = floatLabel