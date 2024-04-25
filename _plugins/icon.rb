class IconInlineTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @name = input.strip
  end

  def render(context)
    case @name
    when 'ppt'
      klass = "bi-file-ppt"
    when 'pdf'
      klass = "bi-file-pdf"
    when 'yt'
      klass = "bi-youtube"
    end
    # file-icon is a class I defined in assets/main.css
    "<i class='bi #{klass} file-icon'></i>"
  end
end

Liquid::Template.register_tag('icon', IconInlineTag)
