# UniTimetable Widget

UniTimetable is a macOS widget application that displays a university timetable as a static or dynamic image. The app also allows users to view the timetable in full-screen when interacting with the widget.

---

## Features

- **Dynamic Widget**: The widget resizes to full-screen when clicked, providing an expanded view of the timetable.
- **Custom Timetable Display**: Displays a university timetable image in a visually appealing format with rounded corners and a frosted glass background.
- **Static and Dynamic Views**: Offers both static and interactive elements within the widget.

---

## Getting Started

### Prerequisites

- macOS Sequoia 15+ 
- Xcode 15 or higher
- Swift 5.9 or higher

---

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/UniTimetable.git
   cd UniTimetable
   ```

2. Open the project in Xcode:
   ```bash
   open UniTimetable.xcodeproj
   ```

3.    Build and run the project:
- Select the appropriate scheme for the widget.
- Press Cmd + R to build and run.


## Usage
1. **Add the Widget**:
- Open the macOS widget gallery and add the UniTimetable Widget.
2. **Customize Your Timetable**:
- Replace the placeholder Timetable image with your actual university timetable. Add the image to the Assets.xcassets folder in Xcode.

## Project Structure
- UniTimetableApp: The main application containing the full-screen timetable viewer.
- UniTimetableWidget: The widget module displaying the timetable in a compact format.
- ContentView.swift: The primary SwiftUI view for the app.

## Development

### Customization
- Widget Background: Modify the .containerBackground property in UniTimetableWidgetEntryView to update the widget background.
- Dynamic Timeline: Implement dynamic timeline entries in UniTimetableProvider for more interactive content.

### Future Enhancements
- Enable syncing with university calendar APIs.
- Add support for multiple timetable layouts.
- Include themes or custom color options.

## Contributing

Contributions are welcome! Follow these steps:
1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature/new-feature
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add new feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/new-feature
   ```
5. Open a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgments
- macOS WidgetKit documentation.
- SwiftUI community for providing excellent resources.
