require "administrate/base_dashboard"

class DaycareDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    rooms: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    street1: Field::String,
    street2: Field::String,
    city: Field::String,
    state: Field::String,
    zip_code: Field::String,
    logo_url: Field::String,
    description: Field::Text,
    price: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :rooms,
    :id,
    :name,
    :street1,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :rooms,
    :name,
    :street1,
    :street2,
    :city,
    :state,
    :zip_code,
    :logo_url,
    :description,
    :price,
  ]

  # Overwrite this method to customize how daycares are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(daycare)
  #   "Daycare ##{daycare.id}"
  # end
end
