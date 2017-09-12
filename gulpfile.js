// Подключаем Gulp и все необходимые библиотеки
var gulp           = require('gulp'),
				gutil          = require('gulp-util' ),
				sass           = require('gulp-sass'),
				browserSync    = require('browser-sync'),
				cleanCSS       = require('gulp-clean-css'),
				autoprefixer   = require('gulp-autoprefixer'),
				bourbon        = require('node-bourbon'),
				ftp            = require('vinyl-ftp');

// Обновление страниц сайта на локальном сервере
gulp.task('browser-sync', function() {
	browserSync({
		proxy: "foxgt.top",
		notify: false
	});
});

// Компиляция style.css
gulp.task('sass', function() {
	return gulp.src('themes/foxgt/css/style.sass')
		.pipe(sass({
			includePaths: bourbon.includePaths
		}).on('error', sass.logError))
		.pipe(autoprefixer(['last 15 versions']))
		.pipe(cleanCSS())
		.pipe(gulp.dest('themes/foxgt/css/'))
		.pipe(browserSync.reload({stream: true}))
});

// Наблюдение за файлами
gulp.task('watch', ['sass', 'browser-sync'], function() {
	gulp.watch('themes/foxgt/css/style.sass', ['sass']);
	gulp.watch('themes/foxgt/**/*.tpl', browserSync.reload);
	gulp.watch('themes/foxgt/js/**/*.js', browserSync.reload);
	gulp.watch('themes/foxgt/**/*', browserSync.reload);
	gulp.watch('plugins/**/*.php', browserSync.reload);
	gulp.watch('plugins/**/*.tpl', browserSync.reload);
	gulp.watch('themes/admin/**/*.tpl', browserSync.reload);
});

// Выгрузка изменений на хостинг
gulp.task('deploy', function() {
	var conn = ftp.create({
		host:      'ftp.s42.freehost.com.ua',
		user:      'foxgt_logoz',
		password:  'max14789632',
		parallel:  5,
		log: gutil.log
	});
	var globs = [
	'themes/foxgt/**',
	];
	return gulp.src(globs, {buffer: false})
	.pipe(conn.dest('/www.fox-gt.com/themes/foxgt'));
});

gulp.task('default', ['watch']);
