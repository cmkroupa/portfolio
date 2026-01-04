Rails.application.config.after_initialize do
  if ActiveRecord::Base.connection.table_exists?("stats")
      Stat.reset_counter
  end
end
