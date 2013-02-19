require('ember-skeleton/core');

App.BaseView = Ember.View.extend({
    didInsertElement: function(){

    },
    willDestroyElement: function(){

    }
});

App.ApplicationView = Ember.View.extend({
  templateName: 'ember-skeleton/~templates/application'
});

App.HomeView = Ember.View.extend({
    templateName: 'ember-skeleton/~templates/home'
});

App.ProfileView = Ember.View.extend({
    templateName: 'ember-skeleton/~templates/profile'
});

App.FavoritesView = Ember.View.extend({
    templateName: 'ember-skeleton/~templates/favorites'
});