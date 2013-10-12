Koding Dojo lần thứ 4
=====================

Nhánh master chỉ để lưu README và ghi chép về buổi sinh hoạt. Lịch sử commit
của các nhóm nằm ở các nhánh riêng cho từng nhóm.

Đầu buổi sinh hoạt, các nhóm clone project này:

    git clone git://github.com/kodingdojo/boilerplate.git

và checkout sang một nhánh mới có tên ghép của các thành viên:

    cd boilerplate && git checkout -b chin-thang

xóa README.md (chỉ để ở nhánh master do người hướng dẫn cập nhật):

    git rm README.md && git commit --message "Remove README.md"
    
Mỗi khi hoàn thành một test thì người đang code sẽ commit với tên của mình:

    git commit --all --message "chin"

Đến cuối buổi, mỗi nhóm push nhánh của mình lên Github. Trước hết add remote
mới do người hướng dẫn tạo riêng cho từng buổi:

    git remote add today https://github.com/kodingdojo/YYYYMMDD.git

và push lên remote mới:

    git push today chin-thang


----


## Bài toán

Bài toán được giải quyết trong buổi tuần này là:

> Xây dựng một chương trình truy cập phần tử thứ N từ cuối lên của một
> singly linked list.


## Những người tham dự

Tách thành hai nhóm:

https://github.com/kodingdojo/20131012/tree/chin-minh

- @lewtds - Chin
- @minh1234 - Phạm Đức Minh
 
https://github.com/kodingdojo/20131012/tree/hainp

- @myguidingstar - Minh Thắng
- @hainp - Phan Hải


## Retrospection

### Có gì tốt?

- Fun!
- Học được "một chút" về Erlang
- Học được cách implement một singly linked list
- Đã có bình nước và café :3

### Có gì cần cải thiện?

- Nên chuẩn bị ngôn ngữ nhanh hơn (chọn từ trước hoặc chọn bằng xúc sắc). Nên
  có người biết ngôn ngữ đang sử dụng trước.
- Cần đông người tham dự hơn

