define [
  'cs!scenes/AbstractScene'
], (AbstractScene) -> class CIScene extends AbstractScene

  id:           '#ci'
  sidebarEl:    '#sidebar-ci'
  bodyDuration: '150%'

  getTween: -> 
    super
      .fromTo('.iphone', 5, {y: '300'}, {y: 0})
      .fromTo('.htc',    5, {y: '200'}, {y:-10}, '-=5')
      .fromTo('.ipad',   5, {y: '250'}, {y:-5},  '-=5')