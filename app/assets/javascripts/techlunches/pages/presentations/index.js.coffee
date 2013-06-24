Joosy.namespace 'Presentations', ->

  class @IndexPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'index'

    @fetch (complete) ->
      Presentation.find 'all', (presentations) =>
        @data.presentations = presentations
        complete()
