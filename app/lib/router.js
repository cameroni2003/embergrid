require('ember-skeleton/core');

App.Router.map(function(){
    this.resource("home");
    this.resource('profile');
    this.resource('favorites');
});

App.IndexRoute = Ember.Route.extend({
   redirect: function() {
       //   redirect code goes here

       //   redirect on auth
   }
});
