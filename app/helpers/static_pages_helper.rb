module StaticPagesHelper

  def central_time(time)
    t = Time.parse(time.to_s)
    @time = t.in_time_zone("Central Time (US & Canada)").strftime("%D %r")
  end
end

