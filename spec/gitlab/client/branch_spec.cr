require "../../spec_helper"

Spec2.describe Gitlab::Client::Branch do
  describe ".branches" do
    it "should return a json data of users" do
      stub_get("/projects/3/repository/branches", "branches")
      branches = client.branches(3)

      expect(branches).to be_a JSON::Any
      expect(branches[0]["name"].as_s).to eq "api"
    end
  end

  describe ".branch" do
    it "should return information about a repository branch" do
      stub_get("/projects/3/repository/branches/api", "branch")
      branch = client.branch(3, "api")

      expect(branch["name"].as_s).to eq "api"
    end
  end

  describe ".protect_branch" do
    it "should return information about a protected repository branch" do
      stub_put("/projects/3/repository/branches/api/protect", "branch")
      branch = client.protect_branch(3, "api")

      expect(branch["name"].as_s).to eq "api"
    end
  end

  describe ".unprotect_branch" do
    it "should return information about an unprotected repository branch" do
      stub_put("/projects/3/repository/branches/api/unprotect", "branch")
      branch = client.unprotect_branch(3, "api")

      expect(branch["name"].as_s).to eq "api"
    end
  end

  describe ".create_branch" do
    it "should return information about a new repository branch" do
      stub_post("/projects/3/repository/branches", "branch")
      branch = client.create_branch(3, "api", "master")

      expect(branch["name"].as_s).to eq "api"
    end
  end

  describe ".delete_branch" do
    it "should return information about the deleted repository branch" do
      stub_delete("/projects/3/repository/branches/api", "branch_delete")
      branch = client.delete_branch(3, "api")

      expect(branch["branch_name"].as_s).to eq "api"
    end
  end
end
