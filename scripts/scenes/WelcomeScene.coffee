define [
  'cs!scenes/AbstractScene'
], (AbstractScene) -> class WelcomeScene extends AbstractScene

  id:           '#welcome'
  bodyHook:     'onLeave'
  bodyDuration: '150%'

  constructor: ->
    new TimelineMax()
      .fromTo($('html,body'), 0.5, {css: opacity: 0}, {css: opacity: 1})
      .fromTo($('.face'), 1, {css: opacity: 0}, {css: opacity: 1})
      .fromTo($('.name'), 1, {css: opacity: 0}, {css: opacity: 1}, '-=0.8')
   
    TweenLite.set('.background *', {css:{transformPerspective:400, transformStyle:"preserve-3d"}})
    TweenLite.set('.background', {css:{transformPerspective:400, transformStyle:"preserve-3d"}})
    TweenMax.to(@$('.scrolldown'), 2, {y:10, repeat:-1, yoyo:true, ease:Elastic.easeIn.config(1, 0.3)})

  getTween: -> 
    new TimelineMax()
      .fromTo('.background', 1, {css:{rotationY:0, rotationX:0, scale: 1}}, {css:{rotationX:90, scale: 1}})
      .to('.layer-1', 0.5, {css:{z:-100}}, '-=1')
      .to('.layer-2', 0.5, {css:{z:0}}, '-=1')
      .to('.layer-3', 0.5, {css:{z:100}}, '-=1')
      .fromTo('.face, .name', 1, {opacity:1}, {opacity:0}, '-=1')
      .to('#welcome', 0.5, {opacity: 0}, '-=0.5')
      .fromTo('#sidebar', 0.5, {opacity: 0, x:100}, {opacity: 1, x:0}, '-=0.3')
      .set('#welcome', {visibility: 'hidden'})