require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)



  describe('Word', {:type => :feature}) do
    it('check to see if index page rendered') do
      visit('/')
      expect(page).to have_content('Welcome Kids')
    end

    it('add a word to the list') do
      visit('/add_word')
      fill_in('word_name', :with => 'Run')
      click_button('Submit')
      expect(page).to have_content('Run')
    end

    # it('delete a word from the list') do
    #   visit('/add_word')
    #   fill_in('word_name', :with => 'Run')
    #   click_button('Submit')
    #   click_link('Run')
    #   click_button('delete word')
    #   expect(page).to have_no_content('Run')
    # end
  end
