function v = SS_LINE_ARRAY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 396);
  end
  v = vInitialized;
end
