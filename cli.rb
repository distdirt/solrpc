# frozen_string_literal: true
require "bundler"

Bundler.require :default

class SOLCLI < Thor
  desc "ping", "ping the network"
  def ping(pubkey)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_account_info(pubkey).parsed_response)
  end

  desc "balance", "get the balance of an account"
  def balance(pubkey)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_balance(pubkey).parsed_response)
  end

  desc "block", "get the block"
  def block(slot)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_block(slot).parsed_response)
  end

  desc "block_commitment", "get the block commitment"
  def block_commitment(slot)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_block_commitment(slot).parsed_response)
  end

  desc "block_height", "get the block height"
  def block_height
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_block_height.parsed_response)
  end

  desc "block_production", "get the block production"
  def block_production
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_block_production.parsed_response)
  end

  desc "block_time", "get the block time"
  def block_time(slot)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_block_time(slot).parsed_response)
  end

  desc "blocks", "get the blocks"
  def blocks(start_slot, end_slot)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_blocks(start_slot, end_slot).parsed_response)
  end

  desc "blocks_with_limit", "get the blocks with limit"
  def blocks_with_limit(start_slot, limit)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_blocks_with_limit(start_slot, limit).parsed_response)
  end

  desc "cluster_nodes", "get the cluster nodes"
  def cluster_nodes
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_cluster_nodes.parsed_response)
  end

  desc "epoch_info", "get the epoch info"
  def epoch_info
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_epoch_info.parsed_response)
  end

  desc "epoch_schedule", "get the epoch schedule"
  def epoch_schedule
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_epoch_schedule.parsed_response)
  end

  desc "fee_for_message", "get the fee for message"
  def fee_for_message(msg)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_fee_for_message(msg).parsed_response)
  end

  desc "first_available_block", "get the first available block"
  def first_available_block
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_first_available_block.parsed_response)
  end

  desc "genesis_hash", "get the genesis hash"
  def genesis_hash
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_genesis_hash.parsed_response)
  end

  desc "health", "get the health"
  def health
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_health.parsed_response)
  end

  desc "highest_snapshot_slot", "get the highest snapshot slot"
  def highest_snapshot_slot
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_highest_snapshot_slot.parsed_response)
  end

  desc "identity", "get the identity"
  def identity
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_identity.parsed_response)
  end

  desc "inflation_governor", "get the inflation governor"
  def inflation_governor
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_inflation_governor.parsed_response)
  end

  desc "inflation_rate", "get the inflation rate"
  def inflation_rate
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_inflation_rate.parsed_response)
  end

  desc "inflation_reward", "get the inflation reward"
  def inflation_reward
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_inflation_reward.parsed_response)
  end

  desc "largest_accounts", "get the largest accounts"
  def largest_accounts
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_largest_accounts.parsed_response)
  end

  desc "largest_blockhash", "get the largest blockhash"
  def largest_blockhash
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_largest_blockhash.parsed_response)
  end

  desc "leader_schedule", "get the leader schedule"
  def leader_schedule
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_leader_schedule.parsed_response)
  end

  desc "max_retransmit_slot", "get the max retransmit slot"
  def max_retransmit_slot
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_max_retransmit_slot.parsed_response)
  end

  desc "max_shred_insert_slot", "get the max shred insert slot"
  def max_shred_insert_slot
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_max_shred_insert_slot.parsed_response)
  end

  desc "minimum_balance_for_rent_exemption", "get the minimum balance for rent exemption"
  def minimum_balance_for_rent_exemption
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_minimum_balance_for_rent_exemption.parsed_response)
  end

  desc "multiple_accounts", "get multiple accounts"
  def multiple_accounts(pubkeys)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_multiple_accounts(pubkeys).parsed_response)
  end

  desc "program_accounts", "get the program accounts"
  def program_accounts(pubk)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_program_accounts(pubk).parsed_response)
  end

  desc "recent_performance_samples", "get the recent performance samples"
  def recent_performance_samples
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_recent_performance_samples.parsed_response)
  end

  desc "recent_prioritization_fees", "get the recent prioritization fees"
  def recent_prioritization_fees
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_recent_prioritization_fees.parsed_response)
  end

  desc "signature_statuses", "get the signature statuses"
  def signature_statuses(sigs)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_signature_statuses(sigs).parsed_response)
  end

  desc "signatures_for_address", "get the signatures for address"
  def signatures_for_address(addr)
    api = SOLAPI.new
    puts JSON.pretty_generate(api.get_signatures_for_address(addr).parsed_response)
  end

# getSlot
# getSlotLeader
# getSlotLeaders
# getStakeActivation
# getStakeMinimumDelegation
# getSupply
# getTokenAccountBalance
# getTokenAccountsByDelegate
# getTokenAccountsByOwner
# getTokenLargestAccounts
# getTokenSupply
# getTransaction
# getTransactionCount
# getVersion
# getVoteAccounts
# isBlockhashValid
# minimumLedgerSlot
# requestAirdrop
# sendTransaction
# simulateTransaction
end

class SOLAPI
  include HTTParty

  base_uri "https://api.mainnet-beta.solana.com"
  format :json

  def initialize
    @bodyt = {
      jsonrpc: "2.0",
      id: 1
    }

    @headers = {
      "Content-Type" => "application/json"
    }
  end

  def get_account_info(pubkey)
    body = @bodyt.merge({
      method: "getAccountInfo",
      params: [pubkey]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_balance(pubkey)
    body = @bodyt.merge({
      method: "getBalance",
      params: [pubkey]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_block(slot)
    body = @bodyt.merge({
      method: "getBlock",
      params: [slot.to_i,
    {
      encoding: "json",
      maxSupportedTransactionVersion: 0,
      transactionDetails: "full",
      rewards: false
    }]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_block_commitment(slot)
    body = @bodyt.merge({
      method: "getBlockCommitment",
      params: [slot.to_i]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_block_height
    body = @bodyt.merge({
      method: "getBlockHeight",
  })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_block_production
    body = @bodyt.merge({
      method: "getBlockProduction"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_block_time(slot)
    body = @bodyt.merge({
      method: "getBlockTime",
      params: [slot.to_i]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_blocks(start_slot, end_slot)
    body = @bodyt.merge({
      method: "getBlocks",
      params: [start_slot.to_i, end_slot.to_i]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_blocks_with_limit(start_slot, limit)
    body = @bodyt.merge({
      method: "getBlocks",
      params: [start_slot.to_i, limit.to_i]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_cluster_nodes
    body = @bodyt.merge({
      method: "getClusterNodes"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_epoch_info
    body = @bodyt.merge({
      method: "getEpochInfo"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_epoch_schedule
    body = @bodyt.merge({
      method: "getEpochSchedule"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  # FIX
  def get_fee_for_message(msg)
    body = @bodyt.merge({
      method: "getFeeForMessage",
      params: [msg]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_first_available_block
    body = @bodyt.merge({
      method: "getFirstAvailableBlock"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_genesis_hash
    body = @bodyt.merge({
      method: "getGenesisHash"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_health
    body = @bodyt.merge({
      method: "getHealth"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_highest_snapshot_slot
    body = @bodyt.merge({
      method: "getHighestSnapshotSlot"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_identity
    body = @bodyt.merge({
      method: "getIdentity"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_inflation_governor
    body = @bodyt.merge({
      method: "getInflationGovernor"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_inflation_rate
    body = @bodyt.merge({
      method: "getInflationRate"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_inflation_reward
    body = @bodyt.merge({
      method: "getInflationReward"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_largest_accounts
    body = @bodyt.merge({
      method: "getLargestAccounts"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_largest_blockhash
    body = @bodyt.merge({
      method: "getLargestBlockhash"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_leader_schedule
    body = @bodyt.merge({
      method: "getLeaderSchedule"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_max_retransmit_slot
    body = @bodyt.merge({
      method: "getMaxRetransmitSlot"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_max_shred_insert_slot
    body = @bodyt.merge({
      method: "getMaxShredInsertSlot"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_minimum_balance_for_rent_exemption
    body = @bodyt.merge({
      method: "getMinimumBalanceForRentExemption"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_multiple_accounts(pubkeys)
    body = @bodyt.merge({
      method: "getMultipleAccounts",
      params: [pubkeys]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_program_accounts(pubk)
    body = @bodyt.merge({
      method: "getProgramAccounts",
      params: [pubk]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_recent_performance_samples
    body = @bodyt.merge({
      method: "getRecentPerformanceSamples"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_recent_prioritization_fees
    body = @bodyt.merge({
      method: "getRecentPrioritizationFees"
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_signature_statuses(sigs)
    body = @bodyt.merge({
      method: "getSignatureStatuses",
      params: [sigs]
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

  def get_signatures_for_address(addr)
    body = @bodyt.merge({
      method: "getSignaturesForAddress",
      params: addr
    })

    self.class.post "/", body: body.to_json, headers: @headers
  end

# getSignaturesForAddress
# getSlot
# getSlotLeader
# getSlotLeaders
# getStakeActivation
# getStakeMinimumDelegation
# getSupply
# getTokenAccountBalance
# getTokenAccountsByDelegate
# getTokenAccountsByOwner
# getTokenLargestAccounts
# getTokenSupply
# getTransaction
# getTransactionCount
# getVersion
# getVoteAccounts
# isBlockhashValid
# minimumLedgerSlot
# requestAirdrop
# sendTransaction
# simulateTransaction
end

SOLCLI.start(ARGV)

# curl https://api.devnet.solana.com -X POST -H "Content-Type: application/json" -d '
#   {
#     "jsonrpc": "2.0",
#     "id": 1,
#     "method": "getBalance",
#     "params": [
#       "83astBRguLMdt2h5U1Tpdq5tjFoJ6noeGwaY3mDLVcri"
#     ]
#   }
# '
