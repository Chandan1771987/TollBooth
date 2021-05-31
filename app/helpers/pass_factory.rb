class PassFactory
  def self.get_pass(type:)
    #override the validations in the individual pass classes, (Single, Both and WeeklyClasses)
    if type == 'single'
      SinglePass.first
    elsif type == 'both'
      ReturnPass.first
    elsif type == 'weekly'
      WeeklyPass.first
    end
  end
end