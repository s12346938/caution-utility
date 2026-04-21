angular.module('beamng.apps')
.directive('yellowFlag', [function () {
  return {
    templateUrl: '/ui/modules/apps/YellowFlag/app.html',
    replace: true,
    restrict: 'EA',
    scope: true,
    link: function (scope, element, attrs) {
      scope.isFlagActive = false;
      
      // Listen for the signal from Lua
      scope.$on('toggleYellowFlag', function (event, data) {
        scope.isFlagActive = data;
        scope.$apply(); // Force the UI to refresh
      });
    }
  };
}]);