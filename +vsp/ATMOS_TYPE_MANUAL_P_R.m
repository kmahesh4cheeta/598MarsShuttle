function v = ATMOS_TYPE_MANUAL_P_R()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 8);
  end
  v = vInitialized;
end
