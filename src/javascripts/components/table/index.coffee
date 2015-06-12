# React Globals
React         = require('react')
DOM           = require('tbg_react_dom')

# Helpers

# Mixins

# Components

# Flux


# Table Component
#
# @mixin
#
# @author Sam
#
Table =

  # --------------------------------------------
  # Defaults
  # --------------------------------------------

  displayName   : 'Table'
  propTypes     : {}
  mixins        : []


  # --------------------------------------------
  # Getters & Checkers - get/has/can/is
  # --------------------------------------------

  getInitialState: ->
    null

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


  # --------------------------------------------
  # Render methods
  # --------------------------------------------

  # for available row data see ../../data/league_table.json.coffee
  _renderRow: (row, i) ->
    DOM.div({
        key: "row_#{i}"
      },
        DOM.span(null, row.team)
        DOM.span(null, row.p)
        DOM.span(null, row.w)
        DOM.span(null, row.l)
        DOM.span(null, row.d)
        DOM.span(null, row.pts)
    )

  _renderTable: ->
    rows = []
    for i, row of @props.table
      rows.push @_renderRow(row, i)
    return rows


  render: ->
    DOM.div(null,
      @_renderTable()
    )


module.exports = React.createClass(Table)
