function v = ATTACH_ROT_UV()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 17);
  end
  v = vInitialized;
end
