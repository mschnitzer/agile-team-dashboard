module ApplicationHelper
  def new_link_to(resource, text = 'new')
    url = url_for(action: :new, controller: resource)
    link_to text, url, class: 'ui right floated inverted green button'
  end

  def gravatar(url, alt = 'gravatar')
    image_tag url, class: 'ui avatar image mini', alt: alt
  end

  def github_link_to(login)
    url = "https://github.com/#{login}"
    link_to url, target: :_blank do
      raw [ content_tag(:i, '', class:'github icon'), login ].join('')
    end
  end
end
