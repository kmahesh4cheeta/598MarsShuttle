function v = PATCH_COPY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 313);
  end
  v = vInitialized;
end
