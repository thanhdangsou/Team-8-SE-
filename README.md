# Team-8-SE-
# Trò chơi đặt bom 2 người trời với đồ họa 2D trên nền môi trường Godot 

## 1. Giới thiệu đề tài
   -  Ý tượng dựa trên tựa game nôi tiếng Boom Online nhưng sẽ được rút gọn các tính năng để phù hợp với thường lượng hoàn thành 8 tuần.
   -  Game sẽ bao gồm 2 người chơi trong cùng 1 map, sử dụng bom và các vật phẩm kèm theo để kết liễu đối thủ.
   -  Tên đề tài đã được thống nhất: Bùm Bùm

## 2. Công nghệ sử dụng
### 2.1 Godot Engine 4.2
   Godot Engine là một trình làm game mã nguồn mở, mạnh mẽ và linh hoạt, hỗ trợ nhiều nền tảng như Windows, macOS, Linux, Android, iOS và nhiều hơn nữa. Nó cung cấp một trình chỉnh sửa trực quan, hệ thống lập trình script linh hoạt (bao gồm GDScript, một ngôn ngữ lập trình riêng của Godot), và hỗ trợ đa dạng cho nhiều loại game và ứng dụng tương tác khác nhau.

### 2.2. Godot Engine Built-in FileSystem
Godot có thể sử dụng FileSystem để lưu trữ và quản lý dữ liệu. Điều này có thể hữu ích cho việc lưu trữ cấu hình trò chơi, dữ liệu người chơi và các thông tin khác mà bạn muốn giữ lại giữa các lần chơi.

## 3. Các yếu tố cơ bản 
### 3.1. Front end
#### 3.1.1. Player 
   - Đồ họa: 2D
   - Tên Player được đặt cố định từ đầu theo tên nhân vật 
      góc nhìn từ trên xuống (top-down)
   - Mỗi người chơi có 2 mạng, có thể tăng thêm nhờ vào thu thập vật phẩm hỗ trợ 
	
#### 3.1.2. Map 
Sẽ gồm background ở đằng sau và các block mà người chơi có thể hoặc không thể phá được 
a) Background
nét vẽ mang xu hướng pixel 
b) Block
	Gồm 2 loại là không phá được (tường, bom) và phá được 
- Tường: là một phần của bản đồ, người chơi chỉ có thể phá được một số tường có hình dáng cố định. Tường phá được và không phá được sẽ có hình dáng khác nhau, chỉ có thể phá được bằng bom. 
- Bom: mấu chốt của trò chơi, người chơi sẽ đặt bom để phá tường và gây sát thương lên người chơi khác, không thể bị phá hủy bởi bom

#### 3.1.3. Vật phẩm
a) Boom: 
nổ theo hình chữ thập với kích thước mặc định là 3x3 block, có thể tăng số lượng bom có thể đặt hoặc độ dài bom nổ bằng cách ăn các vật phẩm hỗ trợ. phải chờ bom nổ xong mới được đặt bom mới.
b) Vật phẩm hỗ trợ:
- Tăng số lượng bom: +1 số lượng bom đang có. chỉ có thể đặt được x số bom đang có 1 lúc.
- Tăng độ dài bom nổ: tăng thêm +1 dộ dài bom nổ. VD: 3x3 → 4x4,...
- Chạy nhanh: tăng tốc độ di chuyển của người chơi trong thời gian ngắn 
- Tăng mạng: +1 số mạng đang có. Tối đa 4 mạng
- Lá chắn: tạo một lá chắn miễn nhiễm 1 lần sát thương sẽ nhận


#### 3.1.4. Phác thảo giao diện 
Main Menu: New Game, Continue, Quit, Nút Setting ở Góc, Background 

User Interface: Tên Player (tên nhân vật đã đặt sẵn), Tim, Số bom 

Winer: Công bố người thắng, nút replay và Quit 

Setting (Continue, Exit, Music Background)

