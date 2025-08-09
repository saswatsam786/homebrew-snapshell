# SnapShell Homebrew Tap

This is the official [Homebrew](https://brew.sh) tap for [SnapShell](https://github.com/saswatsam786/snapshell) - a real-time ASCII video sharing application via WebRTC in your terminal.

## Installation

```bash
# Add the tap
brew tap saswatsam786/snapshell

# Install SnapShell
brew install snapshell
```

Or install directly in one command:
```bash
brew install saswatsam786/snapshell/snapshell
```

## About SnapShell

SnapShell converts live webcam video to ASCII art in real-time and shares it through WebRTC peer-to-peer connections. Perfect for terminal-based video sharing!

### Features

- 🎥 Real-time webcam streaming with ASCII art conversion
- 📡 WebRTC peer-to-peer connections
- 🌐 Production signaling server at `https://snapshell.onrender.com`
- 🖥️ Smart terminal adaptation and scaling
- ⚡ Multiple connection modes (signaled, auto, manual)

### Quick Start

After installation:

```bash
# Start video sharing session (offerer)
snapshell -signaled-o --room demo123 --server https://snapshell.onrender.com

# Join video session (answerer)  
snapshell -signaled-a --room demo123 --server https://snapshell.onrender.com
```

## Requirements

- **macOS**: Homebrew automatically installs OpenCV and other dependencies
- **Webcam**: SnapShell requires a webcam to capture video
- **Go**: Automatically installed as a build dependency

## Links

- **Main Repository**: https://github.com/saswatsam786/snapshell
- **Documentation**: Available in the main repository's README
- **Issues**: Report issues at https://github.com/saswatsam786/snapshell/issues

## License

MIT License - see the main repository for details.
