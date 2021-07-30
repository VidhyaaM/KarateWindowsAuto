Feature:
	Github desktop automation
Scenario: open github desktop and add files
#open github desktop app
    * robot { fork: 'C:/Users/vithu/AppData/Local/GitHubDesktop/GitHubDesktop.exe' }
#create new repo with menu options
    	#* robot locate('File').click('File')
	 #* waitFor('New repository...').childern.click()
#keyboard shortcut to crate new repo and add repo name 
    * input(Key.CONTROL + 'n')
    * input('testrepo')
    * robot locate('Create repository').click()
#add files to the new repo and push
    * robot locate('Commit to main').click()
    * robot locate('Push origin').click()
#close git hub desktop app using keyboard shortcut
    * input(Key.ALT + Key.F4)
   
