(function() {
  $(function() {
    var $blurGotoForm, $blurTarget, $blurTargetContainer, $blurTargetUrl, $picker, loadUrl;

    $blurTarget = $('#blur-target');
    $blurTargetContainer = $('#blur-target-container');
    $blurTargetUrl = $('#blur-target-url');
    $blurGotoForm = $('#blur-goto');
    $picker = $('#blur-value');
    loadUrl = function(url) {
      if ($blurTarget.length) {
        $blurTarget.remove();
      }
      $blurTarget = $('<iframe id="blur-target" src="' + url + '" class="blur-target"></iframe>');
      return $blurTargetContainer.append($blurTarget);
    };
    $picker.on('change', function() {
      var $me, val;

      $me = $(this);
      val = $me.val();
      return $blurTarget.css({
        'webkit-filter': 'blur(' + val + 'px)'
      });
    });
    $blurGotoForm.on('submit', function(e) {
      loadUrl($blurTargetUrl.val());
      return e.preventDefault();
    });
    $blurTargetUrl.val('http://twitter.github.io/bootstrap');
    return loadUrl('http://twitter.github.io/bootstrap');
  });

}).call(this);

/*
//@ sourceMappingURL=app.js.map
*/