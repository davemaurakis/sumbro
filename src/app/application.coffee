io = require 'socket.io-client'
socket = io.connect 'http://localhost:8000'

socket.on 'connect', ->
  console.log 'connected!'

socket.on 'new player', (data) ->
  console.log 'new player!', data.id

socket.on 'remove player', (data) ->
  console.log 'byebye sucka', data.id

window.socket = socket

module.exports = {}
