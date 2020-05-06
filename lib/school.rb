class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names,
              :standard_student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @standard_student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    end_time = start_time.to_i + hours_in_school_day
    end_time = "#{end_time}:00"
  end

  def is_full_time?
    @hours_in_school_day >= 4
  end

  def standard_student_names
    @student_names.each do |name|
      @standard_student_names << name.capitalize
    end
    @standard_student_names
  end


end
