resizeBg = (image)->
	$ = require 'jquery'
	image.each ->
		thisModBack = $ this
		nw = thisModBack.prop('naturalWidth')
		nh = thisModBack.prop('naturalHeight')
		thisBox = thisModBack.parent()
		thisBoxWidth = thisBox.width()
		thisBoxHeight = thisBox.height()
		thisModBack.css({'width':'100%','height':'100%'})
		newW = thisModBack.width()
		newH = thisModBack.height()
		offWidth = nw - newW
		offHeight = nh - newH
		if offHeight > offWidth
			iw = thisModBack.width()
			ih = (nh * iw) / nw
			ih = Math.ceil(ih)
			thisModBack.css('min-height',"#{ih}px")
		else
			ih = thisModBack.height()
			iw = (nw * ih) / nh
			iw = Math.ceil(iw)
			thisModBack.css('width','auto')
			thisModBack.css('min-width',"#{iw}px")
		afterSizeW = thisModBack.width()
		afterSizeH = thisModBack.height()
		if afterSizeW < thisBoxWidth
			thisModBack.css('width', '100%')
module.exports = resizeBg