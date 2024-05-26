<?php require(__DIR__.'/layouts/header.php'); ?>
<div class="noidung">
    <h1>Liệt kê hoán vị</h1>
    <form method="post">
        <label for="n">Số lượng phần tử:</label>
        <?php if(isset($n)){ ?>
        	<input type="number" id="n" name="n" min="1" required value="<?php echo $n; ?>">
        <?php }else{ ?>
        	<input type="number" id="n" name="n" min="1" required>
        <?php } ?>
        <input class="btn btn-primary" type="submit" value="Liệt kê">
    </form>
    <?php if(isset($results)){ ?>
    	<hr>
    	<h2>Kết quả thuật toán hoán vị:</h2>
    	<pre><code><?php foreach ($results as $result): ?>
<?php echo $result . "\n"; ?>
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