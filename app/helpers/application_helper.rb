module ApplicationHelper

  def sample_b_color
    colors = ["primary", "secondary", "success",
    "danger", "warning", "info", "dark"]
    @color = colors.sample
  end

end
