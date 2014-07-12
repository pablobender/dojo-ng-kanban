'use strict'

describe 'Controller: MainCtrl', ->

  # load the controller's module
  beforeEach module 'ngsampleApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should add task on list', ->
    scope.addTask "Task test"
    expect(scope.getTasks().length).toBe 1

  it 'deve adicionar a tarefa correta', ->
    scope.addTask "Task test"
    expect(scope.getTasks()[0]).toBe "Task test"

  it 'nao deve permitir add uma tarefa vazia', ->
    scope.addTask ""
    expect(scope.getTasks().length).toBe 0

  it 'deve limpar taskname apos adicionar tarefa', ->
    scope.taskname = "aaa"
    scope.addTask "Task"
    expect(scope.taskname).toBe ""

  it 'deve inicar com 3 colunas', ->
    expect(scope.columns.length).toBe 3

  it 'deve adicionar as tasks na primeira coluna', ->
    scope.addTask "Task"
    expect(scope.columns[0][0]).toBe 'Task'