import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Hash "mo:base/Hash";
import Error "mo:base/Error";
import Result "mo:base/Result";
import Array "mo:base/Array";
import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Timer "mo:base/Timer";
import Debug "mo:base/Debug";
import Buffer "mo:base/Buffer";

import IC "Ic";
import HTTP "Http";
import Type "Types";

actor class Verifier() {
  type StudentProfile = Type.StudentProfile;

  // STEP 1 - BEGIN
  public shared ({ caller }) func addMyProfile(profile : StudentProfile) : async Result.Result<(), Text> {
    return #err("not implemented");
  };

  public shared ({ caller }) func seeAProfile(p : Principal) : async Result.Result<StudentProfile, Text> {
    return #err("not implemented");
  };

  public shared ({ caller }) func updateMyProfile(profile : StudentProfile) : async Result.Result<(), Text> {
    return #err("not implemented");
  };

  public shared ({ caller }) func deleteMyProfile() : async Result.Result<(), Text> {
    return #err("not implemented");
  };
  // STEP 1 - END

  // STEP 2 - BEGIN
  type calculatorInterface = Type.CalculatorInterface;
  public type TestResult = Type.TestResult;
  public type TestError = Type.TestError;

  public func test(canisterId : Principal) : async TestResult {
    return #err(#UnexpectedError("not implemented"));
  };
  // STEP - 2 END

  // STEP 3 - BEGIN
  // NOTE: Not possible to develop locally,
  // as actor "aaaa-aa" (aka the IC itself, exposed as an interface) does not exist locally
  public func verifyOwnership(canisterId : Principal, p : Principal) : async Result.Result<Bool, Text> {
    return #err("not implemented");
  };
  // STEP 3 - END

  // STEP 4 - BEGIN
  public shared ({ caller }) func verifyWork(canisterId : Principal, p : Principal) : async Result.Result<Bool, Text> {
    return #err("not implemented");
  };
  // STEP 4 - END

  // STEP 5 - BEGIN
  public type HttpRequest = HTTP.HttpRequest;
  public type HttpResponse = HTTP.HttpResponse;

  // NOTE: Not possible to develop locally,
  // as Timer is not running on a local replica
  public func activateGraduation() : async () {
    return ();
  };

  public func deactivateGraduation() : async () {
    return ();
  };

  public query func http_request(request : HttpRequest) : async HttpResponse {
    return ({
      status_code = 200;
      headers = [];
      body = Text.encodeUtf8("");
      streaming_strategy = null;
    });
  };
  // STEP 5 - END
};
