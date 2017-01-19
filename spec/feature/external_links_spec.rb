require 'spec_helper'

feature 'Add no follow attribute to external links' do
  before do
    visit root_path
  end

  it 'should show the external link' do
    expect(page).to have_selector :link_or_button, 'External cars'
  end

  it 'should add a no follow tag to internal links' do
    expect(find('a#car_external_link')['rel']).to eq('nofollow')
  end
end
