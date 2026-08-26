enum BuildVariant {
    #if OFFLINE
    static let isOffline = true
    static let displayName = "macshot Offline"
    #else
    static let isOffline = false
    static let displayName = "macshot"
    #endif
}
