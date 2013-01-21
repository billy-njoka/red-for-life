module ApplicationHelper
def logo
image_tag("logo.png", :alt => "	IEOSS", id: "logo")
end

# Return a title on a per-page basis.
def title
base_title = "ieoss"
if @title.nil?
base_title
else
"#{base_title} | #{@title}"
end
end
end

