function v = BEZIER_AF_EXPORT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 3);
  end
  v = vInitialized;
end
