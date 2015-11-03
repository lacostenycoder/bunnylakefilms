module WorksHelper

  def image_tag_from_asset_server(work)
    case work.host_id
    when 1 then vimeo_tag(work)
    when 2 then youtube_tag(work)
    else vimeo_tag(work)
    end
  end

  def vimeo_tag(work)
    image_tag("http://i.vimeocdn.com/video/#{work.still_code}_640.jpg", width: 320, height: 184, class: 'js-mobile-video-placeholder')
  end

  def youtube_tag(work)
    image_tag("http://img.youtube.com/vi/#{work.video_code}/hqdefault.jpg", width: 320, height: 184, class: 'js-mobile-video-placeholder')
  end

end
