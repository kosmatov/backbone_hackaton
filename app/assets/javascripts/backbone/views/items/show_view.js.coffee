BackboneHackaton.Views.Items ||= {}

class BackboneHackaton.Views.Items.ShowView extends Backbone.View
  template: JST["backbone/templates/items/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
