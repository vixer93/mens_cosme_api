class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.2]
  def change

    # create_table(:users) do |t|
      ## Required
      # t.string :provider, :null => false, :default => "email"
      add_column :users, :provider, :string, :null => false, :default => "email"
      # t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      # t.string :encrypted_password, :null => false, :default => ""
      add_column :users, :encrypted_password, :string, :null => false, :default => ""

      ## Recoverable
      # t.string   :reset_password_token
      add_column :users, :reset_password_token, :string
      # t.datetime :reset_password_sent_at
      add_column :users, :reset_password_sent_at, :datetime
      # t.boolean  :allow_password_change, :default => false
      add_column :users,:allow_password_change, :boolean, :default => false

      ## Rememberable
      # t.datetime :remember_created_at
      add_column :users, :remember_created_at, :datetime

      ## Confirmable
      # t.string   :confirmation_token
      add_column :users, :confirmation_token, :string
      # t.datetime :confirmed_at
      add_column :users, :confirmed_at, :datetime
      # t.datetime :confirmation_sent_at
      add_column :users, :confirmation_sent_at, :datetime
      # t.string   :unconfirmed_email # Only if using reconfirmable
      add_column :users, :unconfirmed_email, :string

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      # t.integer  :sign_in_count, default: 0, null: false
      add_column :users, :sign_in_count, :integer, default: 0, null: false
      # t.datetime :current_sign_in_at
      add_column :users, :current_sign_in_at, :datetime
      # t.datetime :last_sign_in_at
      add_column :users, :last_sign_in_at, :datetime
      # t.string   :current_sign_in_ip
      add_column :users, :current_sign_in_ip, :string
      # t.string   :last_sign_in_ip
      add_column :users, :last_sign_in_ip, :string

      ## User Info
      # t.string :name
      # t.string :nickname
      # t.string :image
      # t.string :email

      ## Tokens
      # t.text :tokens
      add_column :users, :tokens, :text

      # t.timestamps
    # end

    add_index :users, :email,                unique: true
    add_index :users, [:uid, :provider],     unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,       unique: true
  end
end
