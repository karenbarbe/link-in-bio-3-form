class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor
    render({ :template => "item_templates/backdoor_form" })
  end

  def insert_item
    @query_link_url = params.fetch("query_link_url")
    @query_link_description = params.fetch("query_link_description")
    @query_thumbnail_url = params.fetch("query_thumbnail_url")

    new_item = Item.new
    new_item.link_url = @query_link_url
    new_item.link_description = @query_link_description
    new_item.thumbnail_url = @query_thumbnail_url
    new_item.save

    redirect_to("/")
  end
end
