module Jekyll
  class AlertTagBlock < Liquid::Block

    def render(context)
      text = super
      "<p class='alert alert-warning'>#{text}</p>"
    end

  end
end

Liquid::Template.register_tag('alert', Jekyll::AlertTagBlock)
