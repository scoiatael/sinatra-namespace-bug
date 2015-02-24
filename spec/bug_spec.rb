require_relative 'spec_helper'

describe app do
  context '/v1' do
    describe 'get /?' do
      subject(:response) { get('/v1/?') }

      it { is_expected.to be_ok }

      it 'contains 123' do
        expect(response.body).to eq('123')
      end
    end
  end
end
