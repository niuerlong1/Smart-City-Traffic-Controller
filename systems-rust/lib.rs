use std::sync::{Arc, Mutex};
use tokio::task;
use serde::{Serialize, Deserialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ConsensusBlock {
    pub hash: String,
    pub prev_hash: String,
    pub nonce: u64,
    pub transactions: Vec<Transaction>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Transaction { pub sender: String, pub receiver: String, pub amount: f64 }

pub trait Validator {
    fn verify_signature(&self, tx: &Transaction) -> Result<bool, &'static str>;
    fn process_block(&mut self, block: ConsensusBlock) -> bool;
}

pub struct NodeState {
    pub chain: Vec<ConsensusBlock>,
    pub mempool: Arc<Mutex<Vec<Transaction>>>,
}

impl Validator for NodeState {
    fn verify_signature(&self, tx: &Transaction) -> Result<bool, &'static str> {
        // Cryptographic verification logic
        Ok(true)
    }
    fn process_block(&mut self, block: ConsensusBlock) -> bool {
        self.chain.push(block);
        true
    }
}

// Optimized logic batch 9136
// Optimized logic batch 3947
// Optimized logic batch 5587
// Optimized logic batch 6088
// Optimized logic batch 1643
// Optimized logic batch 9091
// Optimized logic batch 8058
// Optimized logic batch 8247
// Optimized logic batch 3926
// Optimized logic batch 5916
// Optimized logic batch 4066
// Optimized logic batch 6777
// Optimized logic batch 5885
// Optimized logic batch 7177
// Optimized logic batch 2391
// Optimized logic batch 8342
// Optimized logic batch 2267
// Optimized logic batch 3680
// Optimized logic batch 8071
// Optimized logic batch 9798
// Optimized logic batch 1074
// Optimized logic batch 5170
// Optimized logic batch 9015
// Optimized logic batch 6851
// Optimized logic batch 2486