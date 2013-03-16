module.exports = (grunt) ->

	grunt.task.loadNpmTasks 'grunt-contrib-coffee'
	grunt.task.loadNpmTasks 'grunt-contrib-uglify'
	grunt.task.loadNpmTasks 'grunt-contrib-watch'
	grunt.task.loadNpmTasks 'grunt-ftp-deploy'
	grunt.task.loadNpmTasks 'grunt-contrib-connect'
	grunt.task.loadNpmTasks 'grunt-ember-templates'


	grunt.initConfig
		pkg: grunt.file.readJSON 'package.json'
		coffee:
			options:
				bare: true
			compile:
				src: ['app/main.coffee', 'app/**/*.coffee', 'test.coffee']
				dest: 'public/js/<%= pkg.name %>.js'
		uglify:
			options:
				mangle: false
			dist:
				files: 'public/js/<%= pkg.name %>.min.js': ['app/vendor/ember.min.js', '<%= coffee.compile.dest %>']
		connect:
			server:
				options:
					base: 'public'
		ember_templates:
			compile:
				options:
					templateName: (sourceFile) ->
						sourceFile.replace 'app/templates/', ''
				files: 
					'public/js/templates.js': 'app/templates/*.hbs'
		watch:
			src:
				files: ['app/**/*.coffee']
				tasks: ['coffee']
			ember_templates:
				files: 'app/templates/*.hbs'
				tasks: 'ember_templates'
		'ftp-deploy':
			build:
				auth: 
					host: 'ftp.picgrid.net'
					authKey: 'duhKey'
				src: 'dist'
				dest: 'app'
		



	grunt.registerTask 'default', 'coffee'
	grunt.registerTask 'minify', ['coffee', 'uglify']
	grunt.registerTask 'deploy', ['coffee', 'uglify', 'ftp-deploy']

