require "../../spec_helper"

Spec2.describe Gitlab::Client::Deploykey do
  # describe ".deploy_keys" do
  #   it "should return project deploy keys" do
  #     stub_get("/projects/42/deploy_keys", "project_keys")
  #     deploy_keys = client.deploy_keys(42)

  #     expect(deploy_keys).to be_a JSON::Any
  #     expect(deploy_keys[0]["id"].as_i).to eq 2
  #     expect(deploy_keys[0]["title"].as_s).to eq "Key Title"
  #     expect(deploy_keys[0]["key"].as_s).to match(/ssh-rsa/)
  #   end
  # end

  # describe ".deploy_key" do
  #   before do
  #     stub_get("/projects/42/deploy_keys/2", "project_key")
  #     deploy_key = client.deploy_key(42, 2)
  #   end

  #   it "should get the correct resource" do
  #     expect(a_get("/projects/42/deploy_keys/2")).to have_been_made
  #   end

  #   it "should return project deploy key" do
  #     expect(deploy_key.id).to eq 2
  #     expect(deploy_key.title).to eq "Key Title"
  #     expect(deploy_key.key).to match(/ssh-rsa/)
  #   end
  # end

  # describe ".delete_deploy_key" do
  #   before do
  #     stub_delete("/projects/42/deploy_keys/2", "project_key")
  #     deploy_key = client.delete_deploy_key(42, 2)
  #   end

  #   it "should get the correct resource" do
  #     expect(a_delete("/projects/42/deploy_keys/2")).to have_been_made
  #   end

  #   it "should return information about a deleted key" do
  #     expect(deploy_key.id).to eq 2
  #   end
  # end

  # describe ".enable_deploy_key" do
  #   before do
  #     stub_post("/projects/42/deploy_keys/2/enable", "project_key")
  #     deploy_key = client.enable_deploy_key(42, 2)
  #   end

  #   it "should get the correct resource" do
  #     expect(a_post("/projects/42/deploy_keys/2/enable").
  #         with(body: { id: "42", key_id: "2" })).to have_been_made
  #   end

  #   it "should return information about an enabled key" do
  #     expect(deploy_key.id).to eq 2
  #   end
  # end

  # describe ".disable_deploy_key" do
  #   before do
  #     stub_post("/projects/42/deploy_keys/2/disable", "project_key")
  #     deploy_key = client.disable_deploy_key(42, 2)
  #   end

  #   it "should get the correct resource" do
  #     expect(a_post("/projects/42/deploy_keys/2/disable").
  #         with(body: { id: "42", key_id: "2" })).to have_been_made
  #   end

  #   it "should return information about a disabled key" do
  #     expect(deploy_key.id).to eq 2
  #   end
  # end
end