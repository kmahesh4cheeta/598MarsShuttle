function geomid = FindGeomNamed(name)
    geomcell = vsp.FindGeomsWithName(name);
    geomid = geomcell{1};
end