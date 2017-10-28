   func formatTime(seconds:Int) -> String{
        let hours = Int(seconds) / 3600
        let minutes = Int(seconds) / 60 % 60
        let seconds = Int(seconds) % 60

        return String(format:"%02d%@%02d%@%02d", hours,":", minutes,":", seconds)
    }
