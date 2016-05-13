(function(angular) {
  'use strict';

  angular.module('rifeApp', ['ngRoute'])
    .controller('mainCtrl', function() {
    })
    .component('gameContainer', {
      templateUrl: 'app/templates/gameContainer.html',
      bindings: {
        script: '<'
      },
      controller: function () {
        this.line = this.script.start[0];
      }
    })
    .config(['$routeProvider', function($routeProvider) {
      $routeProvider.when('/', {
        template: '<game-container script="$resolve.script"></game-container>',
        resolve: {
          script: function($http) { return $http.get('/script').then(function(response) { return response.data }); }
        }
      });
    }]);
})(window.angular);
