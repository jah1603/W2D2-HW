class Bear

attr_reader(:name, :type, :stomach)

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = stomach
  end

  def roar_method()
    return "Grrrrr..."
  end

  def count_fish_in_stomach()
    return @stomach.length()
  end

  def fish_taken(river)
    @stomach.push river.fish.delete_at(1)
  end


end
