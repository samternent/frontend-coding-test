React = require('react')

Components  = require('./components/manifest.coffee')
Data        = require('./data/league_table.json.coffee')

# Render React UI
#
# @mixin
#
# @author Sam
#
RenderUI = ->

  components = document.querySelectorAll('[data-component-ui]')

  [].forEach.call(components, (el) ->
    name = el.getAttribute('data-component-ui')
    data = el.getAttribute('data-component-data')

    component = React.createFactory(Components[name])
    props     = {
                  "data" : Data[ data ]
                }

    React.render(component(props), el)
  )


module.exports = new RenderUI()
