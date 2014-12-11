App.PostsShowController = Em.ObjectController.extend
  actions:
    submit: ->
      comment = @store.createRecord('comment', {
        post: @get('model')
        body: @get('comment')
      })

      comment.save().then =>
        @get('model.comments').pushObject(comment)
        @set('comment', '')
      , =>
        alert 'Comment failed to save!'

