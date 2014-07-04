# This is basically how we tell
# Angular about the existence of our application.

@restauranteur = angular.module('restauranteur', [])

@restauranteur.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/restaurants', {
      templateUrl: '../templates/restaurants/index.html',
      controller: 'RestaurantIndexCtrl'
    }).
    when('/restaurants/:id', {
      templateUrl: '../templates/restaurants/show.html',
      controller: 'RestaurantShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])