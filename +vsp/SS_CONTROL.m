function v = SS_CONTROL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 395);
  end
  v = vInitialized;
end
