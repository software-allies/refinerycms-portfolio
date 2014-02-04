module Refinery
  module Portfolio
    include ActiveSupport::Configurable

    config_accessor :items_per_page, :cover_image_thumb_size, :skitter_options,
                    :display_item_text, :display_gallery_text, :description

    self.items_per_page = 20
    self.cover_image_thumb_size = '300x200'

    # Be sure to see http://thiagosf.net/projects/jquery/skitter/ for terrible documentation.
    self.skitter_options = {
      :interval => 5000,            # Duration of slides in ms
      :animation => :circles,       # Animation to use
      :numbers => true,             # Use number-based nav
      :dots => false,               # Use dot-based nav
      :navigation => true,          # Show navigation
      :hideTools => false,          # Hide tools (?)
      :fullscreen => false,         # Use fullscreen (no support, caveat spector)
      :numbers_align => :center     # Nav placement (left, right, center)
      # :structure => ""            # Use this to override the HTML if utterly necessary.
    }

    self.description = "Some description"
    self.display_item_text = true
    self.display_gallery_text = true
  end
end
