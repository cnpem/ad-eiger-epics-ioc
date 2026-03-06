dbpf "$(PREFIX)Codec1:EnableCallbacks" 1
dbpf "$(PREFIX)Codec1:Mode" "Decompress"

dbpf "$(PREFIX)ROI1:EnableCallbacks" 1

dbpf "$(PREFIX)image1:EnableCallbacks" 1

dbpf "$(PREFIX)HDF1:EnableCallbacks" 1
dbpf "$(PREFIX)HDF1:FilePath" "/tmp"
dbpf "$(PREFIX)HDF1:FileName" "testPilatus"
dbpf "$(PREFIX)HDF1:AutoIncrement" 1
dbpf "$(PREFIX)HDF1:FileTemplate" "%s%s_%3.3d.h5"
dbpf "$(PREFIX)HDF1:FileWriteMode" Stream
