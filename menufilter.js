angular.module("Menu",[])
.filter("myfilter",function()
{
    return function(input,option)
    {
        if(isNaN(option)||(option==""))
        {
            return input;
        }
        else {
        return input.substring(0,option).toUpperCase();
    }}
})
.controller("menuctrl",function($scope)
{
    $http.get('https://janetjoshua-2147253.github.io/lab-8/menu.json')
    .success(function(response)
    {
        $scope.names=response.records;
		
    });
    
    

});
