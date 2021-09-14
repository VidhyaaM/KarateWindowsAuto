@debug
Feature: w3 school log in with multiple user id and pw

  Scenario Outline: log in with user id and pw 
    * driver 'https://www.w3schools.com/'
    * driver.maximize()
    * click('#w3loginbtn')
    * match driver.url =="https://profile.w3schools.com/log-in?redirect_url=https%3A%2F%2Fmy-learning.w3schools.com"
    * input('#modalusername',user)
    * input('#current-password', pw)
    * click('{^span}Log in')
    * delay(5000)
    * screenshot()
    * match driver.url =="https://my-learning.w3schools.com/"
 		* click('{}Log out')
 		* delay(9000)
    
  Examples:
    | user                   | pw            |
    | vidhyaa@sequoiaat.com  | Lesewe1233    |
  	| vidhyaa1@sequoiaat.com | Newuser1234   |
  		
