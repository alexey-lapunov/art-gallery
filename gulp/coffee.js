'use strict';
var path = require('path');
var coffee = require('gulp-coffee');
var gutil = require('gulp-util');
module.exports = function(gulp, plugins, args, config, taskTarget, browserSync) {
  var dirs = config.directories;
  var dest = path.join(taskTarget, dirs.scripts.replace(/^_/, ''));
  gulp.task('coffee', function() {
    gulp.src(path.join(dirs.source, dirs.modules, '**/*.coffee'))
      .pipe(coffee({bare: true}).on('error', gutil.log))
      .pipe(gulp.dest(path.join(dirs.source, dirs.modules)));


    gulp.src(path.join(dirs.source, dirs.scripts, '**/*.coffee'))
      .pipe(coffee({bare: true}).on('error', gutil.log))
      .pipe(gulp.dest(path.join(dirs.source, dirs.scripts)));


    gulp.src(path.join(dirs.source, dirs.scripts, '**/*.js'))
      .pipe(gulp.dest(dest));
  });
};