function v = DELIM_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 129);
  end
  v = vInitialized;
end
