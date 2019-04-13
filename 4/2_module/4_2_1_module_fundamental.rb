module Sweet
  def self.lot
    %w(brownie apple-pie bavaroirs pudding).sample
  end
end

Sweet::lot # => "brownie"
Sweet::lot # => "bavaroirs"