require 'spec_helper'

describe BitBucket::Permissions do
  let(:repo) { BitBucket::Permissions.new }

  describe '.repo_list' do
    before do
      expect(repo).to receive(:request).with(
        :get,
        '/2.0/user/permissions',
        { q: "repository.full_name=\"mock_username/mock_repo\"" },
        {}
      )
    end

    it 'should send a GET request for the given repo' do
      repo.repositories('mock_username', 'mock_repo')
    end
  end
end
