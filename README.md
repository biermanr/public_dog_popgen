# public_dog_popgen
Dog popgen

## To create a new WDL workflow
1. Make the .wdl file, such as `pca.wdl`
2. Edit the `.dockstore.yml` to add the new WDL. For example
if the current `.dokstore.yml` looks like:
```yaml
version: 1.2
workflows:
  - subclass: WDL
    name: test
    primaryDescriptorPath: /test.wdl
```

then add the following lines:
```yaml
version: 1.2
workflows:
  - subclass: WDL
    name: test
    primaryDescriptorPath: /test.wdl
  - subclass: WDL
    name: pca
    primaryDescriptorPath: /pca.wdl
```

3. Then `git add` and `git push` the changes

4. Go to Dockstore