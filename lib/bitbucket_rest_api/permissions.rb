# encoding: utf-8

module BitBucket
  class Permissions < API
    extend AutoloadHelper

    def initialize(options = { })
      super(options)
    end

    def repositories(user_name, repo_name)
      q = "repository.full_name=\"#{user_name}/#{repo_name}\""
      get_request('/2.0/user/permissions/repositories', { q: q })
    end
  end
end
