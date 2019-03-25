# Packer Builds

#### Build Ubuntu Image
```
packer validate -var-file ubuntu1604.json ubuntu.json
packer build    -var-file ubuntu1604.json ubuntu.json
```

#### Build Windows Image
```
packer validate windows_2012_r2.json
packer build    windows_2012_r2.json
```