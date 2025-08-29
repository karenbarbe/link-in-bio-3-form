class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor
    @query_link_url = params.fetch("query_link_url")
    @query_link_description = params.fetch("query_link_description")
    @query_thumbnail_url = params.fetch("query_thumbnail_url")

    render({ :template => "item_templates/backdoor_form" })
  end

  def insert_item
  end
end
