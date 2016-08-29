define [
  'cs!scenes/AbstractScene'
], (AbstractScene) -> class AboutMeScene extends AbstractScene
  id:          '#aboutme'
  sidebarEl:   '#sidebar-aboutme'
  bodyHook:    'onEnter'
  sideBarHook: 'onEnter'
