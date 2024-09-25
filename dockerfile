# Sử dụng node image chính thức
FROM node:16-alpine

# Đặt thư mục làm việc trong container
WORKDIR /app

# Sao chép file package.json và package-lock.json vào thư mục làm việc
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn của ứng dụng vào container
COPY . .

# Build ứng dụng cho production
RUN npm run build

# Sử dụng nginx để phục vụ ứng dụng
FROM nginx:1.21-alpine
COPY --from=0 /app/build /usr/share/nginx/html

# Expose port 80 để truy cập
EXPOSE 80

# Lệnh khởi động nginx khi container chạy
CMD ["nginx", "-g", "daemon off;"]
