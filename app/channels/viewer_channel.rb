class ViewerChannel < Turbo::StreamsChannel
  def subscribed
    super
    Stat.increment
    broadcast_to_viewers
  end

  def unsubscribed
    Stat.decrement
    broadcast_to_viewers
  end

  private

  def broadcast_to_viewers
    Turbo::StreamsChannel.broadcast_update_to(
      "viewers_stream",
      target: "viewer_count_display",
      content: Stat.current_count.to_s
    )
  end
end
