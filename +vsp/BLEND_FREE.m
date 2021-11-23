function v = BLEND_FREE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 465);
  end
  v = vInitialized;
end
