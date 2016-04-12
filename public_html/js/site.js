var app = angular.module("swift", []);

app.controller("swiftCtrl", function($scope) {
   $scope.viewMake = false;
   $scope.goToHistory = function() {
       location.href = "changehistory.html";
   }
   
   $scope.toggleMake = function() {
       $scope.viewMake = !$scope.viewMake;
       angular.element("#makefile").slideToggle();
   }
});

app.directive("navbar", function() {
	return {
		restrict: 'E',
		scope: {
			page: '='
		},
		templateUrl: "templates/navbar.html",
		link: function(scope, element, attrs) {
			angular.element("#" + attrs.page).addClass("active");
		}
	}

});

app.directive("siteFooter", function() {
   return {
       restrict: 'E',
       templateUrl: "templates/footer.html"
   } 
});

app.directive("comparisonTable", function() {
   return {
       restrict: 'E',
       templateUrl: "templates/comparisonTable.html"
   } 
});
