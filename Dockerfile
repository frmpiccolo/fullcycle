# Start from a scratch (empty) image
FROM scratch

# Copy the Go binary
COPY challenge /

# Run the binary
CMD ["/challenge"]
