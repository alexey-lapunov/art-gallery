initTargets = ->
  $ = require('jquery')
  targetBtn = $('[data-target]')
  targetBtn.click (e) ->
    e.preventDefault()
    thisTarget = $(this).data('target')
    yaCounterXXXXXXXX.reachGoal thisTarget
    return true
module.exports = initTargets