Feature: Repeat scenario n times or until the challenge is finished

  Background:

  Scenario: Repeat scenario n times

    Given call read('classpath:open-browser.feature')
    * def challengue_p = function(i){ return karate.call("classpath:challenge.feature")}
    When def usersResult = karate.repeat(10, challengue_p )
    Then match html("//h1[@class='text-center text-3xl p-5']") contains 'Felicidades, has terminado la prueba exitosamente'
