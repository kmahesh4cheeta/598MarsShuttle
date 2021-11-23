function v = ATMOS_TYPE_MANUAL_P_T()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 9);
  end
  v = vInitialized;
end
