# Báo cáo về Docker và Docker Compose

## 1. Giới thiệu

Docker và Docker Compose là các công cụ quan trọng trong việc triển khai và quản lý ứng dụng container. Chúng cho phép các nhà phát triển đóng gói và quản lý các ứng dụng phức tạp, từ đó giảm thiểu các vấn đề liên quan đến môi trường triển khai.

## 2. Docker là gì?

Docker là một nền tảng mã nguồn mở cho phép bạn tự động hóa việc triển khai các ứng dụng trong các container. Một container là một môi trường gói gọn, chứa tất cả các phần mềm, thư viện và mã nguồn cần thiết để chạy ứng dụng. Điều này giúp ứng dụng trở nên nhất quán khi triển khai trên các môi trường khác nhau.

### 2.1 Lợi ích của Docker

- **Tính di động**: Ứng dụng trong container có thể chạy trên bất kỳ hệ điều hành nào hỗ trợ Docker mà không gặp vấn đề về môi trường.
- **Hiệu suất cao**: Docker sử dụng ít tài nguyên hơn so với các máy ảo truyền thống.
- **Dễ dàng quản lý phiên bản**: Docker cung cấp cách dễ dàng để theo dõi các phiên bản và cập nhật.

### 2.2 Kiến trúc của Docker

Docker có ba thành phần chính:
- **Docker Client**: Là giao diện người dùng tương tác với Docker.
- **Docker Daemon**: Chịu trách nhiệm quản lý các container.
- **Docker Hub**: Kho lưu trữ trực tuyến các image để người dùng có thể tải về hoặc đẩy lên.

## 3. Docker Compose là gì?

Docker Compose là một công cụ cho phép bạn định nghĩa và quản lý nhiều container trong một file YAML duy nhất. Nó giúp khởi chạy các dịch vụ đa container với một lệnh duy nhất. Compose rất hữu ích trong các ứng dụng có nhiều thành phần như web server, database, cache, v.v.

### 3.1 File cấu hình `docker-compose.yml`

File `docker-compose.yml` là nơi bạn định nghĩa các dịch vụ cần khởi động, bao gồm thông tin về image, volume, network, và môi trường cho mỗi dịch vụ.

Ví dụ một file `docker-compose.yml` đơn giản:

```yaml
version: '3'
services:
  web:
    image: nginx
    ports:
      - "80:80"
  db:
    image: mysql
    environment:
      MYSQL_ROOT_PASSWORD: example
