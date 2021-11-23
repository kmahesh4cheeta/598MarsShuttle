function v = SYM_RL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 407);
  end
  v = vInitialized;
end
