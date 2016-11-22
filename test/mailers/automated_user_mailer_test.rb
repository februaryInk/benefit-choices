require 'test_helper'

class AdminMailerTest < ActionMailer::TestCase
    test 'contact_us' do
        email = Email.new(
            content: 'This is a test.',
            name: 'Test User',
            return_email_address: 'testuser@example.com',
            subject: 'Testing the Contact Us Email'
        )
        mail = AdminMailer.contact_us( email )
        assert_equal 'Testing the Contact Us Email', mail.subject
        assert_equal 'testuser@example.com', mail.to
    end

    #test "password_reset" do
    #    mail = AutomatedUserMailer.password_reset
    #    assert_equal "Password reset", mail.subject
    #    assert_equal ["to@example.org"], mail.to
    #    assert_equal ["from@example.com"], mail.from
    #    assert_match "Hi", mail.body.encoded
    #end
end
