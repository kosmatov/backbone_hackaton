class BackboneHackaton.Models.Poll extends Backbone.Model
  paramRoot: 'poll'

  realtions: [{
    type: Backbone.HasMany,
    key: 'items',
    relatedModel: 'PollItem',
    collectionType: 'ItemsCollection',
    reverseRelation: {
      key: 'poll',
      includeInJSON: 'id'
    }
  }]


  defaults:
    name: null

class BackboneHackaton.Collections.PollsCollection extends Backbone.Collection
  model: BackboneHackaton.Models.Poll
  url: '/polls'
