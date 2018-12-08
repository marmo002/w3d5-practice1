class Task

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  # READERS
  def description
    @description
  end

  def due_date
    @due_date
  end

  # WRITTERS
  def description= (description)
    @description = description
  end

  def due_date= (new_due_date)
    @due_date = new_due_date
  end
end
