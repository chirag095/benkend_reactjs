blog_sitemap_opts = {
  create_index: false,
  default_host: 'https://localhost:3000',
  compress: false,
  sitemaps_path: '',
  namer: SitemapGenerator::SimpleNamer.new(:blog_sitemap)
}

SitemapGenerator::Sitemap.create blog_sitemap_opts do
  pages = Dir["public/blog/**/*.html"]
  pages.each do |blog_page|
    add blog_page, changefreq: 'weekly'
  end
end

sitemap_opts = {
  create_index: false,
  default_host: 'https://localhost:3000',
  compress: false,
  sitemaps_path: '',
  namer: SitemapGenerator::SimpleNamer.new(:sitemap)
}

SitemapGenerator::Sitemap.create sitemap_opts do
  add '/#index', changefreq: 'weekly'
  add '/home', changefreq: 'weekly'

  # all other important pages here

  add_to_index "blog_sitemap.xml", host: ENV['SITE_URL']
end
