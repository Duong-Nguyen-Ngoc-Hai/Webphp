<?php require(__DIR__.'/layouts/header.php'); ?>

<div class="noidung">
	<h1>Thuật toán DFS (Depth-First Search)</h1>
    <form method="post">
        <label for="n">Số đỉnh (n):</label>
        <?php if(isset($n)){ ?>
        	<input type="number" id="n" name="n" required value="<?php echo $n; ?>">
        <?php }else{ ?>
        	<input type="number" id="n" name="n" required>
        <?php } ?>
        
        
        <label for="e">Số đường đi (e):</label>
        <?php if(isset($e)){ ?>
        	<input type="number" id="e" name="e" required value="<?php echo $e; ?>">
        <?php }else{ ?>
        	<input type="number" id="e" name="e" required>
        <?php } ?>

        <label for="start">Đỉnh bắt đầu:</label>
        <?php if(isset($start)){ ?>
        	<input type="number" id="start" name="start" required value="<?php echo $start; ?>">
        <?php }else{ ?>
        	<input type="number" id="start" name="start" required>
        <?php } ?>
        
        <label for="graph-type">Loại đồ thị:</label>
        <select id="graph-type" name="graph-type" required>
            <option value="undirected" <?php if(isset($graphType) && ($graphType == "undirected")){ echo "selected"; } ?>>Vô hướng</option>
            <option value="directed" <?php if(isset($graphType) && ($graphType == "directed")){ echo "selected"; } ?>>Có hướng</option>
        </select>
        
        <label for="edges">Danh sách các đường đi (định dạng: u-v, một đường đi mỗi dòng):</label>
        <?php if(isset($edges)){ ?>
        	<textarea id="edges" name="edges" rows="10" required><?php foreach ($edges as $edge): ?>
<?php echo $edge; ?>
<?php endforeach ?>
        	</textarea>
        <?php }else{ ?>
        	<textarea id="edges" name="edges" rows="10" required></textarea>
        <?php } ?>
        
        <input class="btn btn-primary" type="submit" value="Thực hiện DFS">
    </form>

    <?php if(isset($steps)){ ?>
    	<hr>
    	<h2>Kết quả thuật toán DFS:</h2>
    	<pre><code><?php foreach ($steps as $step): ?>
<?php echo $step . "\n"; ?>
<?php endforeach ?></code></pre>
    <?php } ?>
</div>
<style type="text/css">
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
    input[type="number"], input[type="text"], textarea, select {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        box-sizing: border-box;
    }
    input[type="submit"] {
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
<?php require(__DIR__.'/layouts/footer.php'); ?>
