module.exports = (grunt) ->

	grunt.task.loadNpmTasks 'grunt-contrib-coffee'
	grunt.task.loadNpmTasks 'grunt-contrib-uglify'
	grunt.task.loadNpmTasks 'grunt-contrib-watch'
	grunt.task.loadNpmTasks 'grunt-ftp-deploy'

	grunt.initConfig
		coffee:
			options:
				bare: true
			compile:
				src: ['app/main.coffee', 'app/**/*.coffee', 'test.coffee']
				dest: 'dist/compiled.js'
		uglify:
			dist:
				files: 'dist/compiled.min.js': 'dist/compiled.js'
		watch:
			files: ['app/**/*.coffee']
			tasks: ['coffee', 'uglify']
		'ftp-deploy':
			build:
				auth: 
					host: 'ftp.picgrid.net'
					authKey: 'duhKey'
				src: 'dist'
				dest: 'app'



	grunt.registerTask 'default', 'coffee'
	grunt.registerTask 'watch', 'watch'
	grunt.registerTask 'deploy', ['coffee', 'uglify', 'ftp-deploy']

