function v = BLEND_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 473);
  end
  v = vInitialized;
end
