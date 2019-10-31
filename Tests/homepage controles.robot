*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Controleer de juiste titels
    open browser  about:blank  chrome
    maximize browser window
    go to  http://www.bol.com
    #sleep  2s
    #Voer hier de juiste nieuwe commando's toe
    page should contain  Sinterklaas  2s
    page should contain  Dagdeal
    page should contain element  id:searchfor
    input text  id:searchfor  Exit escape room
    click element  xpath://button[@data-test="search-button"]
    wait until page contains  EXIT De Verlaten  5s
    close browser