App.PostsShowRoute = Em.Route.extend
  model: (params) ->
    @store.find('post', params.id)
