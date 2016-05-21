gulp       = require 'gulp'
coffee     = require 'gulp-coffee'
sass       = require 'gulp-sass'
sourcemaps = require 'gulp-sourcemaps'

gulp.task 'coffee', ->
    gulp.src './coffee/**/*.coffee'
        .pipe coffee bare:false
        .pipe gulp.dest './js/'

gulp.task 'sass', ->
    gulp.src './sass/**/*.scss'
        .pipe sourcemaps.init()
        .pipe sass outputStyle:'compressed'
            .on 'error', sass.logError
        .pipe sourcemaps.write()
        .pipe gulp.dest './'
