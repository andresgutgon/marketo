module EmailHelpers

  PROPERTIES = {
    :email_width => 520,
    :email_padding => 30,
    :email_width_mobile => 300,
    :email_padding_mobile => 15
  }

  def get_email_property(property=nil)
    raise 'No property defined' unless PROPERTIES.keys.include? property
    PROPERTIES[property]
  end

  # This value must be the same that in [content_wrapper_styles]
  def email_width
    get_email_property(:email_width)
  end

  def email_inner_width
    get_email_property(:email_width) - (get_email_property(:email_padding)*2)
  end

  def email_width_mobile
    get_email_property(:email_width_mobile)
  end

  def email_inner_width_mobile
    get_email_property(:email_width_mobile) - (get_email_property(:email_padding_mobile)*2)
  end

  # Space horizontal/vertical in content-box
  def email_padding
    get_email_property(:email_padding)
  end

  def email_padding_mobile
    get_email_property(:email_padding_mobile)
  end

  def content_wrapper_styles
    {
      :style => "width:#{get_email_property(:email_width)}px;",
      :align => "center",
      :border => "0",
      :cellpadding => "0",
      :cellspacing => "0"}
  end

  # Colors
  def brand_blue
    "#3BA8D3"
  end
  def brand_dark_blue
    "#01698C"
  end
  def email_color_grey_background
    "#fafafa"
  end
  def soft_text_color
    "#888888"
  end

  # Text styles
  def email_global
    'font-size: 14px; color: rgb(50,50,50); font-family: Arial; margin: 20px 0; padding: 10px; background: #fafafa;'
  end
  def email_font_family
    "font-family: Arial, sans-serif;"
  end
  def header_styles
    "#{email_font_family}font-size: 28px;color: #333333;line-height: 1.3;font-weight: bold;"
  end
  def subheader_styles
    "#{email_font_family}font-size: 22px;color: #999999;line-height: 1.3;"
  end
  def body_text_style
    "#{email_font_family}font-size: 15px;color: #555555;line-height: 1.4;"
  end
  def small_text_style
    "#{email_font_family}font-size: 12px;line-height: 1.3;"
  end
  def default_parragraph
    "#{body_text_style}margin: 0 0 1em 0;padding:0;"
  end
end
