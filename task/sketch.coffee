gulp   = require 'gulp'
sketch = require 'gulp-sketch'

SRC  = 'src/sketch'
DIST = 'dist/image'

gulp.task 'sketch', ->
  gulp.src "#{SRC}/*.sketch"
  .pipe sketch
    export: 'artboards'
    formats: 'png'
  .pipe gulp.dest "#{DIST}/"
