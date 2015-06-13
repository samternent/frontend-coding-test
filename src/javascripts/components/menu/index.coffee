# React Globals
React         = require('react')
DOM           = require('tbg_react_dom')

# Helpers

# Mixins

# Components

# Flux


# Menu Component
#
# @mixin
#
# @author Sam
#
Menu =

  # --------------------------------------------
  # Defaults
  # --------------------------------------------

  displayName   : 'Menu'
  propTypes     : {

                  }
  mixins        : []


  # --------------------------------------------
  # Getters & Checkers - get/has/can/is
  # --------------------------------------------

  getInitialState: ->
    activeId  : 0

  getDefaultProps: ->



  # --------------------------------------------
  # Lifecycle Methods
  # --------------------------------------------

  componentWillMount: ->          # add event listeners (Flux Store, WebSocket, document)
  componentWillReceiveProps: ->   # change state based on props change
  componentDidMount: ->           # data request (XHR)
  componentWillUnmount: ->        # remove event listeners


  # --------------------------------------------
  # Event handlers
  # --------------------------------------------
  _handleClick: (id) ->
    @setState activeId  : id
    @props.handleClick(id)

  # --------------------------------------------
  # Render methods
  # --------------------------------------------
  _renderMenu: ->
    @props.items.map( (item, id) =>
        DOM.li({
            key       : "menu__item_#{id}"
            className : "menu__item #{ 'isActive' if @state.activeId is id }"
            onClick   : @_handleClick.bind(@, id)

          }, item.name)
      )

  render: ->
    DOM.ul({
        className     : 'menu'
      }, @_renderMenu())


module.exports = React.createClass(Menu)
