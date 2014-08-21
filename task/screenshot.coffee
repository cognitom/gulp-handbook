gulp        = require 'gulp'
imageResize = require 'gulp-image-resize'

SRC  = 'src/screenshot'
DIST = 'dist/image'

gulp.task 'screenshot', ->
  gulp.src "#{SRC}/*.png"
  .pipe imageResize
    width: 728
    upscale : false
  .pipe gulp.dest "#{DIST}/"
