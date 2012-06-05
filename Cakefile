{spawn, exec} = require 'child_process'
watch = require 'nodewatch'

sys = require 'util' #util might be outdated on your system

runCommand = (name, args...) ->
  proc = spawn name, args
  proc.stderr.on 'data', (buffer) -> console.log buffer.toString()
  proc.stdout.on 'data', (buffer) -> console.log buffer.toString()
  proc.on 'exit', (status) -> process.exit(1) if status isnt 0

task 'project:watch', 'Watch source files and build JS', (options) ->
  watch.add("./application", true).onChange (file,prev,curr,action) ->
    console.log "Compiling #{file}"
    console.log "#{__dirname}"
    console.log file.split("#{__dirname}/application")[1]
    invoke 'build:client'

task 'test', 'Run all tests', ->
   runCommand './node_modules/mocha/bin/mocha', '-c'

task 'build:client', 'Compile coffee files to javascript', (options) ->
  runCommand 'coffee', '-o', 'public/javascripts', '-cw', 'application/'

task 'docs', 'Generate all Docs', ->
  runCommand './node_modules/paige/bin/paige',  './paige.config'
