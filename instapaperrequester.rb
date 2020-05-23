require 'rest-client'

class InstapaperRequester 
    def initialize(username, password)
        @username = CGI.escape username
        @password = CGI.escape password
        @url = ""
    end

    def prepareUrl (url)
        cleanedUrl = CGI.escape url
        @url = "https://www.instapaper.com/api/add?username=#{@username}&password=#{@password}&url=#{cleanedUrl}"
    end

    def queryUrl 
        return RestClient.post(@url, payload={}, headers={})
    end

    def loop
        puts "url to loop"

        loopUrl = gets.chomp

        puts "loop number"

        loopMax = Integer(gets.chomp)

        currentLoop = 1;

        while currentLoop <= loopMax do

            url = loopUrl + "#{currentLoop}"

            self.prepareUrl( url )

            outcome = self.queryUrl()
        
            puts outcome
        
            currentLoop += 1

        end

    end   
end
