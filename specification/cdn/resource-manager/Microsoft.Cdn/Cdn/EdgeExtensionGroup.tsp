import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "@typespec/openapi";
import "@typespec/rest";
import "@typespec/versioning";
import "./models.tsp";
import "./Profile.tsp";

using TypeSpec.Rest;
using Azure.ResourceManager;
using TypeSpec.Http;
using TypeSpec.OpenAPI;
using TypeSpec.Versioning;

namespace Microsoft.Cdn;

/**
 * An edge extension group comprising a set of edge extensions used to route and load-balance traffic to extension servers at the edge.
 */
@added(Versions.v2026_09_01_preview)
@parentResource(Profile)
model EdgeExtensionGroup
  is Azure.ResourceManager.ProxyResource<EdgeExtensionGroupProperties> {
  ...ResourceNameParameter<
    Resource = EdgeExtensionGroup,
    KeyName = "edgeExtensionGroupName",
    SegmentName = "edgeExtensionGroups",
    NamePattern = ""
  >;
}

/** Operations for edge extension groups associated with a profile. */
@added(Versions.v2026_09_01_preview)
@armResourceOperations
interface EdgeExtensionGroups {
  /**
   * Gets an existing edge extension group within a profile.
   */
  get is ArmResourceRead<EdgeExtensionGroup>;

  /**
   * Creates or updates an edge extension group within the specified profile.
   */
  @Azure.Core.useFinalStateVia("azure-async-operation")
  create is ArmResourceCreateOrReplaceAsync<
    EdgeExtensionGroup,
    Response = ArmResourceUpdatedResponse<EdgeExtensionGroup> | ArmResourceCreatedResponse<
      EdgeExtensionGroup,
      LroHeaders = ArmAsyncOperationHeader<FinalResult = EdgeExtensionGroup> &
        Azure.Core.Foundations.RetryAfterHeader
    >
  >;

  /**
   * Updates an existing edge extension group within a profile.
   */
  @Azure.Core.useFinalStateVia("azure-async-operation")
  @patch(#{ implicitOptionality: false })
  update is ArmCustomPatchAsync<
    EdgeExtensionGroup,
    PatchModel = EdgeExtensionGroupUpdateParameters,
    Response = ArmResponse<EdgeExtensionGroup> | ArmAcceptedLroResponse<LroHeaders = ArmCombinedLroHeaders<FinalResult = EdgeExtensionGroup> &
      Azure.Core.Foundations.RetryAfterHeader>
  >;

  /**
   * Deletes an existing edge extension group within a profile.
   */
  @Azure.Core.useFinalStateVia("azure-async-operation")
  delete is ArmResourceDeleteWithoutOkAsync<
    EdgeExtensionGroup,
    Response = ArmDeleteAcceptedLroResponse<ArmCombinedLroHeaders &
      Azure.Core.Foundations.RetryAfterHeader> | ArmDeletedNoContentResponse
  >;

  /**
   * Lists edge extension groups associated with the profile.
   */
  @list
  listByProfile is ArmResourceListByParent<EdgeExtensionGroup>;
}

@@doc(EdgeExtensionGroup.name,
  "Name of the edge extension group under the profile."
);
@@doc(EdgeExtensionGroup.properties,
  "The JSON object that contains the properties of the edge extension group."
);
@@doc(EdgeExtensionGroups.create::parameters.resource,
  "Edge extension group properties."
);
@@doc(EdgeExtensionGroups.update::parameters.properties,
  "Edge extension group update properties."
);
