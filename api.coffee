
# ### Module dependencies

express   = require 'express'


# Initiate the api´s

api = module.exports = express()
api.quest     = require 'quest'
api.location  = require 'location'


# # Api's available

api.use '/quest', api.quest
api.use '/quests', api.quest

api.use '/location', api.location
api.use '/locations', api.location



if !module.parent

  http = require 'http'

  # Start listening for incoming requests.

  http.createServer(api).listen 3010, ->
    console.log "api-quest started"

