<? 
/* 
    * Class for handling bracket production
*/
class Bracket {
	/**
     * Array with the players in the bracket
     * 
     * @var array
     */
    private $players = array();

	/**
     * The number of contestants based on $players array
     * 
     * @var int
     */
	private $count_players = 0;

	/**
     * Number of matches in a given round based on the $players array
     * 
     * @var int
     */
	private $matches = 0;

	/**
     * Round counter (checks the number of rounds that should be played on this bracket)
     * 
     * @var int
     */
	private $round = 1;

	/**
     * Number of matches in the winner upper bracket
     * 
     * @var int
    */

	private $winner_bracket_matches = 0;

	/**
     * Number of matches in the looser lower bracket
     * 
     * @var int
    */
	private $looser_bracket_matches = 0;

	/**
     * ID in the database
     * 
     * @var int
    */
	private $id = 0;

	/**
	 * Main bracket array generated based on the number of players.
     * It gets updated by the seed saved in the databse
	 * 
     * @var array
    */
	public $bracket = array();

	/**
     * Braket constructor.
     *
     * @param array $players array of contestants in the braket
	 *				empty array returns a false braket
	 *	            TODO: Check more about this later
	 *
     * @param boolean|false $insert inserts the braket in the database and gives it and id
     *                         false create a 'guest braket'
	 * 							TODO: Think more about this guest braket
     */
	public function __construct($players = array(), $insert = false) {
		global $db;

		if(!empty($players)) $this->players = $players;

		else return array();

		$this->count_players = count($this->players);
		$this->matches = count($this->players)/2;
		$this->bracket['on_going_match'] = array();
		$this->bracket['data'] = array();
		$player_count = -1;

		for($i = 1; $i <= ceil($this->matches); $i++){
			if(!isset($this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['id'])) $this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['id'] = uniqid();
			++$player_count;
			$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['player_0']['id'] = $this->players[$player_count]['id'];
			$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['player_0']['name'] = $this->players[$player_count]['name'];
			++$player_count;
			$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['player_1']['id'] = $this->players[$player_count]['id'] ?? '0';
			$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['player_1']['name'] = $this->players[$player_count]['name'] ?? 'Empty';
			if(empty($this->players[$player_count])){
				$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['winner'] = 0;
				// TODO: update seed for round 2 match 1 player 0
			}else $this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['winner'] = null;

			if(empty($this->bracket['on_going_match'])) {
				$this->bracket['on_going_match']['id'] = $this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['id'];
				$this->bracket['on_going_match']['data'] = $this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i];
			}
		}

		$this->winner_bracket_matches = $this->looser_bracket_matches = ceil($this->matches/2);
		while($this->count_players > 2){
			$this->round++;
			for($i = 1; $i <= $this->winner_bracket_matches; $i++){
				$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['player_0']['id'] = '0';
				$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['player_0']['name'] = 'BYE';
				$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['player_1']['id'] = '0';
				$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['player_1']['name'] = 'BYE';
				$this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['winner'] = null;
				if(!isset($this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['id'])) $this->bracket['data']['round_'.$this->round]['winner_bracket']['match_'.$i]['id'] = uniqid();
			}
			for($i = 1; $i <= $this->looser_bracket_matches; $i++){
				$this->bracket['data']['round_'.$this->round]['looser_bracket']['match_'.$i]['player_0']['id'] = '0';
				$this->bracket['data']['round_'.$this->round]['looser_bracket']['match_'.$i]['player_0']['name'] = 'BYE';
				$this->bracket['data']['round_'.$this->round]['looser_bracket']['match_'.$i]['player_1']['id'] = '0';
				$this->bracket['data']['round_'.$this->round]['looser_bracket']['match_'.$i]['player_1']['name'] = 'BYE';
				$this->bracket['data']['round_'.$this->round]['looser_bracket']['match_'.$i]['winner'] = null;
				if(!isset($this->bracket['data']['round_'.$this->round]['looser_bracket']['match_'.$i]['id'])) $this->bracket['data']['round_'.$this->round]['looser_bracket']['match_'.$i]['id'] = uniqid();
			}
			if($this->winner_bracket_matches > 1){
				$this->looser_bracket_matches = ceil($this->looser_bracket_matches/2) + ($this->winner_bracket_matches - floor($this->winner_bracket_matches/2));
				$this->winner_bracket_matches = ceil($this->winner_bracket_matches/2);
				$this->count_players -= ceil($this->looser_bracket_matches/2);
			}else {
				$this->winner_bracket_matches = -1;
				if($this->looser_bracket_matches > 1){
					$this->looser_bracket_matches = ceil($this->looser_bracket_matches/2);
					$this->count_players -= ceil($this->looser_bracket_matches/2);
				}else{
					$this->round++;
					$this->bracket['data']['round_'.$this->round]['semi_final']['match_1']['player_0']['id'] = '0';
					$this->bracket['data']['round_'.$this->round]['semi_final']['match_1']['player_0']['name'] = 'BYE';
					$this->bracket['data']['round_'.$this->round]['semi_final']['match_1']['player_1']['id'] = '0';
					$this->bracket['data']['round_'.$this->round]['semi_final']['match_1']['player_1']['name'] = 'BYE';
					$this->bracket['data']['round_'.$this->round]['semi_final']['match_1']['winner'] = null;
					if(!isset($this->bracket['data']['round_'.$this->round]['semi_final']['match_1']['id'])) $this->bracket['data']['round_'.$this->round]['semi_final']['match_1']['id'] = uniqid();
					$this->round++;
					$this->bracket['data']['round_'.$this->round]['final_1']['match_1']['player_0']['id'] = '0';
					$this->bracket['data']['round_'.$this->round]['final_1']['match_1']['player_0']['name'] = 'BYE';
					$this->bracket['data']['round_'.$this->round]['final_1']['match_1']['player_1']['id'] = '0';
					$this->bracket['data']['round_'.$this->round]['final_1']['match_1']['player_1']['name'] = 'BYE';
					$this->bracket['data']['round_'.$this->round]['final_1']['match_1']['winner'] = null;
					if(!isset($this->bracket['data']['round_'.$this->round]['final_1']['match_1']['id'])) $this->bracket['data']['round_'.$this->round]['final_1']['match_1']['id'] = uniqid();
					$this->bracket['data']['round_'.$this->round]['final_2']['match_1']['player_0']['id'] = '0';
					$this->bracket['data']['round_'.$this->round]['final_2']['match_1']['player_0']['name'] = 'BYE';
					$this->bracket['data']['round_'.$this->round]['final_2']['match_1']['player_1']['id'] = '0';
					$this->bracket['data']['round_'.$this->round]['final_2']['match_1']['player_1']['name'] = 'BYE';
					$this->bracket['data']['round_'.$this->round]['final_2']['match_1']['winner'] = null;
					if(!isset($this->bracket['data']['round_'.$this->round]['final_2']['match_1']['id'])) $this->bracket['data']['round_'.$this->round]['final_2']['match_1']['id'] = uniqid();
					break;
				}
			}
		}
		if($insert) $this->id = $db->insert_id("INSERT INTO `".db_bracket."` SET `bracket_seed` = '".serialize($this->bracket)."'");
		print_r($this->bracket); die();
	}

	public static function bracketFromId($id = 0){
		global $db;

		$bracket = $db->fetch_one("SELECT * FROM `".db_bracket."` WHERE `bracket_id` = '".$id."'");
		if(empty($bracket)) return array();
		$instance = new self();
		$instance->bracket = unserialize($bracket['bracket_seed']);
		$instance->id = $id;
		return $instance;
	}

	public function bracketHTML(){
		if(empty($this->bracket)) return '';
		$round_counter = 0;
		$current_match = '';
		$html = ''; 
		foreach($this->bracket['data'] as $key => $b){
			$html .= '<div class="round">';
			$html .= '<div class="title">Round '.++$round_counter.'</div>';
			foreach($b as $bracket_type => $matches){
				$html .= '<div class="title">'.ucfirst(str_replace('_',' ',$bracket_type)).'</div>';
				$html .= '<div class="'.$bracket_type.'">';
					foreach($matches as $match){
						if($match['id'] == $this->bracket['on_going_match']['id']) $current_match = 'current_match';
						$html .= '<div class="match winner_'.$match['winner'].' '.$current_match.'">';
							$html .= '<div class="player player_0">'.$match['player_0']['name'].'</div>';
							$html .= '<div class="player player_1">'.$match['player_1']['name'].'</div>';
						$html .= '</div>';
						$current_match = '';
					}
				$html .= '</div>';
			}
			$html .= '</div>';
		}

		return $html; 
	}

	public function setSeed($seed = array()){
		if(empty($seed)) return false;

		/*
		TODO:
			- rewrite below
		foreach($seed as $round => $s){
			if(isset($s['winner_bracket']) && !empty($s['winner_bracket'])){
				foreach($s['winner_bracket'] as $match_id => $matches){
					if(isset($matches['player_0']) && $matches['player_0'] != null) $this->bracket[$round]['winner_bracket'][$match_id]['player_0'] = $matches['player_0'];
					if(isset($matches['player_1']) && $matches['player_1'] != null) $this->bracket[$round]['winner_bracket'][$match_id]['player_1'] = $matches['player_1'];
					if(isset($matches['winner']) && $matches['winner'] != null) $this->bracket[$round]['winner_bracket'][$match_id]['winner'] = $matches['winner'];
				}
			}
			if(isset($s['looser_bracket']) && !empty($s['looser_bracket'])){
				foreach($s['looser_bracket'] as $match_id => $matches){
					if(isset($matches['player_0']) && $matches['player_0'] != null) $this->bracket[$round]['looser_bracket'][$match_id]['player_0'] = $matches['player_0'];
					if(isset($matches['player_1']) && $matches['player_1'] != null) $this->bracket[$round]['looser_bracket'][$match_id]['player_1'] = $matches['player_1'];
					if(isset($matches['winner']) && $matches['winner'] != null) $this->bracket[$round]['looser_bracket'][$match_id]['winner'] = $matches['winner'];
				}
			}
			if(isset($s['semi_final']) && !empty($s['semi_final'])){
				foreach($s['semi_final'] as $match_id => $matches){
					if(isset($matches['player_0']) && $matches['player_0'] != null) $this->bracket[$round]['semi_final'][$match_id]['player_0'] = $matches['player_0'];
					if(isset($matches['player_1']) && $matches['player_1'] != null) $this->bracket[$round]['semi_final'][$match_id]['player_1'] = $matches['player_1'];
					if(isset($matches['winner']) && $matches['winner'] != null) $this->bracket[$round]['semi_final'][$match_id]['winner'] = $matches['winner'];
				}
			}
			if(isset($s['final_1']) && !empty($s['final_1'])){
				foreach($s['final_1'] as $match_id => $matches){
					if(isset($matches['player_0']) && $matches['player_0'] != null) $this->bracket[$round]['final_1'][$match_id]['player_0'] = $matches['player_0'];
					if(isset($matches['player_1']) && $matches['player_1'] != null) $this->bracket[$round]['final_1'][$match_id]['player_1'] = $matches['player_1'];
					if(isset($matches['winner']) && $matches['winner'] != null) $this->bracket[$round]['final_1'][$match_id]['winner'] = $matches['winner'];
				}
			}
			if(isset($s['final_2']) && !empty($s['final_2'])){
				foreach($s['final_2'] as $match_id => $matches){
					if(isset($matches['player_0']) && $matches['player_0'] != null) $this->bracket[$round]['final_2'][$match_id]['player_0'] = $matches['player_0'];
					if(isset($matches['player_1']) && $matches['player_1'] != null) $this->bracket[$round]['final_2'][$match_id]['player_1'] = $matches['player_1'];
					if(isset($matches['winner']) && $matches['winner'] != null) $this->bracket[$round]['final_2'][$match_id]['winner'] = $matches['winner'];
				}
			}
		}*/
	}

	public function updateSeed($round = null, $type = null, $match = null, $match_status = null, $player_id = 0){
		$db->insert("INSERT INTO `".db_bracket_seed."` SET `bracket_seed_round` = '".$round."', `bracket_seed_type` = '".$type."', `bracket_seed_match` ");
	}
}