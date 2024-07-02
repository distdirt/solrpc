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

  # getEpochSchedule
  # getFeeForMessage
  # getFirstAvailableBlock
  # getGenesisHash
  # getHealth
  # getHighestSnapshotSlot
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
