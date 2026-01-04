class Stat < ApplicationRecord
  def self.current_count
    first_or_create!(viewer_count: 0).viewer_count
  end

  def self.increment
    update_all("viewer_count = viewer_count + 1")
  end

  def self.decrement
    where("viewer_count > 0").update_all("viewer_count = viewer_count - 1")
  end

  def self.reset_counter
    first_or_create.update(viewer_count: 0)

    Turbo::StreamsChannel.broadcast_update_to(
      "viewers_stream",
      target: "viewer_count_display",
      content: "0"
    )
  end
end
