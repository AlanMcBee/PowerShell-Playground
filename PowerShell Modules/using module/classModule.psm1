class ModuleClass {
    [string] $Property = 'OK'

    ModuleClass ([string] $newProperty) {
        $this.Property = $newProperty
    }
}