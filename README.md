Koding Dojo lần thứ N
=====================

Nhánh master chỉ để lưu README và ghi chép về buổi sinh hoạt. Lịch sử commit
của các nhóm nằm ở các nhánh riêng cho từng nhóm.

Đầu buổi sinh hoạt, các nhóm clone project này:

    git clone git://github.com/kodingdojo/boilerplate.git

và checkout sang một nhánh mới có tên ghép của các thành viên:

    git checkout -b chin-thang

xóa README.md (chỉ để ở nhánh master do người hướng dẫn cập nhật):

    git rm README.md
    
Mỗi khi hoàn thành một test thì người đang code sẽ commit với tên của mình:

    git commit --all --message "chin"

Đến cuối buổi, mỗi nhóm push nhánh của mình lên Github. Trước hết add remote
mới do người hướng dẫn tạo riêng cho từng buổi:

    git remote add today https://github.com/kodingdojo/YYYYMMDD.git

và push lên remote mới:

    git push today chin-thang


----


## Bài toán

Bài toán được giải quyết trong buổi tuần này là [...] xem tại <http://codingdojo.org/cgi-bin/wiki.pl>.


## Những người tham dự

- @lewtds - Chin
- @myguidingstar - Minh Thắng


## Retrospection

### Có gì tốt?

- Fun!
- ...

### Có gì cần cải thiện?

- ...
