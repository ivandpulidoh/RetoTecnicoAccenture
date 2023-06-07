Feature: browser automation 1

  Background:
    * def solverMatheExercises = read('classpath:logical-functions.js')
    * def solverDateExcercises = read('classpath:date-function.js')
    * def sleep = function(time){ java.lang.Thread.sleep(time) }
    * def extractDays = function(text){ var regex = /\d+/; var result = text.match(regex); return result[0].toString();}
    * def containsAntes = function(text) {return text.includes("antes");}


  @challenge
  Scenario: try logging into evalart and beat the challenges
    #resolver el ejercicio matematico
    Given def matheExercise = text("p[class='text-center text-xl font-bold']")
    * def solvedExcercise = call solverMatheExercises matheExercise
    And waitFor("input[value='" + solvedExcercise + "']").click()

    #resolver el ejercicio de fecha
    When def dateStringExercise = text("div[class='flex flex-col items-center p-4 space-y-5 bg-white rounded-md w-2/5 shadow-md my-5']  p[class='text-center text-xl']")
    * def days = call extractDays dateStringExercise
    * def subtractOrAdd = call containsAntes dateStringExercise
    * def solvedDateExcercise = solverDateExcercises(subtractOrAdd, days)
    And input("input[name='date']", solvedDateExcercise)

    #enviar el reto
    And submit().click("button[type='submit']")
    * call sleep 1000
