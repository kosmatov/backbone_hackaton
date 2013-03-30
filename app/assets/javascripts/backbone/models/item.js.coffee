class BackboneHackaton.Models.PollItem extends Backbone.Model
  paramRoot: 'poll_item'

  defaults:
    name: null
    votes_count: null

class BackboneHackaton.Collections.ItemsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.PollItem
  url: '/poll/items'
