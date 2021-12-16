function v = ATMOS_TYPE_US_STANDARD_1976()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 6);
  end
  v = vInitialized;
end
