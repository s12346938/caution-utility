angular.module('beamng.apps')
.directive('yellowFlag', [function () {
  return {
    templateUrl: '/ui/modules/apps/YellowFlag/app.html',
    replace: true,
    restrict: 'EA',
    link: function (scope, element, attrs) {
      scope.isFlagActive = false;

      // Listen for the custom event from Lua
      scope.$on('toggleYellowFlag', function (event, data) {
        scope.isFlagActive = data;
      });
    }
  };
}]);