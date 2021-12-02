class CreateRequestsIp < ActiveRecord::Migration[6.1]
  def change
    create_table :requests_ips do |t|
      t.string :request_ipver4
      t.timestamps
    end
  end
end
