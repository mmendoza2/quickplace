class SitemapController < ApplicationController
  layout nil

  def index
    headers['Content-Type'] = 'application/xml'
    last_micrositio = Micrositio.last
    if stale?(:etag => last_micrositio, :last_modified => last_micrositio.created.utc)
      respond_to do |format|
        format.xml { @micrositios = Micrositio.all } # sitemap is a named scope
      end
    end
  end

end
