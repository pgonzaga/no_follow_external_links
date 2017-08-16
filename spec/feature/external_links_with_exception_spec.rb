require 'spec_helper'

feature 'Add no follow attribute to external links' do
  before do
    NoFollowExternalLinks.configure do |config|
      config.excluded_urls = %w{https://www.mycars.com/}
    end
    visit root_path
  end

  it 'should show the external link' do
    expect(page).to have_selector :link_or_button, 'External cars but excluded'
  end

  it 'adds a nofollow rel to external link links' do
    expect(find('a#car_external_link')['rel']).to eq('nofollow')
  end

  it 'does not add a nofollow rel to external excluded links' do
    expect(find('a#car_external_excluded_link')['rel']).not_to be
  end
end
