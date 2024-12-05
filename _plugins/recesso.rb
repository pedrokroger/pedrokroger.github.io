module Recesso
  class RecessoGenerator < Jekyll::Generator
    safe true
    priority :highest

    def generate(site)
      pages = site.pages

      pages.each do |page|
        if page.path.include? ".md"
          new_content = ""
          page.content.each_line do |line|
            if line.start_with? "|" and line.match(/Recesso/)
              new_content << line.gsub("Recesso", '<span style="color:silver">Recesso</span>')
            else
              new_content << line
            end
          end
          page.content = new_content
        end
      end
    end
  end
end
