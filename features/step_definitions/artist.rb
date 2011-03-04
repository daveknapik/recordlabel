Given /^there is one artist with some releases$/ do
  Artist.destroy_all
  @artist = Factory.create(:artist, :name => "Fennesz", :bio => "Austrian guitar and laptop composer")
  @release = Factory.create(:release, :artist_name => "Fennesz", :title => "Endless Summer", :description => "Everyone loves Fennesz")
  @release = Factory.create(:release, :artist_name => "Fennesz", :title => "Venice", :description => "This one's good, too!")
end

Given /^there is one artist with no releases$/ do
  Artist.destroy_all
  @artist = Factory.create(:artist, :name => "Fennesz", :bio => "Austrian guitar and laptop composer")
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

