before presentation
- close all iterm windows
- use ./serve.sh for presentation

---------------
presentation
---------------
#slide 1
* welcome to my talk about gradle in the developer ecosystem

* my name is
** working as
** believe in software development as a craftsmanship

#slide 2

* craftsmen need tools, we need tools
	
#slide 3

* What we want to look at

---------------

#DEMOS

## idea 13 Demo (prerecorded)

## Netbeans Demo (prerecord)
(clean gradle cache before)

* import spring-integration (fast)
* open spring-integration-twitter
* show "empty" dependencies
* explain context menu
* run build
	* show dependencies
* run (single) test
* change dependency (log4j -> 1.2.17)
* run single test again
* show changed dependency libs in testCompile
* show sample main file
* run main file
* debug main file
* not syntax support

## STS DEMO (prerecord)

* open STS
* import GRADLE project from /Users/Rene/gradleware/github/breskeby/private-gradle-talks/2013/gradle-summit/dev-ecosystem/repos/spring-integration


* selected projects
	- spring-integration
	- spring-integration-twitter
	- spring-integration-http
	- spring-integration-scripting
	- spring-integration-security
	
* run some tests via IDE
* run some tests via Gradle
* change log4jVersion = '1.2.12' > '1.2.17'
* change sorting of #gradle dependencies in spring-integration-core'
* add 'build.gradle' file to spring-integration-twitter:

    sourceSets{
	    integTest
    }

* refresh sources

* create custom task

    task sayHello << {
        println "hello"
    }

* open source at https://github.com/SpringSource/eclipse-integration-gradle
* more info at https://github.com/SpringSource/eclipse-integration-gradle/wiki

#credits
* jungle.jpg (http://www.flickr.com/photos/geographyalltheway_photos/4168656319)
* jungle_path (http://www.flickr.com/photos/iamagenious/396268675)
* tools_bw (http://www.flickr.com/photos/zzpza/3269784239/)
* spring team for their sample project
* http://creativecommons.org/licenses/by/3.0/