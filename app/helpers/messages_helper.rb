require 'net/http'
require 'uri'
require 'json'

module MessagesHelper
  def getVideoTitleFrom(link)
    if link =~ /youtube\.com/
      video_id = link.gsub(/(.*)(watch\?v=)/, '')
    else
      video_id = link.gsub(/https:\/\/youtu\.be\//, '')
    end

    uri = URI.parse(
      'https://www.googleapis.com/youtube/v3/videos?id=' +
      video_id +
      '&key=' +
      ENV['google_api_key'] +
      '&part=snippet,contentDetails,statistics,status'
      )
    json = Net::HTTP.get(uri)
    json = JSON.parse(json)
    result = json["items"][0]["snippet"]["title"]
  end
end
