# module Jekyll
#
#   class SuccessGuidePage < Page
#     def initialize(site, base, dir, success_guide)
#       @site = site
#       @base = base
#       @dir = dir
#       @name = 'index.html'
#
#       self.process(@name)
#       self.read_yaml(File.join(base, '_layouts'), 'success_guide_index.html')
#       self.data['success_guide'] = success_guide
#
#       success_guide_title_prefix = site.config['success_guide_title_prefix'] || 'Success Guide: '
#       self.data['title'] = "#{success_guide_title_prefix}#{title}"
#     end
#   end
#
#   class SuccessGuidePageGenerator < Generator
#     safe true
#
#     def generate(site)
#       # dirs = site.read_directories
#       if site.layouts.key? 'success_guide_index'
#         dir = site.config['success_guide_dir'] || 'success_guide'
#         puts site.methods
#         # site.success_guide.keys.each do |success_guide|
#         #   site.pages << SuccessGuidePage.new(site, site.source, File.join(dir, success_guide), success_guide)
#         # end
#       end
#     end
#   end
#
# end
#
# # config
# #   layouts
# #   posts
# #   pages
# #   static_files
# #   exclude
# #   include
# #   source
# #   dest
# #   lsi
# #   highlighter
# #   permalink_style
# #   time
# #   future
# #   unpublished
# #   safe
# #   plugins
# #   limit_posts
# #   show_drafts
# #   keep_files
# #   baseurl
# #   data
# #   file_read_opts
# #   gems
# #   plugin_manager
# #   converters
# #   generators
# #   process
# # reset
# # setup
# # ensure_not_in_dest
# # collections
# # collection_names
# # read
# # read_directories
# # read_posts
# # read_drafts
# # read_content
# # read_data
# # read_collections
# # generate
# # render
# # cleanup
# # write
# # post_attr_hash
# # tags
# # categories
# # site_data
# # site_payload
# # filter_entries
# # getConverterImpl
# # instantiate_subclasses
# # get_entries
# # aggregate_post_info
# # relative_permalinks_deprecation_method
# # docs_to_write
# # documents
# # each_site_file
# # frontmatter_defaults
# # __orig_write
# # assets_config
# # assets
# # asset_files
# # asset_path
# # bundle_asset!
# # __wrap_write
# # psych_to_yaml
# # to_yaml
# # to_yaml_properties
# # blank?
# # present?
# # presence
# # to_json
# # nil?
