var Workspace = Backbone.Router.extend({
  routes: {
    '*filter': 'setFilter'
  },

  setFilter: function( param ) {
    if (param) {
    param = param.trim();;
    }
    app.TodoFilter = param || '';
    app.Todos.trigger('filter');
  }

});

app.TodoROuter = new Workspace  ();
Backbone.history.start();