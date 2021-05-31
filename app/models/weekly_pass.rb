class WeeklyPass < Pass
  default_scope  -> {where(p_type: 'weekly')}
  #override validation
  def expires_at
    Time.now + 7.days
  end
end