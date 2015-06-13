# React Globals
React         = require('react')
DOM           = require('tbg_react_dom')

# Helpers
TransferToState = require('tbg_props_to_state')

# Mixins

# Components
Table           = React.createFactory(require('./table/index.coffee'))
Menu            = React.createFactory(require('./menu/index.coffee'))

# Flux


# Component
#
# @mixin
#
# @author Sam
#
App =

  # --------------------------------------------
  # Defaults
  # --------------------------------------------

  displayName   : 'App'
  propTypes     : {
                  }
  mixins        : []


  # --------------------------------------------
  # Getters & Checkers - get/has/can/is
  # --------------------------------------------

  getInitialState: ->
    currentId   : 0

  getDefaultProps: ->


  # --------------------------------------------
  # Lifecycle Methods
  # --------------------------------------------

  componentWillMount: ->          # add event listeners (Flux Store, WebSocket, document)@
  componentWillReceiveProps: ->   # change state based on props change
  componentDidMount: ->           # data request (XHR)
  componentWillUnmount: ->        # remove event listeners


  # --------------------------------------------
  # Event handlers
  # --------------------------------------------

  _handleClick: (id) ->
    @setState currentId: id

  # --------------------------------------------
  # Render methods
  # --------------------------------------------


  render: ->
    DOM.div({
        className: 'app'
      },
        DOM.h1({
          className   : 'title'
          }, 'ReactJS League Table')

        Menu({
          items       : @props.leagues
          handleClick : @_handleClick
          })

        Table(@props.leagues[ @state.currentId ])
    )


module.exports = React.createClass(App)
