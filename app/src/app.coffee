kd = require 'kd.js'

do ->

  view = new kd.View
    cssClass : 'hello-view center-all'
    partial  : 'Hello kdjs-project kd.js project!'

  # add it to DOM
  view.appendToDomBody()
