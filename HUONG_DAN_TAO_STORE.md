# 🏪 Hướng Dẫn Thiết Lập Kho Ứng Dụng Public (Bảo Mật 100% Mã Nguồn)

Tài liệu này hướng dẫn bạn cách tạo một kho lưu trữ ứng dụng **hoàn toàn công khai (Public)** để phân phối các ứng dụng cho ESP32 mà **không bao giờ để lộ mã nguồn C++ gốc** (Repo mã nguồn gốc giữ ở chế độ **Private**).

---

## 🔒 Nguyên Lý Bảo Mật Tuyệt Đối:
- **Repo 1 (Private - Riêng tư):** `https://github.com/Ruclua99/esp32` (Chứa toàn bộ mã nguồn C++, file `.cpp`, `.h`, `.ino`). Chỉ một mình bạn truy cập được.
- **Repo 2 (Public - Công khai):** `https://github.com/Ruclua99/esp32-store` (Chỉ chứa các file nhị phân đã biên dịch `.bin` và file `store_manifest.json`). Người dùng chỉ tải được file máy chạy, **không thể xem hay sửa mã nguồn gốc**.

---

## 🚀 Các Bước Tạo Kho Ứng Dụng (Mất 3 Phút):

### Bước 1: Tạo Repository Public Mới Trên GitHub
1. Truy cập [GitHub](https://github.com) -> Bấm **New Repository**.
2. Đặt tên repository: **`esp32-store`**.
3. Chọn chế độ: **Public**.
4. Tích chọn **Add a README file** -> Bấm **Create repository**.

---

### Bước 2: Xuất File Nhị Phân `.bin` Từ Arduino IDE
Bất cứ khi nào bạn viết xong một ứng dụng mới cho ESP32:
1. Mở code ứng dụng đó trong **Arduino IDE**.
2. Trên thanh menu, chọn: **`Sketch` -> `Export Compiled Binary`** (hoặc phím tắt `Ctrl + Alt + S`).
3. Arduino IDE sẽ tự động tạo ra file `.bin` nằm trong thư mục `build/` của dự án (ví dụ: `app_power_node.ino.bin`).
4. Bạn đổi tên file cho gọn gàng (ví dụ: `app_power_node_v1.2.0.bin`).

---

### Bước 3: Đưa File `.bin` Lên Repo `esp32-store`
Có 2 cách rất đơn giản:

#### Cách 1: Đăng qua GitHub Releases (Khuyên Dùng)
1. Vào repo `esp32-store` trên GitHub -> Bấm **Releases** (ở cột bên phải) -> Bấm **Create a new release**.
2. Đặt Tag: `v1.0.0`, Tiêu đề: `Bản phát hành ứng dụng v1.0.0`.
3. Kéo thả file `.bin` vào ô đính kèm -> Bấm **Publish release**.
4. Click chuột phải vào file `.bin` vừa upload -> Chọn **Copy link address** (đây chính là `download_url`).

#### Cách 2: Upload trực tiếp vào thư mục `binaries/`
1. Tạo thư mục `binaries/` trong repo `esp32-store`.
2. Upload các file `.bin` vào thư mục này. Link tải trực tiếp sẽ có dạng:
   ```text
   https://raw.githubusercontent.com/Ruclua99/esp32-store/main/binaries/app_name.bin
   ```

---

### Bước 4: Cập Nhật File `store_manifest.json`
1. Copy nội dung từ file mẫu [**`store/store_manifest.json`**](file:///c:/Users/hoang/github/esp32/store/store_manifest.json) và dán vào repo `esp32-store`.
2. Điền link `download_url` tương ứng với các app của bạn.
3. Khi bạn cập nhật hoặc thêm app mới vào file JSON này, **tất cả các thiết bị ESP32 của người dùng trên toàn thế giới sẽ tự động thấy app mới và có thể bấm Cài Đặt 1-Click ngay lập tức**!

---

## ⚡ Ưu Điểm Tuyệt Vời:
- ✅ **Giữ 100% Cấu Hình Wi-Fi:** Khi cài bất kỳ app nào từ Store, ESP32 sẽ tự khởi động lại và kết nối ngay vào Wi-Fi cũ của người dùng (nhờ lưu trong phân vùng Flash NVS).
- ✅ **Không Giới Hạn Số Lượng App:** Bạn có thể tạo hàng chục ứng dụng chạy trên các cổng mạng khác nhau (`2405`, `3000`, `5000`, `8080`...).
- ✅ **Miễn Phí 100%:** Băng thông lưu trữ trên GitHub hoàn toàn miễn phí và tốc độ cao.
