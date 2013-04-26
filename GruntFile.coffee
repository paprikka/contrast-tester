module.exports = (grunt)->
  grunt.initConfig 
    pkg: '<json:package.json>'

    watch:
      files: 'src/**/*'
      tasks: 'coffee'

    coffee:
      compile:
        options:
          sourceMap: yes
        files:
          'app.js' : 'src/app.coffee'

    connect:
      dev:
        options:
          port: 8088

    grunt.registerTask 'default', 'watch'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-contrib-connect'
    grunt.loadNpmTasks 'grunt-contrib-coffee'
