class ReturnPass < Pass
  default_scope  -> {where(p_type: 'both')}
#override validation

  def expires_at
    Time.now + 24.hours
  end
end