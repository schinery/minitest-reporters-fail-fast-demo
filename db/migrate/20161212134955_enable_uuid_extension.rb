class EnableUuidExtension < ActiveRecord::Migration[5.0]
  def change
    enable_extension "uuid-ossp"# if Rails.env.development? || Rails.env.test?
  end
end
