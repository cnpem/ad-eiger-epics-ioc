dbpf "$(PREFIX)cam1:DataSource" "FileWriter"
dbpf "$(PREFIX)cam1:StreamDecompress" "Disable"
dbpf "$(PREFIX)cam1:CompressionAlgo" "BS LZ4"

dbpf "$(PREFIX)cam1:FWEnable" "Enable"
dbpf "$(PREFIX)cam1:FWHDF5Format" "$(HDF5_FORMAT=v2024.2)"
dbpf "$(PREFIX)cam1:SaveFiles" "Enable"
dbpf "$(PREFIX)cam1:FWAutoRemove" "Enable"

dbpf "$(PREFIX)image1:EnableCallbacks" 1

dbpf "$(PREFIX)PVA1:EnableCallbacks" 1
