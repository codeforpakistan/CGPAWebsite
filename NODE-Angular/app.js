
// app declaration
var app = angular.module('angularjsNodejs', []);
app.controller('myController', function ($scope, $http) {
    //$scope.data = [
    //    "mpa1 ",
    //    "mpa2 ",
    //]

    // when landing on the page, get all users and show them
    $http.get('/api/users')
        .success(function (data) {
            $scope.ddata = data;
            console.log(data);
        })
        .error(function (data) {
            console.log('Error: ' + data);
        });


    //get a specific user
    $http.get('/api/users/:id')
      .success(function (data) {
          $scope.ddata = data;
          console.log(data);
      })
      .error(function (data) {
          console.log('Error: ' + data);
      });
    
});