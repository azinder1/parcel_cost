class Parcel
  define_method(:initialize) do |length, width, height, miles, service|
    @length = length
    @width = width
    @height = height
    @miles = miles
    @service = service
  end
  define_method(:volume) do
    total_volume = @length * @width * @height
  end
  define_method(:cost_to_ship) do
    total_price = 0
    if @service == "Snails Pace"
      total_price = (volume * 20) * 1 + (@miles * 0.05)
    elsif @service == "Donkey Back"
      total_price = (volume * 20) * 2 + (@miles * 0.05)
    else
      total_price = (volume * 20) * 10 + (@miles * 0.05)
    end
    '%.2f' % total_price
  end
end
