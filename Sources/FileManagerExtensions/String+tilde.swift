
extension String {

    /// returns an tilde in the string if it has an index of 0
    ///
    /// - :Returns tilde character as a string
    public var tilde: String? {

        guard let tilde = self.first , tilde == "~" else { return nil }

        return String(tilde)

    }

}