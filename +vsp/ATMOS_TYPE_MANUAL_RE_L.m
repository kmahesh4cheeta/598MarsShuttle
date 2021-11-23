function v = ATMOS_TYPE_MANUAL_RE_L()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 11);
  end
  v = vInitialized;
end
