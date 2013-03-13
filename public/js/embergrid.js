var Animal, App, Snake, blah, wah,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

App = Em.Application.create();

Animal = (function() {

  function Animal() {}

  return Animal;

})();

Snake = (function(_super) {

  __extends(Snake, _super);

  function Snake() {
    return Snake.__super__.constructor.apply(this, arguments);
  }

  return Snake;

})(Animal);

wah = (function(_super) {

  __extends(wah, _super);

  function wah() {
    return wah.__super__.constructor.apply(this, arguments);
  }

  return wah;

})(Snake);

blah = function() {
  return alert("wee");
};


App.HomeController = Em.ObjectController.extend();


App.Home = Em.Object.extend();


App.HomeView = Em.View.extend();
