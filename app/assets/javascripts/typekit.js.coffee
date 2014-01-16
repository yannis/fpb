$ ->
  Modernizr.load
    test: Modernizr.fontface
    yep : 'http://use.typekit.com/jka6pbj.js'
    complete: ->
      try
        Typekit.load()
