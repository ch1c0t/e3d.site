Array::in_group_of = (size) ->
  [arrays, start] = [[], 0]

  while (start+size) <= @length
    arrays.push @[start...(start+size)]
    start += size

  arrays

context = require.context './images/small'
images = context.keys().map (key) -> context key
image_groups = images.in_group_of 3

module.exports =
  data: ->
    image_groups: image_groups
