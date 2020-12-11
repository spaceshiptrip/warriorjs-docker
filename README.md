1. Build Dockerfile:
   ```
   docker build -t simple .
   ```
1. Run Dockerfile:
   ```
   docker run -d -v ${PWD}:/app -v /app/node_modules -p 8080:3000 --name foo --rm simple
   ```
1. Test with cURL command:
   ```
   curl -i localhost:8080
   ```

