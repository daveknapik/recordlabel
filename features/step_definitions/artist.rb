Given /^there is one artist with some releases$/ do
  Artist.destroy_all
  Release.destroy_all
  @artist = Factory.create(:artist)
  @release = Factory.create(:release, :artist => @artist)
  @release = Factory.create(:release, :artist => @artist)
end

Given /^there is one artist with no releases$/ do
  Artist.destroy_all
  @artist = Factory.create(:artist)
end

Given /^there is one artist$/ do
  Artist.destroy_all
  @artist = Factory.create(:artist)
end

When /^I follow the artist name$/ do
  click_link @artist.name
end

Then /^I should see the artist name$/ do
  page.should have_content @artist.name
end

Then /^I should see the artist bio$/ do
  page.should have_content @artist.bio
end

Then /^I should see the artists releases$/ do
  @artist.releases.each do |release|
    page.should have_content release.title
  end
end

