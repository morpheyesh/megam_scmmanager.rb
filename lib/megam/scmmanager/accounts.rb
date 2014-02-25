module Megam
  class Scm
    # GET /accounts
    #Yet to be tested
    def get_accounts(email)

      @options = {:path => "/users.json",
        :body => ''}.merge(@options)

      request(
        :expects  => 200,
        :method   => :get,
        :body     => @options[:body]
      )
    end

    # The body content needs to be a json.
    def post_accounts(json_hash)
      @options = {:path => '/users.json',
      :body => json_hash[:json]}.merge(@options)

      request(
        :expects  => 201,
        :method   => :post,
        :body     => @options[:body]
        )
    end
  end
end
