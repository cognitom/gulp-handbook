gulp        = require 'gulp'
runSequence = require 'run-sequence'
requireDir  = require 'require-dir'
dir         = requireDir './task'

gulp.task 'build', -> runSequence ['sketch', 'screenshot']

gulp.task 'watch', ->
  o = debounceDelay: 10000
  gulp.watch ['src/sketch/*.sketch/Data'], o, ['sketch']
