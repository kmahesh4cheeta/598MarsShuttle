function v = SYM_XY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 398);
  end
  v = vInitialized;
end
