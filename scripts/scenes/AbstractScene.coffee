define [], -> class AbstractScene

  bodyHook:       'onEnter'
  bodyDuration:    0
  sideBarHook:    'onCenter'
  sideBarDuration: 0

  $: (selector) -> $(selector, @id)

  addTo: (c) -> 
    if @sidebarEl
      @getSidebarScene().setTween(@getSidebarTween()).addTo(c)
    @getBodyScene().setTween(@getTween()).addTo(c)

  getBodyScene: -> new ScrollMagic.Scene
    triggerElement: @id
    duration:       @bodyDuration
    triggerHook:    @bodyHook

  
  getSidebarScene: -> new ScrollMagic.Scene
    triggerElement: @id
    duration:       @sideBarDuration
    triggerHook:    @sideBarHook


  getSidebarTween: -> new TimelineMax().to @sidebarEl, 0.5, opacity: 1, display: 'block'
  
  getTween: ->
    new TimelineMax()
      .staggerFromTo(@$('li,p:not(:has(img))'), 2, {opacity: 0}, {opacity:1}, 0.2, '=-1')

  ###
  Returns the current height of the scene
  ###
  getHeight: -> $(@id).height()