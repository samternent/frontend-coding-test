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

  # for available row data see ../../data/league_table.coffee

  _renderRow: (row, i = 999) ->
    DOM.div({
        className   : "league-table__row"
        key         : "row_#{i}"
      },
        DOM.span({ className: 'perc one pos' }, row.pos)
        DOM.span({ className: 'perc four team' }, row.team)
    )

  _renderHeader: ->
    DOM.div({ className: 'league-table__header' },
      @_renderRow({
          pos   : 'Pos'
          team  : 'Team'
      })
    )

  _renderTable: ->
    @props.data.map( (row, i) =>
        @_renderRow(row, i)
      )


  render: ->
    DOM.div({ className: 'league-table' },
      @_renderHeader()
      @_renderTable()
    )


module.exports = React.createClass(Table)
