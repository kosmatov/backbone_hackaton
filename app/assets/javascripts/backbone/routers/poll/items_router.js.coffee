class BackboneHackaton.Routers.ItemsRouter extends Backbone.Router
  initialize: (options) ->
    @items = new BackboneHackaton.Collections.ItemsCollection()
    @items.reset options.items

  routes:
    "new"      : "newPollItem"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newPollItem: ->
    @view = new BackboneHackaton.Views.Items.NewView(collection: @items)
    $("#items").html(@view.render().el)

  index: ->
    @view = new BackboneHackaton.Views.Items.IndexView(items: @items)
    $("#items").html(@view.render().el)

  show: (id) ->
    item = @items.get(id)

    @view = new BackboneHackaton.Views.Items.ShowView(model: item)
    $("#items").html(@view.render().el)

  edit: (id) ->
    item = @items.get(id)

    @view = new BackboneHackaton.Views.Items.EditView(model: item)
    $("#items").html(@view.render().el)
