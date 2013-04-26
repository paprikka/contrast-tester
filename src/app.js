(function() {
  $(function() {
    var $blurGotoBtn, $blurTarget, $blurTargetUrl, $picker, loadUrl;

    $blurTarget = $('#blur-target');
    $blurTargetUrl = $('#blur-target-url');
    $blurGotoBtn = $('#blur-goto');
    $picker = $('#blur-value');
    loadUrl = function(url) {
      return $blurTarget.attr('src', url);
    };
    $picker.on('change', function() {
      var $me;

      $me = $(this);
      return $blurTarget.css({
        'webkit-filter': 'blur(' + $me.val() + 'px)'
      });
    });
    $blurGotoBtn.on('click', function() {
      return loadUrl($blurTargetUrl);
    });
    return loadUrl('http://google.com');
  });

}).call(this);

/*
//@ sourceMappingURL=app.js.map
*/