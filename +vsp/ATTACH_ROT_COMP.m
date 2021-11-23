function v = ATTACH_ROT_COMP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 16);
  end
  v = vInitialized;
end
