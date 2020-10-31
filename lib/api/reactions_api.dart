part of swagger.api;



class ReactionsApi {
  final ApiClient apiClient;

  ReactionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create reaction for a commit comment
  ///
  /// Create a reaction to a [commit comment](https://developer.github.com/v3/repos/comments/). A response with a &#x60;Status: 200 OK&#x60; means that you already added the reaction type to this commit comment.
  Future<Reaction> reactionsCreateForCommitComment(String owner, String repo, int commentId, { Body77 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/comments/{comment_id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Reaction') as Reaction ;
    } else {
      return null;
    }
  }
  /// Create reaction for an issue
  ///
  /// Create a reaction to an [issue](https://developer.github.com/v3/issues/). A response with a &#x60;Status: 200 OK&#x60; means that you already added the reaction type to this issue.
  Future<Reaction> reactionsCreateForIssue(String owner, String repo, int issueNumber, { Body110 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(issueNumber == null) {
     throw new ApiException(400, "Missing required param: issueNumber");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{issue_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "issue_number" + "}", issueNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Reaction') as Reaction ;
    } else {
      return null;
    }
  }
  /// Create reaction for an issue comment
  ///
  /// Create a reaction to an [issue comment](https://developer.github.com/v3/issues/comments/). A response with a &#x60;Status: 200 OK&#x60; means that you already added the reaction type to this issue comment.
  Future<Reaction> reactionsCreateForIssueComment(String owner, String repo, int commentId, { Body102 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Reaction') as Reaction ;
    } else {
      return null;
    }
  }
  /// Create reaction for a pull request review comment
  ///
  /// Create a reaction to a [pull request review comment](https://developer.github.com/v3/pulls/comments/). A response with a &#x60;Status: 200 OK&#x60; means that you already added the reaction type to this pull request review comment.
  Future<Reaction> reactionsCreateForPullRequestReviewComment(String owner, String repo, int commentId, { Body123 body }) async {
    Object postBody = body;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Reaction') as Reaction ;
    } else {
      return null;
    }
  }
  /// Create reaction for a team discussion comment
  ///
  /// Create a reaction to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a &#x60;Status: 200 OK&#x60; means that you already added the reaction type to this team discussion comment.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;POST /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions&#x60;.
  Future<Reaction> reactionsCreateForTeamDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber, { Body48 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Reaction') as Reaction ;
    } else {
      return null;
    }
  }
  /// Create reaction for a team discussion comment (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;Create reaction for a team discussion comment&#x60;](https://developer.github.com/v3/reactions/#create-reaction-for-a-team-discussion-comment) endpoint.  Create a reaction to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a &#x60;Status: 200 OK&#x60; means that you already added the reaction type to this team discussion comment.
  @deprecated
  Future<Reaction> reactionsCreateForTeamDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber, { Body157 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Reaction') as Reaction ;
    } else {
      return null;
    }
  }
  /// Create reaction for a team discussion
  ///
  /// Create a reaction to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a &#x60;Status: 200 OK&#x60; means that you already added the reaction type to this team discussion.  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;POST /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions&#x60;.
  Future<Reaction> reactionsCreateForTeamDiscussionInOrg(String org, String teamSlug, int discussionNumber, { Body49 body }) async {
    Object postBody = body;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Reaction') as Reaction ;
    } else {
      return null;
    }
  }
  /// Create reaction for a team discussion (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;Create reaction for a team discussion&#x60;](https://developer.github.com/v3/reactions/#create-reaction-for-a-team-discussion) endpoint.  Create a reaction to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/). A response with a &#x60;Status: 200 OK&#x60; means that you already added the reaction type to this team discussion.
  @deprecated
  Future<Reaction> reactionsCreateForTeamDiscussionLegacy(int teamId, int discussionNumber, { Body158 body }) async {
    Object postBody = body;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Reaction') as Reaction ;
    } else {
      return null;
    }
  }
  /// Delete a commit comment reaction
  ///
  /// **Note:** You can also specify a repository by &#x60;repository_id&#x60; using the route &#x60;DELETE /repositories/:repository_id/comments/:comment_id/reactions/:reaction_id&#x60;.  Delete a reaction to a [commit comment](https://developer.github.com/v3/repos/comments/).
  Future reactionsDeleteForCommitComment(String owner, String repo, int commentId, int reactionId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }
    if(reactionId == null) {
     throw new ApiException(400, "Missing required param: reactionId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/comments/{comment_id}/reactions/{reaction_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString()).replaceAll("{" + "reaction_id" + "}", reactionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Delete an issue reaction
  ///
  /// **Note:** You can also specify a repository by &#x60;repository_id&#x60; using the route &#x60;DELETE /repositories/:repository_id/issues/:issue_number/reactions/:reaction_id&#x60;.  Delete a reaction to an [issue](https://developer.github.com/v3/issues/).
  Future reactionsDeleteForIssue(String owner, String repo, int issueNumber, int reactionId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(issueNumber == null) {
     throw new ApiException(400, "Missing required param: issueNumber");
    }
    if(reactionId == null) {
     throw new ApiException(400, "Missing required param: reactionId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{issue_number}/reactions/{reaction_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "issue_number" + "}", issueNumber.toString()).replaceAll("{" + "reaction_id" + "}", reactionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Delete an issue comment reaction
  ///
  /// **Note:** You can also specify a repository by &#x60;repository_id&#x60; using the route &#x60;DELETE delete /repositories/:repository_id/issues/comments/:comment_id/reactions/:reaction_id&#x60;.  Delete a reaction to an [issue comment](https://developer.github.com/v3/issues/comments/).
  Future reactionsDeleteForIssueComment(String owner, String repo, int commentId, int reactionId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }
    if(reactionId == null) {
     throw new ApiException(400, "Missing required param: reactionId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions/{reaction_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString()).replaceAll("{" + "reaction_id" + "}", reactionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Delete a pull request comment reaction
  ///
  /// **Note:** You can also specify a repository by &#x60;repository_id&#x60; using the route &#x60;DELETE /repositories/:repository_id/pulls/comments/:comment_id/reactions/:reaction_id.&#x60;  Delete a reaction to a [pull request review comment](https://developer.github.com/v3/pulls/comments/).
  Future reactionsDeleteForPullRequestComment(String owner, String repo, int commentId, int reactionId) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }
    if(reactionId == null) {
     throw new ApiException(400, "Missing required param: reactionId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions/{reaction_id}".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString()).replaceAll("{" + "reaction_id" + "}", reactionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Delete team discussion reaction
  ///
  /// **Note:** You can also specify a team or organization with &#x60;team_id&#x60; and &#x60;org_id&#x60; using the route &#x60;DELETE /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions/:reaction_id&#x60;.  Delete a reaction to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  Future reactionsDeleteForTeamDiscussion(String org, String teamSlug, int discussionNumber, int reactionId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(reactionId == null) {
     throw new ApiException(400, "Missing required param: reactionId");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions/{reaction_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "reaction_id" + "}", reactionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Delete team discussion comment reaction
  ///
  /// **Note:** You can also specify a team or organization with &#x60;team_id&#x60; and &#x60;org_id&#x60; using the route &#x60;DELETE /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions/:reaction_id&#x60;.  Delete a reaction to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  Future reactionsDeleteForTeamDiscussionComment(String org, String teamSlug, int discussionNumber, int commentNumber, int reactionId) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }
    if(reactionId == null) {
     throw new ApiException(400, "Missing required param: reactionId");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions/{reaction_id}".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString()).replaceAll("{" + "reaction_id" + "}", reactionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Delete a reaction (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Reactions API. We recommend migrating your existing code to use the new delete reactions endpoints. For more information, see this [blog post](https://developer.github.com/changes/2020-02-26-new-delete-reactions-endpoints/).  OAuth access tokens require the &#x60;write:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), when deleting a [team discussion](https://developer.github.com/v3/teams/discussions/) or [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/).
  @deprecated
  Future reactionsDeleteLegacy(int reactionId) async {
    Object postBody = null;

    // verify required params are set
    if(reactionId == null) {
     throw new ApiException(400, "Missing required param: reactionId");
    }

    // create path and map variables
    String path = "/reactions/{reaction_id}".replaceAll("{format}","json").replaceAll("{" + "reaction_id" + "}", reactionId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// List reactions for a commit comment
  ///
  /// List the reactions to a [commit comment](https://developer.github.com/v3/repos/comments/).
  Future<List<Reaction>> reactionsListForCommitComment(String owner, String repo, int commentId, { String content, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/comments/{comment_id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(content != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content", content));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }
  /// List reactions for an issue
  ///
  /// List the reactions to an [issue](https://developer.github.com/v3/issues/).
  Future<List<Reaction>> reactionsListForIssue(String owner, String repo, int issueNumber, { String content, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(issueNumber == null) {
     throw new ApiException(400, "Missing required param: issueNumber");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/{issue_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "issue_number" + "}", issueNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(content != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content", content));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }
  /// List reactions for an issue comment
  ///
  /// List the reactions to an [issue comment](https://developer.github.com/v3/issues/comments/).
  Future<List<Reaction>> reactionsListForIssueComment(String owner, String repo, int commentId, { String content, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/issues/comments/{comment_id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(content != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content", content));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }
  /// List reactions for a pull request review comment
  ///
  /// List the reactions to a [pull request review comment](https://developer.github.com/v3/pulls/comments/).
  Future<List<Reaction>> reactionsListForPullRequestReviewComment(String owner, String repo, int commentId, { String content, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(owner == null) {
     throw new ApiException(400, "Missing required param: owner");
    }
    if(repo == null) {
     throw new ApiException(400, "Missing required param: repo");
    }
    if(commentId == null) {
     throw new ApiException(400, "Missing required param: commentId");
    }

    // create path and map variables
    String path = "/repos/{owner}/{repo}/pulls/comments/{comment_id}/reactions".replaceAll("{format}","json").replaceAll("{" + "owner" + "}", owner.toString()).replaceAll("{" + "repo" + "}", repo.toString()).replaceAll("{" + "comment_id" + "}", commentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(content != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content", content));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }
  /// List reactions for a team discussion comment
  ///
  /// List the reactions to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/:org_id/team/:team_id/discussions/:discussion_number/comments/:comment_number/reactions&#x60;.
  Future<List<Reaction>> reactionsListForTeamDiscussionCommentInOrg(String org, String teamSlug, int discussionNumber, int commentNumber, { String content, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/comments/{comment_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(content != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content", content));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }
  /// List reactions for a team discussion comment (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;List reactions for a team discussion comment&#x60;](https://developer.github.com/v3/reactions/#list-reactions-for-a-team-discussion-comment) endpoint.  List the reactions to a [team discussion comment](https://developer.github.com/v3/teams/discussion_comments/). OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future<List<Reaction>> reactionsListForTeamDiscussionCommentLegacy(int teamId, int discussionNumber, int commentNumber, { String content, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }
    if(commentNumber == null) {
     throw new ApiException(400, "Missing required param: commentNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/comments/{comment_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString()).replaceAll("{" + "comment_number" + "}", commentNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(content != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content", content));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }
  /// List reactions for a team discussion
  ///
  /// List the reactions to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).  **Note:** You can also specify a team by &#x60;org_id&#x60; and &#x60;team_id&#x60; using the route &#x60;GET /organizations/:org_id/team/:team_id/discussions/:discussion_number/reactions&#x60;.
  Future<List<Reaction>> reactionsListForTeamDiscussionInOrg(String org, String teamSlug, int discussionNumber, { String content, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(org == null) {
     throw new ApiException(400, "Missing required param: org");
    }
    if(teamSlug == null) {
     throw new ApiException(400, "Missing required param: teamSlug");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/orgs/{org}/teams/{team_slug}/discussions/{discussion_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "org" + "}", org.toString()).replaceAll("{" + "team_slug" + "}", teamSlug.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(content != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content", content));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }
  /// List reactions for a team discussion (Legacy)
  ///
  /// **Deprecation Notice:** This endpoint route is deprecated and will be removed from the Teams API. We recommend migrating your existing code to use the new [&#x60;List reactions for a team discussion&#x60;](https://developer.github.com/v3/reactions/#list-reactions-for-a-team-discussion) endpoint.  List the reactions to a [team discussion](https://developer.github.com/v3/teams/discussions/). OAuth access tokens require the &#x60;read:discussion&#x60; [scope](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/).
  @deprecated
  Future<List<Reaction>> reactionsListForTeamDiscussionLegacy(int teamId, int discussionNumber, { String content, int perPage, int page }) async {
    Object postBody = null;

    // verify required params are set
    if(teamId == null) {
     throw new ApiException(400, "Missing required param: teamId");
    }
    if(discussionNumber == null) {
     throw new ApiException(400, "Missing required param: discussionNumber");
    }

    // create path and map variables
    String path = "/teams/{team_id}/discussions/{discussion_number}/reactions".replaceAll("{format}","json").replaceAll("{" + "team_id" + "}", teamId.toString()).replaceAll("{" + "discussion_number" + "}", discussionNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(content != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "content", content));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<Reaction>') as List).map((item) => item as Reaction).toList();
    } else {
      return null;
    }
  }
}
