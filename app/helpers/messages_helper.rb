require 'net/http'
require 'uri'
require 'json'

module MessagesHelper
  def getVideoDataFrom(link)
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

    # Explicitly declare as new Hash because of how rails handles hashes/params/whatever
    video_data = Hash.new

    video_data[:title] = json["items"][0]["snippet"]["title"]
    video_data[:id] = json["items"][0]["id"]

    video_data
  end
end
