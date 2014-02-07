require 'spec_helper'

describe Note do
	
	describe 'get all notes' do
		it 'should see all notes' do
			get "/notes"
			expect(last_response).to be_ok
		end
	end

	describe 'create a new note' do
		new_params = {
				title: 'Test title',
				content_text: 'Text here'
			}
		new_session = {
			'rack.session' => {
					url: '/'
			}
		}
		it 'should add a new note' do
			expect{ 
				post('/notes', new_params, new_session)
			}.to change(Note, :count).by(1)
			last_response.status.should == 302
		end
	end

	describe 'edit a note' do
		before :all do
			@note = Note.create(title: 'title1', content_text: 'content1')
		end

		after :all do
			@note.destroy
		end

		new_params = {
				:'_method' => 'PUT',
				note: {
					title: 'Change title',
					content_text: 'Change here'
				}
			}
		new_session = {
			'rack.session' => {
					url: '/'
			}
		}

		it 'should edit an existing note' do
			post("/notes/#{@note.id}", new_params, new_session)
			@note.reload()
			expect(@note.title).to eq('Change title')
			expect(@note.content_text).to eq('Change here')
			expect(last_response.status).to eq 302
		end
	end

	describe 'delete a note' do
		before :all do
			@note = Note.create(title: 'title1', content_text: 'content1')
		end

		new_params = {
				:'_method' => 'DELETE'
			}
		new_session = {
			'rack.session' => {
					url: '/'
			}
		}

		it 'should remove note' do
			expect{ 
				post("/notes/#{@note.id}", new_params, new_session)
			}.to change(Note, :count).by(-1)
		end
	end
end