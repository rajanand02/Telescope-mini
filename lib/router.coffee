Router.configure
  layoutTemplate: 'layout',
  loadingTemplate: 'loading',
  waitOn: ->
    Meteor.subscribe 'posts'
    
Router.map ->
  @route 'postsList', path: '/'

  @route 'postPage',
    path: 'posts/:_id',
    data: ->
      Posts.findOne @params._id
  
  @route 'postSubmit',
    path: '/submit'

requireLogin = ->
  unless Meteor.user()
    @pause
    @render 'accessDenied'

Router.onBeforeAction requireLogin,
  only: "postSubmit"
