# SeleniumPractice

This project tests the functionality of the Portfolio Website practice project on the Firefox browser using Selenium.

For the automated front-end testing with Selenium to function on your machine, you will first need to download the Selenium Standalone Server. I used version 3.11.0

Selenium downloads can be accessed [here](https://www.seleniumhq.org/download/).

Since this is written in Ruby, you will also need to download the Selenium Client & WebDriver Language Bindings for the Ruby language. I used the gem version 3.11. The latest version can be found [here](http://rubygems.org/gems/selenium-webdriver).

For selenium to work with Firefox, make sure you have the Mozilla GeckoDriver found [here](https://github.com/mozilla/geckodriver/).

GeckoDriver will need to be in the path of your project. I downloaded GeckoDriver and left it in my default downloads directory. I added it to my path by
1. navigating to the project directory in the terminal
2. `export PATH=$PATH:~/Downloads/`
3. `echo $PATH`

If the terminal output after `echo $PATH` includes the location of the downloads folder, then that part should be set up.

For testing with other browsers, make sure the correct webdriver is installed. A list of available drivers can be found [here](https://www.seleniumhq.org/download/) in the section titled "Third Party Drivers, Bindings, and Plugins"

The selenium server needs to be running BOTH of these simultaneously. I kept them both running in separate terminal tabs. This simulates a basic examle of a selenium hub and a selenium server. In production, this could be scaled up to use multiple nodes, and test various browser versions and types simultaneously.

Set up a selenium hub in the terminal.
`java -jar selenium-server-standalone-3.11.0.jar -role hub`

Set up a selenium node in the terminal.
`java -jar selenium-server-standalone-3.11.0.jar -role node -hub`

To write tests for Selenium to run, I wrote tests using RSpec. If you aren't familiar with writing tests in RSpec, I would recommend learning more [here](http://rspec.info/documentation/3.7/rspec-expectations/).
