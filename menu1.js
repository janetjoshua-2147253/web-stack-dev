var myapp=angular.module("myapp",[]);
myapp.filter("myfilter",function()
{
    return function(input)
    {
     
        return input.substring(0,1).toUpperCase()+input.substring(1).toLowerCase();
    }
})
myapp.filter("myfilter2",function()
{
    return function(input)
    {		
	
return input+" Avail 5% Discount"; 

	}

})


myapp.controller("menuctrl",function($scope,$http)
{
    $http.get("https://janetjoshua-2147253.github.io/lab-8/menu.json")
    .success(function(response)
    {
        $scope.names=response.records;
		$scope.rowlimit=12;
    });
    
    

});
