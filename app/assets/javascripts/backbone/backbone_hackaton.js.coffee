#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.BackboneHackaton =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

$ ->
  router = new BackboneHackaton.Routers.PollsRouter()
  router.index()

  Backbone.history.start()
