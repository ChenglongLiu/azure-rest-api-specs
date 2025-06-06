using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.Versioning;
using Azure.ResourceManager;

namespace Oracle.Database;

@doc("OracleSubscriptionProvisioningState enum")
union OracleSubscriptionProvisioningState {
  ResourceProvisioningState,
  string,
}

@singleton
@subscriptionResource
@doc("OracleSubscription resource definition")
@friendlyName("OracleSubscription", ResourcePlanType)
model OracleSubscription<ResourcePlanType>
  is ProxyResource<OracleSubscriptionProperties> {
  @doc("OracleSubscription name")
  @key("oraclesubscriptionname")
  @path
  @segment("oracleSubscriptions")
  @pattern(".*")
  name: string;

  #suppress "@azure-tools/typespec-azure-resource-manager/arm-resource-invalid-envelope-property"
  @doc("Details of the resource plan.")
  plan?: ResourcePlanType;
}

// Azure specs do not support update model for resource plan
@doc("ResourcePlanTypeUpdate model definition")
model PlanUpdate {
  @doc("A user defined name of the 3rd Party Artifact that is being procured.")
  name?: string;

  @doc("The publisher of the 3rd Party Artifact that is being bought. E.g. NewRelic")
  publisher?: string;

  @doc("The 3rd Party artifact that is being procured. E.g. NewRelic. Product maps to the OfferID specified for the artifact at the time of Data Market onboarding. ")
  product?: string;

  @doc("A publisher provided promotion code as provisioned in Data Market for the said product/artifact.")
  promotionCode?: string;

  @doc("The version of the desired product/artifact.")
  version?: string;
}

@doc("CloudAccountProvisioningState enum")
union CloudAccountProvisioningState {
  @doc("Pending - Initial state when Oracle cloud account is not configured")
  Pending: "Pending",

  @doc("Provisioning - State when Oracle cloud account is being provisioned")
  Provisioning: "Provisioning",

  @doc("Available - State when Oracle cloud account cloud linking is complete and it is available")
  Available: "Available",

  string,
}

@doc("Intent enum")
union Intent {
  @doc("Retain intent")
  Retain: "Retain",

  @doc("Reset intent")
  Reset: "Reset",

  string,
}

@doc("Cloud Account Details model")
model CloudAccountDetails {
  @doc("Cloud Account name")
  @visibility(Lifecycle.Read)
  cloudAccountName?: string;

  @doc("Cloud Account Home region")
  @visibility(Lifecycle.Read)
  cloudAccountHomeRegion?: string;
}

@doc("SaaS Subscription Details model")
model SaasSubscriptionDetails {
  @doc("Purchased SaaS subscription ID")
  @visibility(Lifecycle.Read)
  id?: string;

  @doc("SaaS subscription name")
  @visibility(Lifecycle.Read)
  subscriptionName?: string;

  @doc("Creation Date and Time")
  @visibility(Lifecycle.Read)
  timeCreated?: utcDateTime;

  @doc("Purchased offer ID")
  @visibility(Lifecycle.Read)
  offerId?: string;

  @doc("Purchased offer's plan ID")
  @visibility(Lifecycle.Read)
  planId?: string;

  @doc("Indicates the status of the Subscription.")
  @visibility(Lifecycle.Read)
  saasSubscriptionStatus?: string;

  @doc("Publisher ID")
  @visibility(Lifecycle.Read)
  publisherId?: string;

  @doc("Purchaser Email ID")
  @visibility(Lifecycle.Read)
  purchaserEmailId?: string;

  @doc("Purchaser Tenant ID")
  @visibility(Lifecycle.Read)
  purchaserTenantId?: string;

  @doc("Purchase Term Unit")
  @visibility(Lifecycle.Read)
  termUnit?: string;

  @doc("AutoRenew flag")
  @visibility(Lifecycle.Read)
  isAutoRenew?: boolean;

  @doc("FreeTrial flag")
  @visibility(Lifecycle.Read)
  isFreeTrial?: boolean;
}

@doc("Activation Links model")
model ActivationLinks {
  @doc("New Cloud Account Activation Link")
  @visibility(Lifecycle.Read)
  newCloudAccountActivationLink?: string;

  @doc("Existing Cloud Account Activation Link")
  @visibility(Lifecycle.Read)
  existingCloudAccountActivationLink?: string;
}

@added(Versions.v20240601_preview)
@doc("Add Subscription Operation state enum")
union AddSubscriptionOperationState {
  @doc("Succeeded - State when Add Subscription operation succeeded")
  Succeeded: "Succeeded",

  @doc("Updating - State when Add Subscription operation is being Updated")
  Updating: "Updating",

  @doc("Failed - State when Add Subscription operation failed")
  Failed: "Failed",

  string,
}

@added(Versions.v20240601_preview)
@doc("Azure Subscriptions model")
model AzureSubscriptions {
  @doc("Azure Subscription Ids to be updated")
  azureSubscriptionIds: string[];
}

@doc("Oracle Subscription resource model")
model OracleSubscriptionProperties {
  @doc("OracleSubscriptionProvisioningState provisioning state")
  @visibility(Lifecycle.Read)
  provisioningState?: OracleSubscriptionProvisioningState;

  @doc("SAAS subscription ID generated by Marketplace")
  @visibility(Lifecycle.Read)
  saasSubscriptionId?: string;

  @doc("Cloud Account Id")
  @visibility(Lifecycle.Read)
  cloudAccountId?: Ocid;

  @doc("Cloud Account provisioning state.")
  @visibility(Lifecycle.Read)
  cloudAccountState?: CloudAccountProvisioningState;

  @doc("Term Unit. P1Y, P3Y, etc, see Durations https://en.wikipedia.org/wiki/ISO_8601")
  @visibility(Lifecycle.Create, Lifecycle.Read)
  termUnit?: string;

  @doc("Product code for the term unit")
  @visibility(Lifecycle.Update)
  productCode?: string;

  @doc("Intent for the update operation")
  @visibility(Lifecycle.Update)
  intent?: Intent;

  @added(Versions.v20240601_preview)
  @doc("Azure subscriptions to be added")
  @visibility(Lifecycle.Read)
  azureSubscriptionIds?: string[];

  @added(Versions.v20240601_preview)
  @doc("State of the add Azure subscription operation on Oracle subscription")
  @visibility(Lifecycle.Read)
  addSubscriptionOperationState?: AddSubscriptionOperationState;

  @added(Versions.v20240601_preview)
  @doc("Status details of the last operation on Oracle subscription")
  @visibility(Lifecycle.Read)
  lastOperationStatusDetail?: string;
}
