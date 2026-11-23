package SpiraPlanAPIVerification {

    private import SpiraPlan::*;


    doc /*
     * Verification model for the SpiraPlan API interface.
     *
     * Purpose
     * -------
     * Defines reusable verification definitions and their
     * application to requirements for the SpiraPlan API.
     *
     * The SysML model defines WHAT shall be demonstrated.
     *
     * Executable verification, such as pytest, defines HOW the
     * verification is performed and produces objective evidence.
     */


    // ================================================================
    // API access verification
    // ================================================================

    verification def VerifyAPIAccess {
        doc /*
         * Verification method for demonstrating that an authorised
         * client can communicate with the SpiraPlan API.
         *
         * Expected evidence includes:
         *
         * - API request;
         * - authentication or authorisation outcome;
         * - API response; and
         * - verification result.
         */
    }


    verification verifyAPIAccess : VerifyAPIAccess {
        doc /*
         * Applies VerifyAPIAccess to demonstrate satisfaction
         * of the API access requirement.
         */

        subject api = spiraplan.api;

        objective {
            /*
             * Demonstrate that an authorised API client can
             * communicate with the SpiraPlan API and obtain a
             * valid response.
             */
        }
    }


    // ================================================================
    // API endpoint verification
    // ================================================================

    verification def VerifyAPIEndpointAvailability {
        doc /*
         * Verification method for demonstrating that an endpoint
         * defined by the SpiraPlan API specification can be
         * discovered and invoked.
         *
         * Expected evidence includes:
         *
         * - API specification;
         * - selected endpoint;
         * - API request;
         * - API response; and
         * - verification result.
         */
    }


    verification verifyAPIEndpointAvailability
        : VerifyAPIEndpointAvailability {

        doc /*
         * Applies VerifyAPIEndpointAvailability to demonstrate
         * satisfaction of the API endpoint availability
         * requirement.
         */

        subject api = spiraplan.api;

        objective {
            /*
             * Identify a documented endpoint from the SpiraPlan
             * API specification.
             *
             * Invoke the endpoint using an authorised client.
             *
             * Demonstrate that the endpoint produces a valid
             * response consistent with its API definition.
             */
        }
    }


    // ================================================================
    // Engineering artefact retrieval verification
    // ================================================================

    verification def VerifyEngineeringArtifactRetrieval {
        doc /*
         * Verification method for demonstrating that engineering
         * information can be retrieved from SpiraPlan for use by
         * the OT MBSE environment.
         *
         * Expected evidence includes:
         *
         * - requested engineering artefact;
         * - API request;
         * - API response;
         * - returned engineering information; and
         * - verification result.
         */
    }


    verification verifyEngineeringArtifactRetrieval
        : VerifyEngineeringArtifactRetrieval {

        doc /*
         * Applies VerifyEngineeringArtifactRetrieval to
         * demonstrate satisfaction of the engineering artefact
         * retrieval requirement.
         */

        subject api = spiraplan.api;

        objective {
            /*
             * Request an engineering artefact from SpiraPlan.
             *
             * Demonstrate that the returned information identifies
             * the engineering artefact and provides engineering
             * information suitable for use by the OT MBSE
             * environment.
             */
        }
    }

}