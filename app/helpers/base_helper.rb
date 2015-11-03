module BaseHelper
  
  def vimeo_json(vimeo_video_id)
    source = "http://vimeo.com/api/v2/video/#{vimeo_video_id}.json"
    data = Net::HTTP.get_response(URI.parse(source)).body
    JSON.parse(data).first
  end
  
  def vimeo_thumb(vimeo_video_id)
    vimeo_json(vimeo_video_id)['thumbnail_large']
  end
  
end
