defmodule ContextAppWeb.CMS.PageView do
  use ContextAppWeb, :view
  alias ContextApp.CMS

  def author_name(%CMS.Page{author: author}) do
    author.user.name
  end
end