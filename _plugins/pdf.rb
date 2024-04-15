class PdfInlineTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
  end

  def render(context)
    return '<i class="bi bi-file-earmark-pdf-fill" style="font-size: 1.2rem; color: #fcba03;"></i>'
  end
end

Liquid::Template.register_tag('pdf', PdfInlineTag)
