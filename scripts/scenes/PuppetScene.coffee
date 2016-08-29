define [
  'cs!scenes/AbstractScene'
], (AbstractScene) -> class extends AbstractScene  

  id:           '#puppet'
  sidebarEl:    '#sidebar-puppet'

  constructor: ->
    TweenMax.to(@$('.vagrant'), 40, {rotationY:360, transformOrigin:"center top", ease:Linear.easeNone, repeat: -1})
    TweenMax.to(@$('.terraform'), 25, {rotationY:360, transformOrigin:"center top", ease:Linear.easeNone, repeat: -1})
    TweenMax.to(@$('.puppet'), 20, {rotationY:360, transformOrigin:"center top", ease:Linear.easeNone, repeat: -1})

    TweenMax.to(@$('.cards'), 10, {rotationY:360, transformOrigin:"center top", ease:Linear.easeNone, repeat: -1})

    TweenLite.set([@$('.card'), @$('.cards')], {css:{transformPerspective:1000, transformStyle:"preserve-3d"}});

    TweenMax.set(@$('.vagrant'), {css:{z:-50}})
    TweenMax.set(@$('.terraform'), {css:{z:0}})
    TweenMax.set(@$('.puppet'), {css:{z:50}})
    TweenMax.set(@$('.packer'), {css:{z:40}})
