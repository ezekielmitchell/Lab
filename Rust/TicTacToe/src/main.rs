use std::io;

#[derive(Clone, Copy, PartialEq, Debug)]
enum Player {
    X,
    O,
}

impl Player {
    fn opponent(&self) -> Player {
        match self {
            Player::X => Player::O,
            Player::O => Player::X,
        }
    }
}

#[derive(Clone, Copy, PartialEq)]
enum Cell {
    Empty,
    Player(Player),
}

fn print_board(board: &[[Cell; 3]; 3]) {
    println!("-------------");
    for row in board.iter() {
        print!("| ");
        for cell in row.iter() {
            match cell {
                Cell::Empty => print!("  | "),
                Cell::Player(Player::X) => print!("X | "),
                Cell::Player(Player::O) => print!("O | "),
            }
        }
        println!("\n-------------");
    }
}

fn check_win(board: &[[Cell; 3]; 3], player: Player) -> bool {
    // Check rows
    for row in 0..3 {
        if board[row][0] == Cell::Player(player)
            && board[row][1] == Cell::Player(player)
            && board[row][2] == Cell::Player(player)
        {
            return true;
        }
    }

    // Check columns
    for col in 0..3 {
        if board[0][col] == Cell::Player(player)
            && board[1][col] == Cell::Player(player)
            && board[2][col] == Cell::Player(player)
        {
            return true;
        }
    }

    // Check diagonals
    if board[0][0] == Cell::Player(player)
        && board[1][1] == Cell::Player(player)
        && board[2][2] == Cell::Player(player)
    {
        return true;
    }
    if board[0][2] == Cell::Player(player)
        && board[1][1] == Cell::Player(player)
        && board[2][0] == Cell::Player(player)
    {
        return true;
    }

    false
}

fn is_draw(board: &[[Cell; 3]; 3]) -> bool {
    for row in board.iter() {
        for cell in row.iter() {
            if *cell == Cell::Empty {
                return false;
            }
        }
    }
    true
}

fn minimax(board: &mut [[Cell; 3]; 3], player: Player) -> (i32, Option<(usize, usize)>) {
    if check_win(board, Player::X) {
        return (-1, None);
    }
    if check_win(board, Player::O) {
        return (1, None);
    }
    if is_draw(board) {
        return (0, None);
    }

    let mut best_score = if player == Player::O { -1000 } else { 1000 };
    let mut best_move = None;

    for row in 0..3 {
        for col in 0..3 {
            if board[row][col] == Cell::Empty {
                board[row][col] = Cell::Player(player);
                let (score, _) = minimax(board, player.opponent());
                board[row][col] = Cell::Empty;

                if player == Player::O {
                    if score > best_score {
                        best_score = score;
                        best_move = Some((row, col));
                    }
                } else {
                    if score < best_score {
                        best_score = score;
                        best_move = Some((row, col));
                    }
                }
            }
        }
    }

    (best_score, best_move)
}

fn main() {
    let mut board = [[Cell::Empty; 3]; 3];
    let mut current_player = Player::X;

    loop {
        print_board(&board);

        if current_player == Player::X {
            println!("Player X's turn. Enter row and column (0-2):");
            let mut input = String::new();
            io::stdin().read_line(&mut input).expect("Failed to read line");
            let parts: Vec<usize> = input
                .trim()
                .split_whitespace()
                .map(|s| s.parse().expect("Please enter numbers"))
                .collect();

            if parts.len() == 2 {
                let row = parts[0];
                let col = parts[1];

                if row < 3 && col < 3 && board[row][col] == Cell::Empty {
                    board[row][col] = Cell::Player(current_player);
                } else {
                    println!("Invalid move. Try again.");
                    continue;
                }
            } else {
                println!("Invalid input. Try again.");
                continue;
            }
        } else {
            println!("AI's turn (Player O)");
            let (_, best_move) = minimax(&mut board.clone(), Player::O);
            if let Some((row, col)) = best_move {
                board[row][col] = Cell::Player(Player::O);
            }
        }

        if check_win(&board, current_player) {
            print_board(&board);
            println!("Player {:?} wins!", current_player);
            break;
        }

        if is_draw(&board) {
            print_board(&board);
            println!("It's a draw!");
            break;
        }

        current_player = current_player.opponent();
    }
}