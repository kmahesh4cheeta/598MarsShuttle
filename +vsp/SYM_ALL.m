function v = SYM_ALL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 409);
  end
  v = vInitialized;
end
