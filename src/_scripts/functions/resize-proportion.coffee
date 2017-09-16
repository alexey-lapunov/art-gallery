resizeProportion = (proportion) ->
	$ = require 'jquery'
	elem = $(proportion.element)
	if elem.length > 0
		elemWidth = elem.width()
		elemHeight = (elemWidth * proportion.height) / proportion.width
		elemHeight = Math.ceil(elemHeight)
		elem.height(elemHeight)
	else
		return false
		console.warn "selector '#{proportion.element}' is not found on page"

module.exports = resizeProportion;