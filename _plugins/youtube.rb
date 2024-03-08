class YoutubeInlineTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
  end

  def render(context)
    return  '<i class="bi bi-youtube" style="color: red;"></i>'
  end
end

Liquid::Template.register_tag('yt', YoutubeInlineTag)
