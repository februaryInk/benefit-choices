module ApplicationHelper
  include FormsHelper

  # Create a link for dynamically removing fields for a has_many relationship.
  def link_to_remove_fields(name, path, classy = '')
    link_to name, path, class: 'link-to-remove-fields ' + classy
  end
  
  # Agent Medi-Share landing page URL.
  def medi_share_information_url
    'https://www.htfshare.com/#/00531000007wbDqAAI'
  end
  
  # Medi-Share provider search URL.
  def medi_share_providers_url
    'https://www.multiplan.com/search/search-2.cfm?originator=84499'
  end
  
  # Agent Medi-Share registration URL.
  def medi_share_registration_url
    'https://www.htfshare.com/#/00531000007wbDqAAI/apply'
  end
  
  # Medicare's official website.
  def medicare_home_url
    'https://www.medicare.gov'
  end
end
