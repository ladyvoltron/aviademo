var aviademoApp = angular.module('aviademoApp', ['ui.router']);

aviademoApp.config(function($stateProvider, $urlRouterProvider) {    
    $urlRouterProvider.otherwise('/plane_list');
//    $urlRouterProvider.otherwise('/demo2-1');
    
    $stateProvider  
        .state('plane_list', {
            url: '/plane_list',
            templateUrl: 'plane_list.html'
        })
        .state('plane_info', {
            url: '/plane_info/:id',
            templateUrl: 'plane_info.html'       
        })
            .state('plane_edit', {
            url: '/dplane_edit/:id',
            templateUrl: 'plane_edit.html'
        });
        
});
 
 /*
  * Demo 2 stuff
  */
aviademoApp.controller('allPlanes', ['$scope', '$http', function($scope, $http) {
    console.log('--> hi, I am allPlanes!');     
    var url = "http://lc.aviadb.studiotinto.org";

    $http.get(url)  
    .then(function(response) {
        $scope.planesData = response.data;
        console.log('--> success!');
//        console.log($scope.planesData);
    },
    function(response) {
        console.log('--> error!');
    });    

}]);
 
aviademoApp.controller('yourPlane', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams) {
    console.log('--> hi, I am yourPlane!');     
    var id = $stateParams.id;
    console.log('--> hi, id is ' + id);     
    
    var url = "http://lc.aviadb.studiotinto.org?qtype=plane&id=" + id;

    $http.get(url)  
    .then(function(response) {
        $scope.planeData = response.data;
//        $scope.olga = 'ladyvoltron';
        console.log('--> success!');        
//        console.log($scope.planeData);
    $scope.showName = 0;
    $scope.showMemo = 0;
    if ( $scope.planeData[0].airc_name != '' ) $scope.showName = 1;
    if ( $scope.planeData[0].airc_memo != '' ) $scope.showMemo = 1;        
    },
    function(response) {
        console.log('--> error!');
    });    

}]);
 /*
 
/*  
 * Demo 1 stuff
 */ 
aviademoApp.controller('timeError', ['$scope', function($scope) {
    console.log('--> Here we go - 1');
    console.log(timeForm.startTime.$valid);
    console.log('--> Here we go -2');
    console.log(timeForm.endTime.$valid);    
}]);

aviademoApp.controller('controlTime', ['$scope', function($scope) {
    console.log('--> Here we go again');
    console.log(timeForm.startTime.$valid);
    
}]);

aviademoApp.controller('timeNow', ['$scope', function($scope) {
    console.log('--> Here we go again in time');
    $scope.format = 'M/d/yy h:mm:ss a';
}]);

aviademoApp.directive("myCurrentTime", function(dateFilter){
    return function(scope, element, attrs){
        var format;
        
        scope.$watch(attrs.myCurrentTime, function(value) {
            format = value;
            updateTime();
        });
        
        function updateTime(){
            var dt = dateFilter(new Date(), format);
            element.text(dt);
        }
        
        function updateLater() {
            setTimeout(function() {
              updateTime(); // update DOM
              updateLater(); // schedule another update
            }, 1000);
        }
        
        updateLater();
    }
});    

