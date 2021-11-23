function v = ATMOS_TYPE_MANUAL_R_T()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 10);
  end
  v = vInitialized;
end
