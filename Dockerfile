FROM mcr.microsoft.com/playwright:v1.56.1-noble

# Copy a small entrypoint that forwards args to npx playwright run-server
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--port", "3000", "--host", "0.0.0.0", "--path", "/ws"]
