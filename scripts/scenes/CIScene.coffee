define [
  'cs!scenes/AbstractScene'
], (AbstractScene) -> class CIScene extends AbstractScene

  id:           '#ci'
  sidebarEl:    '#sidebar-ci'
  bodyDuration: '150%'

  getTween: -> super.from '.iphone, .htc, .ipad', 5, {y: 50}