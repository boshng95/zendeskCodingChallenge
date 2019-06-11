# zendeskCodingChallenge
Zendesk is a customer service tool that allows the creation and management of support tickets. The web app in Ruby on Rails is a Ticket Viewer from Zendesk.

# Content of Project
The project contains 2 features:

i)  Display all the request tickets in a list. The tickets will page through tickets when more than 25 tickets are returned.

ii) Display individual ticket details. User able to search a specific ticket by input ticket ID in the search input field.

# Getting Started (How to run this project)
To run this project, installation of Ruby on Rails is required:

i)    https://gorails.com/setup/osx/10.14-mojave  - For Mac

ii)   https://gorails.com/setup/windows/10        - For Windows

iii)  https://gorails.com/setup/ubuntu/19.04      - For Ubuntu

# Post installation of Ruby on Rails
1.  Go to the directory of the source code

For Windows (Ubuntu Bash)
```bash
cd /mnt/c/Users/username/zendeskCodingChallenge/codingChallenge
```

For Mac 
```bash
cd /zendeskCodingChallenge
```

2.  To Open source code
```bash
code .
```
3.  Install bundle before running the project, to ensure all gems & versions are installed
```bash
bundle install
```

4.  Please request a configuration value file from the author of this source code. The purpose of configuration value file is to to securely configure Rails applications. Configuration values often include sensitive information. The configuration value file will named as "application.yml".
```bash
The file of "application.yml" should be put into "Users/username/zendeskCodingChallenge/codingChallenge/config/*"
```

5.  To start the web server
```bash
rails s
```

# Documentation of ZendeskCodingChallenge
### Model
```
File location: "/codingChallenge/app/models/tickets.rb" 
```

The file of "tickets.rb" is the class file of Tickets. It uses to initiate & call all the tickets existed in the Zendesk account. It can also use to call a specific ticket by pass the parameter value of ticket ID. Configuration file is needed in this object to call the API from Zendesk with authetication credential.

### View
```
File location: "/codingChallenge/app/models/views/*" 
```

There a total of 2 view object created in this project which is "home_page" & "search_specific". 
##### "home_page"
To show all the list of tickets exist in the account.
##### "search_specific"
To show specific ticket exist in the accoun by input value from the ticket ID.

### Controller
```
File location: "/codingChallenge/app/models/controllers/*" 
```

There a total of 2 controller object created in this project which is "home_page_controller.rb" & "search_specific_controller.rb". 
##### "home_page_controller.rb"
To receive the value from model object of a list of tickets & pass to view object by showing on the front-end.
##### "search_specific_controller.rb"
To receive the value from view object of ticket ID & pass to the model object for retrieving specific ticket's information.

### Testing
```
File location: "/codingChallenge/test/controllers/*" 
```

There a total of 2 testing file created in this project which is "home_page_controller_test.rb" & "search_specific_controller_test.rb". 
##### "home_page_controller_test.rb"
To test all the functions declared in "home_page_controller.rb". Testing include the size of JSON API Array & route testing.
##### "search_specific_controller_test.rb"
To test all the functions declared in "search_specific_controller.rb". Testing include the correctness of JSON API, fault testing & route testing"
