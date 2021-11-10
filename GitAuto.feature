Feature:
	Github desktop automation
Scenario: open github desktop and add files
#open github desktop app
    * robot { fork: 'C:/Users/vithu/AppData/Local/GitHubDesktop/GitHubDesktop.exe' }
#create new repo with menu options
    * click('File')
	* waitFor('Current repository').click()
    * locate('Name').input('inspectrepo')
    * locate('Create repository').click()
    #add files to the new repo and push
    * locate('Commit to main').click()
    * locate('Push origin').click()
    * click('close')

# #keyboard shortcut to crate new repo and add repo name 
#     * input(Key.CONTROL + 'n')
#     * input('testrepo')
#     * locate('Create repository').click()
#add files to the new repo and push
    # * locate('Commit to main').click()
    # * locate('Push origin').click()
#close git hub desktop app using keyboard shortcut
   # * input(Key.ALT + Key.F4)
   
