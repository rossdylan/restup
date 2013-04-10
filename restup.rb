require 'rubygems'
require 'sinatra/base'
require 'redcarpet'


class RestUp < Sinatra::Base
    post '/convert/:type' do
        conversion_type = params[:type]
        raw_markdown = request.body.read()
        if !conversion_type.casecmp("html")
            500
        else
            renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
        end
        renderer.render(raw_markdown)
    end
end
