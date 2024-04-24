class AudioInlineTag < Liquid::Tag
  def initialize(tag_name, filename, tokens)
    super
    @filename = filename.strip
  end

  def render(context)
    "<audio controls>
<source src='/exemplos/#{@filename}' type='audio/mpeg'>
Your browser does not support the audio tag.
</audio>"
  end
end

Liquid::Template.register_tag('audio', AudioInlineTag)
