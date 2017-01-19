require 'spec_helper'

feature 'Do not add no follow attribute to internal links' do
  before do
    visit root_path
  end

  it 'should show the internal link' do
    expect(page).to have_selector :link_or_button, 'Internal cars'
  end

  it 'should show the internal link with full url' do
    expect(page).to have_selector :link_or_button, 'Internal cars full url'
  end

  it 'should not add a no follow tag to internal links' do
    expect(find('a#car_internal_link')['rel']).to eq(nil)
  end

  it 'should not add a no follow tag to internal links with full url as href' do
    expect(find('a#car_internal_url_ink')['rel']).to eq(nil)
  end
end
