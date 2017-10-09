Array::in_group_of = (size) ->
  [arrays, start] = [[], 0]

  while (start+size) <= @length
    arrays.push @[start...(start+size)]
    start += size

  arrays

class Image
  constructor: (@small, @big) ->

context = require.context './images/small'
small_images = context.keys().map (key) -> context key

context = require.context './images/big'
big_images = context.keys().map (key) -> context key

images = small_images.map (small_image, index) ->
  new Image small_image, big_images[index]

image_groups = images.in_group_of 3

module.exports =
  data: ->
    image_groups: image_groups
