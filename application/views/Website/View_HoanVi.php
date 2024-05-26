<?php require(__DIR__.'/layouts/header.php'); ?>
<div class="noidung">
    <h1>Thuật toán sinh hoán vị</h1>
    <p>Thuật toán sinh hoán vị là một phương pháp để tạo ra tất cả các hoán vị của một dãy số từ một hoán vị ban đầu. Ý tưởng chính của thuật toán này là tìm cách di chuyển từ hoán vị hiện tại sang hoán vị tiếp theo một cách hiệu quả mà không cần phải sinh ra tất cả các hoán vị trước đó.</p>
    <h2>Giả mã thuật toán</h2>
    <p>Giả mã của thuật toán sinh hoán vị như sau:</p>
    <pre><code>function nextPermutation(arr):
    i = len(arr) - 1
    while i > 0 and arr[i - 1] >= arr[i]:
        i = i - 1
    if i <= 0:
        return false
    j = len(arr) - 1
    while arr[j] <= arr[i - 1]:
        j = j - 1
    swap(arr[i - 1], arr[j])
    arr[i:] = arr[len(arr) - 1:i - 1:-1]
    return true

function generatePermutations(n):
    arr = [i for i in range(1, n + 1)]
    permutations = []
    do:
        permutations.append(arr.copy())
    while nextPermutation(arr)
    return permutations
</pre></code>
    <h2>Các bước thực hiện thuật toán</h2>
    <p>Thuật toán sinh hoán vị bao gồm các bước sau:</p>
    <ol>
        <li>Bắt đầu với một hoán vị ban đầu, thường là dãy số tăng dần, ví dụ: [1, 2, 3, ..., n].</li>
        <li>Tìm phần tử lớn nhất mà có thể đổi chỗ với một phần tử lớn hơn nó ở bên phải. Cụ thể:
            <ul>
                <li>Tìm từ phải sang trái, phần tử đầu tiên có giá trị nhỏ hơn phần tử ngay sau nó. Gọi vị trí này là <code>i</code>.</li>
                <li>Nếu không tìm thấy, nghĩa là dãy số đã là hoán vị cuối cùng.</li>
            </ul>
        </li>
        <li>Tìm phần tử lớn nhất ở bên phải vị trí <code>i</code> mà lớn hơn giá trị tại vị trí <code>i-1</code>. Gọi vị trí này là <code>j</code>.</li>
        <li>Đổi chỗ hai phần tử tại vị trí <code>i-1</code> và <code>j</code>.</li>
        <li>Đảo ngược dãy số từ vị trí <code>i</code> đến cuối dãy số.</li>
        <li>Lặp lại quá trình này cho đến khi không thể tìm được hoán vị mới.</li>
    </ol>
    <h2>Ví dụ minh họa</h2>
    <p>Giả sử chúng ta có dãy số [1, 2, 3]. Các bước thực hiện để sinh tất cả các hoán vị sẽ như sau:</p>
    <pre><code>Bắt đầu: [1, 2, 3]
Bước 1: [1, 3, 2] (Đổi chỗ 2 và 3, sau đó đảo ngược phần sau)
Bước 2: [2, 1, 3] (Đổi chỗ 1 và 2, sau đó đảo ngược phần sau)
Bước 3: [2, 3, 1] (Đổi chỗ 1 và 3, sau đó đảo ngược phần sau)
Bước 4: [3, 1, 2] (Đổi chỗ 1 và 3, sau đó đảo ngược phần sau)
Bước 5: [3, 2, 1] (Đổi chỗ 2 và 1, sau đó đảo ngược phần sau)</code></pre>
	<h2>Ứng dụng của thuật toán</h2>
    <p>Thuật toán sinh hoán vị có nhiều ứng dụng trong thực tế, bao gồm:</p>
    <ul>
        <li><strong>Tối ưu hóa:</strong> Dùng trong các bài toán tìm kiếm tổ hợp tối ưu, chẳng hạn như bài toán người du lịch (Traveling Salesman Problem).</li>
        <li><strong>Lập lịch:</strong> Sử dụng trong việc lập lịch trình công việc, khi cần xét tất cả các khả năng sắp xếp công việc để tìm ra phương án tốt nhất.</li>
        <li><strong>Kiểm thử phần mềm:</strong> Sinh tất cả các hoán vị đầu vào để kiểm thử các trường hợp có thể xảy ra, đảm bảo phần mềm hoạt động đúng đắn.</li>
        <li><strong>Toán học và Thống kê:</strong> Dùng trong các nghiên cứu về xác suất và thống kê để phân tích các tổ hợp và hoán vị.</li>
    </ul>
    <br>
    <div class="text-left">
    	<a class="btn btn-primary" href="<?php echo base_url('hoan-vi/test/'); ?>">Thử Nghiệm</a>
    </div>
</div>

<style>
    .noidung {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
        margin-bottom: 20px;
    }
    h1 {
        color: #333;
    }
    pre {
        background: #f4f4f4;
        padding: 15px;
        border-radius: 5px;
        overflow-x: auto;
    }
    code {
        font-family: "Courier New", Courier, monospace;
        background: #e4e4e4;
        padding: 2px 4px;
        border-radius: 4px;
    }
</style>
<?php require(__DIR__.'/layouts/footer.php'); ?>
