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
		$player_count = -1;
		for($i = 1; $i <= ceil($this->matches); $i++){
			$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['player_0']['id'] = $this->players[++$player_count]['id'];
			$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['player_0']['name'] = $this->players[$player_count]['name'];
			++$player_count;
			$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['player_1']['id'] = $this->players[$player_count]['id'] ?? '0';
			$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['player_1']['name'] = $this->players[$player_count]['name'] ?? 'Empty';
			if(empty($this->players[$player_count])){
				$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['winner'] = 0;
				// TODO: update seed for round 2 match 1 player 0
			}else $this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['winner'] = null;
		}

		$this->winner_bracket_matches = $this->looser_bracket_matches = ceil($this->matches/2);
		while($this->count_players > 2){
			$this->round++;
			for($i = 1; $i <= $this->winner_bracket_matches; $i++){
				$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['player_0']['id'] = '0';
				$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['player_0']['name'] = 'BYE';
				$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['player_1']['id'] = '0';
				$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['player_1']['name'] = 'BYE';
				$this->bracket['round_'.$this->round]['winner_bracket']['match_'.$i]['winner'] = null;
			}
			for($i = 1; $i <= $this->looser_bracket_matches; $i++){
				$this->bracket['round_'.$this->round]['looser_bracket']['match_'.$i]['player_0']['id'] = '0';
				$this->bracket['round_'.$this->round]['looser_bracket']['match_'.$i]['player_0']['name'] = 'BYE';
				$this->bracket['round_'.$this->round]['looser_bracket']['match_'.$i]['player_1']['id'] = '0';
				$this->bracket['round_'.$this->round]['looser_bracket']['match_'.$i]['player_1']['name'] = 'BYE';
				$this->bracket['round_'.$this->round]['looser_bracket']['match_'.$i]['winner'] = null;
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
					$this->bracket['round_'.$this->round]['semi_final']['match_1']['player_0']['id'] = '0';
					$this->bracket['round_'.$this->round]['semi_final']['match_1']['player_0']['name'] = 'BYE';
					$this->bracket['round_'.$this->round]['semi_final']['match_1']['player_1']['id'] = '0';
					$this->bracket['round_'.$this->round]['semi_final']['match_1']['player_1']['name'] = 'BYE';
					$this->bracket['round_'.$this->round]['semi_final']['match_1']['winner'] = null;
					$this->round++;
					$this->bracket['round_'.$this->round]['final_1']['match_1']['player_0']['id'] = '0';
					$this->bracket['round_'.$this->round]['final_1']['match_1']['player_0']['name'] = 'BYE';
					$this->bracket['round_'.$this->round]['final_1']['match_1']['player_1']['id'] = '0';
					$this->bracket['round_'.$this->round]['final_1']['match_1']['player_1']['name'] = 'BYE';
					$this->bracket['round_'.$this->round]['final_1']['match_1']['winner'] = null;
					$this->bracket['round_'.$this->round]['final_2']['match_1']['player_0']['id'] = '0';
					$this->bracket['round_'.$this->round]['final_2']['match_1']['player_0']['name'] = 'BYE';
					$this->bracket['round_'.$this->round]['final_2']['match_1']['player_1']['id'] = '0';
					$this->bracket['round_'.$this->round]['final_2']['match_1']['player_1']['name'] = 'BYE';
					$this->bracket['round_'.$this->round]['final_2']['match_1']['winner'] = null;
					break;
				}
			}
		}
		if($insert) $db->insert_id("INSERT INTO `".db_bracket."` SET `bracket_seed` = '".serialize($this->bracket)."'");
	}

	public static function bracketFromId($id = 0){
		global $db;

		$bracket = $db->fetch_one("SELECT * FROM `".db_bracket."` WHERE `bracket_id` = '".$id."'");
		if(empty($bracket)) return array();
		$instance = new self();
		$instance->bracket = unserialize($bracket['bracket_seed']);
		return $instance;
	}

	public function bracketHTML(){
		if(empty($this->bracket)) return '';
		$round_counter = 0;
		$html = ''; 
		foreach($this->bracket as $key => $b){
			$html .= '<div class="round">';
			$html .= '<div class="title">Round '.++$round_counter.'</div>';
			if(isset($b['winner_bracket'])){
				$html .= '<div class="title">Winner bracket</div>';
				$html .= '<div class="winner_bracket">';
				foreach($b['winner_bracket'] as $match) {
					$html .= '<div class="match winner_'.$match['winner'].'">';
						$html .= '<div class="player player_0">'.$match['player_0']['name'].'</div>';
						$html .= '<div class="player player_1">'.$match['player_1']['name'].'</div>';
					$html .= '</div>';
				}
				$html .= '</div>';
			}
			if(isset($b['looser_bracket'])){
				$html .= '<div class="title">Looser bracket</div>';
				$html .= '<div class="looser_bracket">';
				foreach($b['looser_bracket'] as $match) {
					$html .= '<div class="match winner_'.$match['winner'].'">';
						$html .= '<div class="player player_0">'.$match['player_0']['name'].'</div>';
						$html .= '<div class="player player_1">'.$match['player_1']['name'].'</div>';
					$html .= '</div>';
				}
				$html .= '</div>';
			}
			if(isset($b['semi_final'])){
				$html .= '<div class="title">Semi final</div>';
				$html .= '<div class="looser_bracket">';
				foreach($b['semi_final'] as $match) {
					$html .= '<div class="match winner_'.$match['winner'].'">';
						$html .= '<div class="player player_0">'.$match['player_0']['name'].'</div>';
						$html .= '<div class="player player_1">'.$match['player_1']['name'].'</div>';
					$html .= '</div>';
				}
				$html .= '</div>';
			}
			if(isset($b['final_1'])){ 
				$html .= '<div class="title">Final 1</div>';
				$html .= '<div class="looser_bracket">';
					foreach($b['final_1'] as $match) {
						$html .= '<div class="match winner_'.$match['winner'].'">';
							$html .= '<div class="player player_0">'.$match['player_0']['name'].'</div>';
							$html .= '<div class="player player_1">'.$match['player_1']['name'].'</div>';
						$html .= '</div>';
					}
				$html .= '</div>';
			}
			if(isset($b['final_2'])){
				$html .= '<div class="title">Final 2</div>';
				$html .= '<div class="looser_bracket">';
					foreach($b['final_2'] as $match) {
						$html .= '<div class="match winner_'.$match['winner'].'">';
							$html .= '<div class="player player_0">'.$match['player_0']['name'].'</div>';
							$html .= '<div class="player player_1">'.$match['player_1']['name'].'</div>';
						$html .= '</div>';
					}
				$html .= '</div>';
			}
			$html .= '</div>';
		}

		return $html; 
	}

	public function setSeed($seed = array()){
		if(empty($seed)) return false;

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
		}
	}

	public function updateSeed($round = null, $type = null, $match = null, $match_status = null, $player_id = 0){

	}
}