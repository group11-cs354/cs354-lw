var app = angular.module("swift", []);

app.controller("swiftCtrl", function($scope) {
   $scope.goToHistory = function() {
       location.href = "changehistory.html";
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
