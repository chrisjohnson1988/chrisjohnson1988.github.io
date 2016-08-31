define [
  'cs!scenes/AbstractScene'
], (AbstractScene) -> class WelcomeScene extends AbstractScene

  id:           '#welcome'
  bodyHook:     'onLeave'
  bodyDuration: -> $('#welcome').height()*0.75

  constructor: ->
    new TimelineMax()
      .fromTo($('html,body'), 0.5, {css: opacity: 0}, {css: opacity: 1})
      .fromTo($('.face'), 1, {css: opacity: 0}, {css: opacity: 1})
      .fromTo($('.name'), 1, {css: opacity: 0}, {css: opacity: 1}, '-=0.8')
   
    TweenLite.set('.background *', {css:{transformPerspective:400, transformStyle:"preserve-3d"}})
    TweenLite.set('.background', {css:{transformPerspective:400, transformStyle:"preserve-3d"}})
    TweenMax.to(@$('.scrolldown'), 2, {y:10, repeat:-1, yoyo:true, ease:Elastic.easeIn.config(1, 0.3)})

    # Set up the handling of the window resizing
    do @fixHeight
    do @updateHeight
    $( window ).resize => do @handleResize
    @$('a').click (e) => @scrollTo e.currentTarget.hash #Add listener to scroll to about me

  getTween: -> 
    new TimelineMax()
      .fromTo('.background', 1, {css:{rotationY:0, rotationX:0, scale: 1}}, {css:{rotationX:90, scale: 1}})
      .to('.layer-1', 0.5, {css:{z:-100}}, '-=1')
      .to('.layer-2', 0.5, {css:{z:0}}, '-=1')
      .to('.layer-3', 0.5, {css:{z:100}}, '-=1')
      .fromTo('.name', 1, {opacity:1}, {opacity:0}, '-=1')
      .fromTo('.face', 0.6, {opacity:1}, {opacity:0}, '-=0.6')
      .to('#welcome', 0.5, {opacity: 0}, '-=0.5')
      .fromTo('#sidebar', 0.5, {opacity: 0, x:100}, {opacity: 1, x:0}, '-=0.3')
      .set('#welcome', {visibility: 'hidden'})

  ###
  Store the current height in the @height attribute.
  ###
  updateHeight: -> @height = $(window).height()

  ###
  Resize handler, if the height difference is greater than 60 pixels, handle
  the recalculation of the height. 60 pixels have been chosen as it is
  greater than the address bar pixel height.
  ###
  handleResize: ->
    if 60 < Math.abs @height - $(window).height()
      do @updateHeight
      do @fixHeight
  ###
  Some mobile devices (at least on my Android), the address bar comes in and
  out of display causing the welcome page to resize (as it is 200vh). This
  causes a noticeable jitter of 2 times the address bar height. By fixing the
  height values and only updating after a *large* resize event we can remove
  the jitter.
  ###
  fixHeight: ->
    $(e).height($(e).height('').height()) for e in ['#welcome', '.background']

  ###
  Scroll to the specified target element
  ###
  scrollTo: (target) ->
    $('html, body').animate scrollTop: $(target).offset().top, 1500