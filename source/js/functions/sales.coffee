"use strict"

{Customer} = require "../models/characters"

performSales = (animal) ->
    animal.sell(new Customer "Frank")
    animal.sell(new Customer "Bob")
    animal.sell(new Customer "Chris")
    animal.sell(new Customer "Laura")
    animal.sell(new Customer "Luke")
    animal.sell(new Customer "Peter")
    animal.sell(new Customer "David")

module.exports.performSales = performSales
