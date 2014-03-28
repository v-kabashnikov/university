var app = angular.module('domainApp', ['ngResource']);
app.controller("usernameCtrl",
	["$scope","$log",
		function ($scope, $log){
			$scope.username = "Jackie";
			$log.info("Initialize username in usernameCtrl");
		}
	]
);