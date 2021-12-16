function v = VSP_INVALID_CF_EQN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 167);
  end
  v = vInitialized;
end
