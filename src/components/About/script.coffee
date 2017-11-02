images = [
  require './icons/1.png'
  require './icons/2.png'
  require './icons/3.png'
  require './icons/4.png'
]

class Icon
  constructor: (@image) ->

icons = images.map (image) ->
  new Icon image

icons[0].link = "https://www.behance.net/eugenechernov3d"
icons[1].link = "https://www.facebook.com/eugenechernov3d"
icons[2].link = "https://twitter.com/eugenechernov3d"
icons[3].link = "https://www.linkedin.com/in/eugene-chernov-9b29b7149"

module.exports =
  data: ->
    icons: icons
    face: require './face.png'
