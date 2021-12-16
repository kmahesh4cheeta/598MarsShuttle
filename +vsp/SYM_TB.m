function v = SYM_TB()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 408);
  end
  v = vInitialized;
end
