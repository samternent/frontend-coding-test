# React Globals
React         = require('react')
DOM           = require('tbg_react_dom')

# Helpers
TransferToState   = require('tbg_props_to_state')

# Mixins

# Components
Table             = React.createFactory(require('./table/index.coffee'))

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
    TransferToState(@props,{
        table   : 'data'
      })

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


  # --------------------------------------------
  # Render methods
  # --------------------------------------------

  render: ->
    DOM.div({
        className: 'app'
        },
        DOM.h1(null, 'ReactJS League Table')
        Table({
            table : @state.table
          })
        DOM.h2(null, 'Frontend Coding Test')
    )


module.exports = React.createClass(App)
