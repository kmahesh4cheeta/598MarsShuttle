function v = SS_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 397);
  end
  v = vInitialized;
end
