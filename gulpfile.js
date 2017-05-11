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
		proxy: "fox-gt.com",
		notify: false
	});
});

// Компиляция style.css
gulp.task('sass', function() {
	return gulp.src('themes/masters/css/style.sass')
		.pipe(sass({
			includePaths: bourbon.includePaths
		}).on('error', sass.logError))
		.pipe(autoprefixer(['last 15 versions']))
		.pipe(cleanCSS())
		.pipe(gulp.dest('themes/masters/css/'))
		.pipe(browserSync.reload({stream: true}))
});

// Наблюдение за файлами
gulp.task('watch', ['sass', 'browser-sync'], function() {
	gulp.watch('themes/masters/css/style.sass', ['sass']);
	gulp.watch('themes/masters/**/*.tpl', browserSync.reload);
	gulp.watch('themes/masters/js/**/*.js', browserSync.reload);
	gulp.watch('themes/masters/**/*', browserSync.reload);
	gulp.watch('plugins/**/*.php', browserSync.reload);
	gulp.watch('plugins/**/*.tpl', browserSync.reload);
	gulp.watch('themes/admin/**/*.tpl', browserSync.reload);
});

// Выгрузка изменений на хостинг
gulp.task('deploy', function() {
	var conn = ftp.create({
		host:      '77.222.62.66',
		user:      'logozet_triadus',
		password:  'max14789632',
		parallel:  10,
		log: gutil.log
	});
	var globs = [
	'themes/**',
	];
	return gulp.src(globs, {buffer: false})
	.pipe(conn.dest('/fox-gt/public_html/themes/'));
});

gulp.task('default', ['watch']);