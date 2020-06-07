protocol Tagable { }

extension Tagable {
    func setTag( key: inout String, value: Any) {
        objc_setAssociatedObject(self, &key, value, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }
    
    func getTag( key: inout String) -> Any? {
        return objc_getAssociatedObject(self, &key)
    }
}
