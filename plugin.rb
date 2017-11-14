# name: Nicovideo Onebox Wrapper
# about: Tell Onebox where to find the HTML5 Nicovideo player
# version: 2.0.0
# authors: @botoggle

class Onebox::Engine::NicovideoOnebox
  include Onebox::Engine

  REGEXP = /^(https?:)?\/\/(.*nicovideo\.jp)\/watch\/sm(\d*)$/i
  matches_regexp(REGEXP)

  def video_id
    @url.match(REGEXP)[3]
  end

  def placeholder_html
    <<-HTML
      <div placeholder>
        <img src='http://tn-skr2.smilevideo.jp/smile?i=#{video_id}' />
      </div>
    HTML
  end

  def to_html
    <<-HTML
      <iframe src="https://embed.nicovideo.jp/watch/sm#{video_id}" 
              style="width: 480px; height: 360px;"
              allowfullscreen 
              scrolling="no" />
    HTML
  end
end