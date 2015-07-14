class Page < ActiveRecord::Base
  require 'kramdown'

  def transformed_md
    Kramdown::Document.new(self.content).to_html
  end
end
