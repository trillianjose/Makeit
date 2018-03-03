require './actor'
class Tv

  def initialize(channels, size, resolution)
    @channels = channels
    @size = size
    @resolution = resolution
  end

  def turn_on
    "TV is tuned on now."
  end

  def turn_off
    "Bye!"
  end

  def change_channel(new_channel)
    if (1..@channels).include?(new_channel)
      "Changing to " + new_channel + "channel"
    else
      "Channel not available"
    end
  end

  def actor
    @actor ||= Actor.new("Alexander", "Action movie")
  end

  def find_actor_movie(actor, channels)
    if (1..@channels).include?(actor)
      "Changing to movie that include " + actor
    else
      "No channel have a movie including " + actor
    end
  end
end
