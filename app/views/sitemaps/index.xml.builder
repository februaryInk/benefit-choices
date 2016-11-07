xml.instruct! :xml, :version => '1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
    xml.url {
        xml.loc( "#{root_url}" )
        xml.changefreq( 'weekly' )
        xml.priority( 1.0 )
    }
    xml.url {
        xml.loc( "#{contact_us_url}" )
        xml.changefreq( 'weekly' )
        xml.priority( 0.5 )
    }
    xml.url {
        xml.loc( "#{products_medicare_url}" )
        xml.changefreq( 'weekly' )
        xml.priority( 0.9 )
    }
    xml.url {
        xml.loc( "#{products_medi_share_url}" )
        xml.changefreq( 'weekly' )
        xml.priority( 0.9 )
    }
end
