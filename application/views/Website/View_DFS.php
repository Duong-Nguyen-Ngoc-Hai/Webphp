<?php require(__DIR__.'/layouts/header.php'); ?>
<div class="noidung">
    <h1>Thuật toán DFS (Depth-First Search)</h1>
    <p>Thuật toán DFS là một phương pháp duyệt hoặc tìm kiếm trong cây hoặc đồ thị. Thuật toán bắt đầu từ một đỉnh gốc và tiếp tục đi sâu vào từng nhánh cho đến khi không còn đỉnh nào để đi tiếp, sau đó quay lại và tiếp tục với các đỉnh chưa được duyệt.</p>
    
    <h2>Giả mã của thuật toán DFS:</h2>
    <pre><code>function DFS(vertex):
    visited[vertex] = true
    for each v in adjacent[vertex]:
    	if not visited[v]:
        	DFS(v)</code></pre>
    
    <h2>Các bước thực hiện thuật toán DFS:</h2>
    <ol>
        <li>Bắt đầu từ đỉnh gốc, đánh dấu đỉnh này là đã thăm.</li>
        <li>Đi tới đỉnh kề chưa được thăm, đánh dấu đỉnh này là đã thăm.</li>
        <li>Lặp lại bước 2 cho đến khi không còn đỉnh nào chưa được thăm kề với đỉnh hiện tại.</li>
        <li>Quay lại đỉnh trước đó và kiểm tra các đỉnh kề còn lại.</li>
        <li>Lặp lại quá trình cho đến khi tất cả các đỉnh đều được thăm.</li>
    </ol>

    <h2>Ví dụ minh họa:</h2>
    <p>Giả sử chúng ta có một đồ thị với <code>n = 5</code> đỉnh và <code>e = 6</code> đường đi. Đồ thị này có các đường đi như sau:</p>
    <ul>
        <li>1 - 2</li>
        <li>1 - 3</li>
        <li>2 - 4</li>
        <li>3 - 4</li>
        <li>4 - 5</li>
        <li>3 - 5</li>
    </ul>
    <p>Biểu diễn bằng danh sách kề:</p>
    <pre><code>adjacent = {
    1: [2, 3],
    2: [1, 4],
    3: [1, 4, 5],
    4: [2, 3, 5],
    5: [3, 4]
}</code></pre>
    <p>Thực hiện DFS bắt đầu từ đỉnh 1:</p>
    <pre><code>visited = [False, False, False, False, False, False]

DFS(1)
visited = [False, True, False, False, False, False]
1 -> 2
DFS(2)
    visited = [False, True, True, False, False, False]
    2 -> 4
    DFS(4)
        visited = [False, True, True, False, True, False]
        4 -> 3
        DFS(3)
            visited = [False, True, True, True, True, False]
            3 -> 5
            DFS(5)
                visited = [False, True, True, True, True, True]
        4 -> 5 (đã thăm)
1 -> 3 (đã thăm)</code></pre>

    <h2>Ứng dụng của DFS:</h2>
    <ul>
        <li>Kiểm tra tính liên thông của đồ thị.</li>
        <li>Phát hiện chu trình trong đồ thị.</li>
        <li>Giải bài toán mê cung.</li>
        <li>Đếm thành phần liên thông trong đồ thị.</li>
    </ul>
    <br>
    <div class="text-left">
    	<a class="btn btn-primary" href="<?php echo base_url('dfs/test/'); ?>">Thử Nghiệm</a>
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
