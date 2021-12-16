function v = SS_LINE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 392);
  end
  v = vInitialized;
end
