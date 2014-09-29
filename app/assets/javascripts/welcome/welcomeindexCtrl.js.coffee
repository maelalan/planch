@IndexCtrl =[ "$scope", ($scope) ->
  $scope.title = "Bienvenu"
]

app = angular.module("Move", ["ngResource"])

app.factory "Charge", ["$resource", ($resource) ->
  $resource("/charges/:id.:format", {id: "@id"}, {update: {method: "PUT"}})
]


@IdentidCtrl = ["$scope", "Charge", ($scope, Charge) ->
  $scope.charges = Charge.query()

$scope.upCharge = ->
	#charge = Charge.save($scope.charge)

$scope.charge.category.id = charge.category.id

#	if charge.category.id == 4
#			charge.category.id = 1
#		else charge.category.id ++
	charge.$update()

]