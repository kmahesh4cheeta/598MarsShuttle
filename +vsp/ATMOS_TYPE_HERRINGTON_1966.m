function v = ATMOS_TYPE_HERRINGTON_1966()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 7);
  end
  v = vInitialized;
end
