extern crate rand;

use rand::{thread_rng, sample};

fn main() {
    let mut lotto_numbers = sample(&mut thread_rng(), 1..45, 6);

    lotto_numbers.sort();

    let result = lotto_numbers.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(", ");

    println!("{}", result);
}
