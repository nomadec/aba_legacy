defmodule AbaWeb.ServiceView do
  use AbaWeb, :view
  alias AbaWeb.ServiceView

  def render("index.json", %{services: services}) do
    %{data: render_many(services, ServiceView, "service.json")}
  end

  def render("show.json", %{service: service}) do
    %{data: render_one(service, ServiceView, "service.json")}
  end

  def render("service.json", %{service: service}) do
    %{id: service.id,
      name: service.name,
      provider_id: service.provider_id,
      price: service.price,
      duration: service.duration,
      location: service.location,
      description: service.description}
  end
end