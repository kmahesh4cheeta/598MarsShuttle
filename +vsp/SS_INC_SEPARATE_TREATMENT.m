function v = SS_INC_SEPARATE_TREATMENT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 385);
  end
  v = vInitialized;
end
