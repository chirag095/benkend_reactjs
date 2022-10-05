class AddCountryCodeToLogo < ActiveRecord::Migration[6.1]
  def change
    add_column :logos, :country_code, :string
  end
end
