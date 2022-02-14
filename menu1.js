var myapp=angular.module("myapp",[]);

myapp.controller("menuctrl",function($scope,$http)
{
    $http.get("https://janetjoshua-2147253.github.io/lab-8/menu.json")
    .success(function(response)
    {
        $scope.names=response.records;
		
    });
    
    

});
