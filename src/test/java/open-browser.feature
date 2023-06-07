Feature: Open browser

  Background:
    * def webUrlBase = karate.properties['web.url.base']
    * configure driver = { type: 'chrome' }

  Scenario: try logging into evalart

    #realizar el login y maximizar la pantalla
    Given driver baseUrl
    * maximize()
    And waitFor("input[name='username']")
    And input('input[name=username]', '621169')
    And input('input[name=password]', '10df2f32286b7120MS00LTk2MTEyNg==30e0c83e6c29f1c3')
    When submit().click("button[type='submit']")