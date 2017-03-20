extern crate rand;

use rand::{thread_rng, sample};

fn main() {
    let mut rng = thread_rng();
    let mut lotto_numbers = sample(&mut rng, 1..45, 6);

    lotto_numbers.sort();
    
    let result_string = lotto_numbers.iter()
        .fold(String::new(), |a, b| {
            if a.len() > 0 {
                return a + ", " + &(b.to_string());
            }
            b.to_string()
        });
    println!("{}", result_string);
}
