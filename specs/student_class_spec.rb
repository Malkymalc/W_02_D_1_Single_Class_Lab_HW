require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../student_class.rb')

class StudentClassTests < MiniTest::Test

  def test_get_student_name
    #ARRANGE
    student_1 = Student.new('Tony','East 17')
    #ACT
    #ASSERT
    assert_equal('Tony', student_1.student_name)
  end

  def test_get_student_cohort
    #ARRANGE
    student_1 = Student.new('Tony','East 17')
    #ACT
    #ASSERT
    assert_equal('East 17', student_1.student_cohort)
  end

  def test_set_student_name
    #ARRANGE
    student_1 = Student.new('Tony','East 17')
    #ACT
    student_1.student_name='Brian'
    #ASSERT
    assert_equal('Brian', student_1.student_name)
  end

  def test_set_student_cohort
    #ARRANGE
    Student.new('Tony','East 17')
    #ACT
    student_cohort='Walthamstow'
    #ASSERT
    assert_equal('Walthamstow', student_cohort)
  end

  def test_student_talks
    #ARRANGE
    student_1 = Student.new('Tony','East 17')
    #ACT
    ####################
    #ASSERT
    assert_equal('I have words!', student_1.student_talks)
  end

  def test_set_student_fav_lang
    #ARRANGE
    student_1 = Student.new('Tony','East 17')
    #ACT
    #student_fav_lang('Ruby')
    #ASSERT
    assert_equal('I love Ruby!', student_1.student_fav_lang('Ruby'))
  end

end
