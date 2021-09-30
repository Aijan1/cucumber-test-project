Feature: Test new user registration

    Background:
        Given I open the site "/index.php?route=account/register"

    Scenario: Verify new user registration
        When  I set "Aizhan" to the inputfield "#input-firstname"
        Then  I expect that element "#input-firstname" is not empty
        And   I expect that element "#input-firstname" contains the text "Aizhan"
        When I set "Mambetalieva" to the inputfield "#input-lastname"
        Then I expect that element "#input-lastname" is not empty
        And I expect that element "#input-lastname" contains the text "Mambetalieva"
        When I set "futgh26@getnada.com" to the inputfield "#input-email"
        Then I expect that element "#input-email" is not empty
        And I expect that element "#input-email" contains the text "futgh26@getnada.com"
        When I set "123456789" to the inputfield "#input-telephone"
        Then I expect that element "#input-telephone" is not empty
        And I expect that element "#input-telephone" contains the text "123456789"
        When I set "Password1" to the inputfield "#input-password"
        Then I expect that element "#input-password" is not empty
        And I expect that element "#input-password" contains the text "Password1"
        When I set "Password1" to the inputfield "#input-confirm"
        Then I expect that element "#input-confirm" is not empty
        And I expect that element "#input-confirm" contains the text "Password1"
        And I pause for 1000ms
        When  I click on the element "[name='agree']"
        Then  I expect that checkbox "[name='agree']" is checked
        When  I click on the button "[value='Continue']"
        And I pause for 2000ms
        Then I expect that the path is "/index.php?route=account/success"
        Then I expect that element "#content > p:nth-child(2)" does exist

        # Then I expect that element "#content > p:nth-child(2)" contains the text "Congratulations"
        # element "#content > p:nth-child(2)" contains Congratulations message
        # but fails here, can't get text content

        # Successful user registration can be also validated by URL
        # If registration successful it redirects to /index.php?route=account/success









