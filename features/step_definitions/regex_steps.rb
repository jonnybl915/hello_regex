Given(/^I have the email address (.*gmail)$/) do |email|
  @email = email
end

When(/^I validate the email address$/) do
  email_regex = /^\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  @regex_comparison_result = expect(email_regex.match(@email))
end

Then(/^I expect it to be (valid|invalid)$/) do |validity|
  if validity == 'valid'
    expect(@regex_comparison_result).not_to be_nil
  else
    expect(@regex_comparison_result).to eq nil
  end
end
