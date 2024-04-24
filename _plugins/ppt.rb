class PptInlineTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
  end

  def render(context)
    return  '<i class="bi bi-file-earmark-ppt-fill" style="font-size: 1.2rem; color: #eb34d2;"></i>'
  end
end

Liquid::Template.register_tag('ppt', PptInlineTag)
