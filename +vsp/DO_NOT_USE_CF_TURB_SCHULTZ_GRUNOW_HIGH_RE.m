function v = DO_NOT_USE_CF_TURB_SCHULTZ_GRUNOW_HIGH_RE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 89);
  end
  v = vInitialized;
end
