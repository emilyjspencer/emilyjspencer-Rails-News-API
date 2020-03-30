module Hackernews

    class Client

      def initialize
        @host = 'YOUR_HOST'
        @key = 'YOUR_API_KEY'
      end

      def item(id)
        get("item/#{id}")
      end

      def topstories
        get('topstories')
      end

      private
      
      def get(path)
        response = Excon.get(
          'https://' + @host + '/' + path + '.json?print=pretty',
          headers: {
            'x-rapidapi-host' => @host,
            'x-rapidapi-key' => @key,
          }
        )
        return false if response.status != 200
        JSON.parse(response.body)
      end
    end
  end