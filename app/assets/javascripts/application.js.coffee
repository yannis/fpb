#= require jquery
#= require jquery_ujs
#= require foundation
#= require typekit
#= require_self

$(document).foundation
  orbit:
    animation: "fade"#'slide'
    timer_speed: 5000
    pause_on_hover: true
    animation_speed: 1000
    navigation_arrows: true
    bullets: false
    next_on_click: true
    slide_number: false
    navigation_arrows: false
    resume_on_mouseout: true
  topbar:
    sticky_class : 'sticky'
    custom_back_text: false # Set this to false and it will pull the top level link name as the back text
    # back_text: 'Back' #Define what you want your custom back text to be if custom_back_text: true
    is_hover: true
    mobile_show_parent_link: false # will copy parent links into dropdowns for mobile navigation
    scrolltop : true # jump to top when sticky nav menu toggle is clicked
