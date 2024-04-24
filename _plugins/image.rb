class ImgInlineTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    args = input.strip.split(',')
    @filename = args[0]
    if args.size > 1
      @width = args[1].strip
    else
      @width = 100
    end
    @input = input
  end

  def render(context)
    "<img src='/exemplos/#{@filename}' width='#{@width}%'>"
  end
end

Liquid::Template.register_tag('img', ImgInlineTag)
