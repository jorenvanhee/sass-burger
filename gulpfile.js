var gulp = require('gulp'),
	sass = require('gulp-ruby-sass'),
	live = require('gulp-livereload'),
	prfx = require('gulp-autoprefixer'),
	plum = require('gulp-plumber');

gulp.task('styles', function () {
	gulp.src('style.scss')
		.pipe(plum())
		.pipe(sass({style: 'compressed', precision: 7}))
		.pipe(prfx())
		.pipe(gulp.dest('.'))
		.pipe(live());
});

gulp.task('watch', function () {
	var server = live();
	gulp.watch('style.scss', ['styles']);
	gulp.watch('index.html').on('change', function (file) {
		server.changed(file.path);
	});
});

gulp.task('default', ['watch']);