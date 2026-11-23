# SpiraPlan API Verification

## Purpose

This directory contains executable verification implementations for the
SpiraPlan API interface represented in the OT System Model.

The SysML v2 model defines the engineering requirement and verification
intent.

Executable tests implement that verification and produce objective evidence.

The intended assurance chain is:

Requirement  
→ Verification Definition  
→ Verification Case  
→ Executable Test  
→ Evidence  
→ Verification Result

This separation allows the engineering intent to remain independent of the
particular test implementation.

## Model structure

The SpiraPlan system boundary, engineering information and API interface are
defined in:

`models/systems/spiraplan.sysml`

The corresponding verification definitions and verification cases are
defined in:

`models/verification/spiraplan_api_verification.sysml`

Executable tests within this directory should trace to a verification case
defined in the SysML v2 model.

## Verification cases

### Verify API Access

**Model verification:** `verifyAPIAccess`

Demonstrates that an authorised client can communicate with the SpiraPlan API
and obtain a valid response.

Typical evidence includes:

- API request;
- authentication or authorisation outcome;
- API response; and
- verification result.

---

### Verify API Endpoint Availability

**Model verification:** `verifyAPIEndpointAvailability`

Demonstrates that an endpoint defined by the SpiraPlan API specification can
be discovered and successfully invoked.

The executable verification should:

1. read the SpiraPlan API specification;
2. identify a documented endpoint;
3. invoke the endpoint using authorised credentials;
4. capture the API response; and
5. assert that the response satisfies the expected success criteria.

Individual REST endpoints are intentionally not defined as system
requirements within the SysML model.

An endpoint is an implementation mechanism used to demonstrate the
higher-level API capability.

---

### Verify Engineering Artifact Retrieval

**Model verification:** `verifyEngineeringArtifactRetrieval`

Demonstrates that engineering information can be retrieved from SpiraPlan for
use by the OT MBSE environment.

The executable verification should demonstrate that:

1. an engineering artefact can be requested;
2. SpiraPlan returns a valid response;
3. the returned artefact can be uniquely identified; and
4. the returned information is suitable for the intended MBSE use.

## Executable verification

pytest is the initial executable verification mechanism used by this feature.

Test names should make their relationship to the model clear.

For example:

`test_api_access`

`test_api_endpoint_availability`

`test_engineering_artifact_retrieval`

Where practical, execution evidence should identify:

- verification case;
- executable test;
- API endpoint;
- execution date and time;
- result;
- relevant response or evidence; and
- failure information where applicable.

This provides the basis for tracing executable evidence back to the
engineering verification defined in the model.

## Initial scope

The initial implementation is limited to read-oriented API verification.

Creating, modifying or deleting controlled engineering information in
SpiraPlan is outside the scope of this feature.

This allows the interface and verification approach to be demonstrated
without requiring write access or modifying project engineering information.

## Candidate repository structure

The directory structure introduced by this feature is a candidate structure.

The main branch does not currently establish an agreed OT System Model
repository structure.

The `mbse_api_interface` feature therefore introduces only the structure
needed to demonstrate this capability:

`models/systems/`

Contains definitions of systems and their relevant engineering interfaces.

`models/verification/`

Contains reusable verification definitions and their application to model
requirements.

`tests/`

Contains executable implementations of model-defined verification.

This structure is not intended to establish the final organisation of the
OT System Model repository.

It provides a concrete implementation for stakeholder review.

Acceptance of the feature should therefore consider both:

1. the SpiraPlan MBSE interface and verification approach; and
2. whether the proposed separation of system models, verification models and
   executable tests is suitable for adoption by the OT System Model
   repository.

The structure may be retained, revised or replaced as part of stakeholder
review before the capability is incorporated into the reference model.