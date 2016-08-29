define [], -> class AbstractScene

  bodyHook:     'onEnter'
  bodyDuration: 0
  bodyDuration: 0
  sideBarHook: 'onCenter'
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
      .staggerFromTo(@$('li,p:not(:has(img))'), 2, {scale: 0, opacity: 0}, {scale:1, opacity:1, ease:Elastic.easeOut, force3D:true}, 0.2, '=-1')
