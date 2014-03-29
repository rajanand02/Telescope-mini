Template.postSubmit.events "submit form": (e) ->
  e.preventDefault()
  post =
    url: $(e.target).find("[name=url]").val()
    title: $(e.target).find("[name=title]").val()
    message: $(e.target).find("[name=message]").val()

  post._id = Posts.insert(post)
  Router.go "postPage", post
