createInject = () ->
  ex = require './inject'
  ex.Binder = require './binder'
  ex.Injector = require './injector'
  return ex

if window?
  if !window.inject?
    window.inject = createInject()
  inject = window.inject
else
  inject = createInject()

module.exports = inject
