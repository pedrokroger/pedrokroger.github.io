class CollapseNotasInlineTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
  end

  def render(context)
    "<p class='d-inline-flex gap-1'>
  <a class='btn btn-light' data-bs-toggle='collapse' href='#notas-table' role='button' aria-expanded='false' aria-controls='notas-table'>
    Ver notas
  </a>
</p>
"
  end
end

Liquid::Template.register_tag('notas', CollapseNotasInlineTag)
