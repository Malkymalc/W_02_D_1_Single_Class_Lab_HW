class Student
  def initialize(name, cohort)
    @student_name = name
    @student_cohort = cohort
    @fav_lang = ""
  end


  attr_accessor :student_name, :student_cohort

  def student_talks
    return "I have words!"
  end

  def student_fav_lang(fav_lang)
    @fav_lang = fav_lang
    return "I love #{fav_lang}!"
  end

end
