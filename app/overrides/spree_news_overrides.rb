Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "news_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:posts, :label => 'Events', :icon => 'fa fa-list') %>",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/home/index",
                     :name => "index_news_partial",
                     :insert_top => "[data-hook='posts_within_this_div']",
                     :partial => "shared/news",
                     :disabled => false)
