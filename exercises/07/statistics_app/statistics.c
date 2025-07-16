#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <stdbool.h>

#define MAX_IRQ_LINES 16

typedef struct {
    unsigned int count;             // Number of events for this IRQ line
    unsigned long total_latency;    // Sum of latencies for this IRQ line
    unsigned int max_latency;       // Maximum latency for this IRQ line
} LineStats;

volatile bool running = true;       // Global flag for SIGINT handling

// Signal handler for SIGINT
void handle_sigint(int sig) {
    running = false; // Set the flag to terminate the reading loop
}

// Main function
int main() {
    LineStats stats[MAX_IRQ_LINES] = {0}; // Initialize statistics array for each IRQ line
    unsigned int total_count = 0;         // Total number of events
    unsigned long total_latency = 0;      // Total latency across all IRQ lines
    unsigned int overall_max_latency = 0; // Maximum latency across all IRQ lines

    char buffer[100]; // Buffer for reading input
    unsigned int irq_line, latency;
    unsigned long long timestamp;

    // Register the signal handler for SIGINT
    signal(SIGINT, handle_sigint);

    printf("Reading IRQ events. Press Ctrl+C to stop.\n");

    // Reading loop
    while (running && fgets(buffer, sizeof(buffer), stdin)) {
        // Parse each line in the format: <irq_line>,<latency>,<timestamp>
        if (sscanf(buffer, "%u,%u,%llu", &irq_line, &latency, &timestamp) == 3) {
            if (irq_line >= MAX_IRQ_LINES) continue; // Ignore invalid IRQ lines

            // Update statistics for the specific IRQ line
            stats[irq_line].count++;
            stats[irq_line].total_latency += latency;
            if (latency > stats[irq_line].max_latency) {
                stats[irq_line].max_latency = latency;
            }

            // Update overall statistics
            total_count++;
            total_latency += latency;
            if (latency > overall_max_latency) {
                overall_max_latency = latency;
            }
        }
    }

    // Print statistics for each IRQ line
    printf("\nIRQ Line Statistics:\n");
    for (int i = 0; i < MAX_IRQ_LINES; i++) {
        if (stats[i].count > 0) {
            printf("%d,%u,%.2f,%u\n", i, stats[i].count,
                   (double)stats[i].total_latency / stats[i].count,
                   stats[i].max_latency);
        }
    }

    // Print overall statistics
    printf("-1,%u,%.2f,%u\n", total_count,
           (double)total_latency / total_count,
           overall_max_latency);

    return 0;
}

