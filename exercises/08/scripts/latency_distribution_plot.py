#!/usr/bin/python3.6
import csv
import numpy as np
import matplotlib.pyplot as plt
import os

def analyze_irq_latency(csv_files):
    fig, ax = plt.subplots(figsize=(12, 6))

    for i, csv_file in enumerate(csv_files):
        latencies = []
        with open(csv_file, 'r') as file:
            reader = csv.reader(file)
            for row in reader:
                if len(row) == 3:
                    irq_line, latency, timestamp = map(int, row)
                    latencies.append(latency)
                else:
                    print(f"Skipping row with invalid data in {csv_file}: {row}")

        if not latencies:
            print(f"No valid data found in {csv_file}.")
            continue

        # Calculate latency statistics
        latencies.sort()
        total_count = len(latencies)

        # Calculate the percentage of IRQs for each latency value
        unique_latencies, counts = np.unique(latencies, return_counts=True)
        percentages = (counts / total_count) * 100

        # Plot the data with different colors
        color = f'C{i}'
        ax.plot(unique_latencies, percentages, color=color, label=os.path.basename(csv_file))

    ax.set_xlabel('Latency (ns)')
    ax.set_ylabel('Percentage of IRQs')
    ax.set_title('Latency Distribution for IRQ Line')
    # Limiting the x-axis
    ax.set_xlim(0, 5000)
    ax.grid(True)
    ax.legend()

    return fig

# Example usage
csv_files = ['latencies_no-RT_no-t.csv', 'latencies_RT_no-t.csv', 'latencies_RT-tuned_no-t.csv']
latency_plot = analyze_irq_latency(csv_files)
latency_plot.savefig('irq_latency_plot.png')

csv_files = ['latencies_no-RT_t.csv', 'latencies_RT_t.csv', 'latencies_RT-tuned_t.csv']
latency_plot = analyze_irq_latency(csv_files)
latency_plot.savefig('irq_latency_plot_torture.png')
print('Latency plot saved as irq_latency_plot.png')
