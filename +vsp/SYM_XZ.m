function v = SYM_XZ()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 399);
  end
  v = vInitialized;
end
