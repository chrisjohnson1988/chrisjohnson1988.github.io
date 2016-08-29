require.config({
  stubModules: ['cs'],
  paths: {
    'cs' :           '../bower_components/require-cs/cs',
    'coffee-script': '../bower_components/coffeescript/extras/coffee-script'
  },
  waitSeconds:1000
});

require(['cs!Main'], function(){ });