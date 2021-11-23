function v = SYM_ROT_Z()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 403);
  end
  v = vInitialized;
end
