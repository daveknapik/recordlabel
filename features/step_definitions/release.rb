Given /^there is one release$/ do
  Release.destroy_all
  @release = Factory.create(:release, :title => "Endless Summer", :description => "Everyone loves Fennesz")
end

Given /^there are releases$/ do 
  @releases = Array.new
  
  3.times do |i|
   @releases = @releases << Factory.create(:release)
  end
  @releases
end

When /^I follow the release title$/ do
  click_link @release.title
end

Then /^I should see the release title$/ do
  page.should have_content @release.title
end

Then /^I should see the release description$/ do
  page.should have_content @release.description
end
