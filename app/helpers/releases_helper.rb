module ReleasesHelper
  def link_to_destroy(name, url, fallback_url, authenticity_token, id)
    link_to_function name, "confirm_destroy(this,'#{url}','#{authenticity_token}')", :href => fallback_url, :class => "delete", :id => id
  end
end
