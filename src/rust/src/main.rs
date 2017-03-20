extern crate rand;

use std::vec::Vec;
use rand::distributions::{IndependentSample, Range};

fn main() {
    let mut lotto_numbers = Vec::new();
    for n in 0..45 {
        lotto_numbers.push(n+1);
    }

    let mut rng = rand::thread_rng();
    let mut result_numbers = Vec::new();
    for _ in 0..6 {
       	let between = Range::new(0, lotto_numbers.len()-1);

        let index = between.ind_sample(&mut rng);
        result_numbers.push(lotto_numbers[index]);
        lotto_numbers.remove(index);
    }

    result_numbers.sort();

    let result_string = result_numbers.iter()
        .fold(String::new(), |a, b| {
                if a.len() > 0 {
                    return a + ", " + &(b.to_string());
                }
                b.to_string()
        });
    println!("{}", result_string);
}
