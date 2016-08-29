define [
  'cs!scenes/WelcomeScene'
  'cs!scenes/AboutMeScene'
  'cs!scenes/PuppetScene'
  'cs!scenes/CIScene'
  'cs!scenes/ApplicationScene'
], (WelcomeScene, AboutMeScene, PuppetScene, CIScene, ApplicationScene) ->

  controller = new ScrollMagic.Controller()
  new WelcomeScene().addTo controller
  new AboutMeScene().addTo controller
  new PuppetScene().addTo controller
  new CIScene().addTo controller
  new ApplicationScene().addTo controller
