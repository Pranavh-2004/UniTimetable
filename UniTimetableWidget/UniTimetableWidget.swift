import WidgetKit
import SwiftUI

// Define the data model for the widget's timeline entry
struct UniTimetableEntry: TimelineEntry {
    let date: Date
}

// Define the provider for the widget's timeline
struct UniTimetableProvider: TimelineProvider {
    // Placeholder entry used in the widget gallery
    func placeholder(in context: Context) -> UniTimetableEntry {
        print("Widget placeholder called")
        return UniTimetableEntry(date: Date())
    }

    // Snapshot entry used when the widget loads briefly
    func getSnapshot(in context: Context, completion: @escaping (UniTimetableEntry) -> Void) {
        print("Widget snapshot called")
        let entry = UniTimetableEntry(date: Date())
        completion(entry)
    }

    // Timeline for the widget
    func getTimeline(in context: Context, completion: @escaping (Timeline<UniTimetableEntry>) -> Void) {
        print("Widget timeline called")
        let entry = UniTimetableEntry(date: Date())
        let timeline = Timeline(entries: [entry], policy: .never) // Static content
        completion(timeline)
    }
}

// Define the SwiftUI view for the widget
struct UniTimetableWidgetEntryView: View {
    var entry: UniTimetableProvider.Entry

    var body: some View {
        VStack {
            Image("Timetable") // Ensure this image exists in Assets.xcassets
                .resizable()
                .scaledToFit() // Maintain the aspect ratio
                .clipShape(RoundedRectangle(cornerRadius: 10)) // Rounded edges
        }
        .padding()
        .containerBackground(for: .widget) { // Apply the background using the correct modifier
            Color.clear // Background color
        }
    }
}

struct UniTimetableWidget: Widget {
    let kind: String = "UniTimetableWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: UniTimetableProvider()) { entry in
            UniTimetableWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("University Timetable")
        .description("Displays your university timetable as a static image.")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge]) // Add desired widget sizes
    }
}
