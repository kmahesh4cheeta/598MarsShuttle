function v = CONST_W()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 391);
  end
  v = vInitialized;
end
