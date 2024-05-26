<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ThuatToan extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
	}

	public function dfsIndex()
	{
		$data['title'] = "Thông tin thuật toán DFS";
		return $this->load->view('Website/View_DFS', $data);
	}

	private function DFS($vertex, &$visited, &$adjacencyList, &$steps) {
        $visited[$vertex] = true;
        $steps[] = "Thăm đỉnh $vertex";
        foreach ($adjacencyList[$vertex] as $v) {
            if (!$visited[$v]) {
                $steps[] = "Đi từ đỉnh $vertex tới đỉnh $v";
                $this->DFS($v, $visited, $adjacencyList, $steps);
            }
        }
    }

	public function dfsTest()
	{
		$data['title'] = "Thử nghiệm thuật toán DFS";
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
		    $n = intval($_POST["n"]);
		    $e = intval($_POST["e"]);
		    $edges = explode("\n", trim($_POST["edges"]));
		    $graphType = $_POST["graph-type"];
		    $start = intval($_POST["start"]);

		    // Tạo danh sách kề
		    $adjacencyList = [];
		    for ($i = 0; $i < $n; $i++) {
		        $adjacencyList[$i] = [];
		    }

		    foreach ($edges as $edge) {
		        list($u, $v) = explode("-", trim($edge));
		        $u = intval($u);
		        $v = intval($v);
		        $adjacencyList[$u][] = $v; // Thêm cạnh từ $u đến $v
		        if ($graphType === 'undirected') {
		            $adjacencyList[$v][] = $u; // Thêm cạnh từ $v đến $u nếu là đồ thị vô hướng
		        }
		    }

		    // Mảng để đánh dấu các đỉnh đã được thăm
		    $visited = array_fill(0, $n, false);
		    $steps = [];

		    // Bắt đầu DFS từ đỉnh 0
    		$this->DFS($start, $visited, $adjacencyList, $steps);

		    $data['steps'] = $steps;
		    $data['n'] = $n;
		    $data['e'] = $e;
		    $data['edges'] = $edges;
		    $data['start'] = $start;
		    $data['graphType'] = $graphType;

		    return $this->load->view('Website/View_DFSTest', $data);
		}
		return $this->load->view('Website/View_DFSTest', $data);
	}


	public function hoanViIndex()
	{
		$data['title'] = "Thông tin thuật toán hoán vị";
		return $this->load->view('Website/View_HoanVi', $data);
	}

	private function nextPermutation(&$arr) {
        $i = $j = count($arr) - 1;
        while ($i > 0 && $arr[$i - 1] >= $arr[$i]) {
            $i--;
        }
        if ($i === 0) {
            return false; // Không còn hoán vị kế tiếp
        }
        while ($arr[$j] <= $arr[$i - 1]) {
            $j--;
        }
        // Đổi chỗ arr[i-1] và arr[j]
        $temp = $arr[$i - 1];
        $arr[$i - 1] = $arr[$j];
        $arr[$j] = $temp;
        // Đảo ngược các phần tử từ i đến cuối
        $left = $i;
        $right = count($arr) - 1;
        while ($left < $right) {
            $temp = $arr[$left];
            $arr[$left] = $arr[$right];
            $arr[$right] = $temp;
            $left++;
            $right--;
        }
        return true;
    }

	public function hoanViTest()
	{
		$data['title'] = "Thử nghiệm thuật toán hoán vị";
		if ($_SERVER["REQUEST_METHOD"] == "POST") {
			$n = intval($_POST["n"]);

		    // Tạo mảng ban đầu
		    $arr = range(1, $n);

		    $results = [];

		    do {
		        array_push($results, implode(" ", $arr));
		    } while ($this->nextPermutation($arr));

		    $data['results'] = $results;
		    $data['n'] = $n;

		    return $this->load->view('Website/View_HoanViTest', $data);
		}
		return $this->load->view('Website/View_HoanViTest', $data);
	}
}

/* End of file ThuatToan.php */
/* Location: ./application/controllers/ThuatToan.php */