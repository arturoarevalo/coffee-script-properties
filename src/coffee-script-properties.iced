"use strict"

Function::property = (prop, desc) ->
  Object.defineProperty @prototype, prop, desc

Function::getter = (prop, get) ->
  Object.defineProperty @prototype, prop, {get, configurable: yes}

Function::setter = (prop, set) ->
  Object.defineProperty @prototype, prop, {set, configurable: yes}

module.exports = "Property support for CoffeeScript"
