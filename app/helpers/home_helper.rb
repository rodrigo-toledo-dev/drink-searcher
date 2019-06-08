module HomeHelper
  def options_for_destilled
    [
      [t(:yes), 0 ],
      [t(:no), 1]
    ]
  end

  def options_for_origin
    Drink.select(:origin).group(:origin).order(:origin).pluck(:origin)
  end
end
