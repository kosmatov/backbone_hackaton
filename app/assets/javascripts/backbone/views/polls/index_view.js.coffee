BackboneHackaton.Views.Polls ||= {}

class BackboneHackaton.Views.Polls.IndexView extends Backbone.View
  template: JST["backbone/templates/polls/index"]

  initialize: () ->
    @options.polls.bind('reset', @addAll)

  addAll: () =>
    @options.polls.each(@addOne)

  addOne: (poll) =>
    view = new BackboneHackaton.Views.Polls.PollView({model : poll})
    @$("#polls").append(view.render().el)

  render: =>
    @$el.html(@template(polls: @options.polls.toJSON() ))
    @addAll()

    return this
