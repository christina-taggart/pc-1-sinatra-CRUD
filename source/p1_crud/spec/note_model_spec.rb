require 'spec_helper'

describe Note do
  pending "add some examples to (or delete) /home/tager/ruby_projects/dbc/week4/06weekend/p1_restful_crud/source/p1_crud/Rakefile"
  let(:sample_content) { "Writing thoughts" }
  let(:note) { Note.new(content_text: sample_content) }

  subject { note }

  it { should respond_to :content_text }

  it 'should have access to content text' do
  	expect(note.content_text).to eq sample_content
  end
end
