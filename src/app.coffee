$ ->
  $blurTarget           = $ '#blur-target'
  $blurTargetContainer  = $ '#blur-target-container'
  $blurTargetUrl        = $ '#blur-target-url'
  $blurGotoForm         = $ '#blur-goto'
  $picker               = $ '#blur-value'
  


  loadUrl = (url)->
    if $blurTarget.length
      $blurTarget.remove()

    $blurTarget = $ '<iframe id="blur-target" src="' + url + '" class="blur-target"></iframe>'
    $blurTargetContainer.append $blurTarget
  
  $picker.on 'change', ->
    $me = $ @
    val = $me.val()
    $blurTarget.css 'webkit-filter':'blur(' + val + 'px)'
    
  $blurGotoForm.on 'submit', (e)-> 
    loadUrl $blurTargetUrl.val()
    e.preventDefault()
  
  # init
  $blurTargetUrl.val 'http://twitter.github.io/bootstrap'
  loadUrl 'http://twitter.github.io/bootstrap'
    
  
  