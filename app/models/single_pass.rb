class SinglePass < Pass
  default_scope  -> {where(p_type: 'single')}
#override validation
  def expires_at
    Time.now + 24.hours
  end
end