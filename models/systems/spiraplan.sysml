package SpiraPlan {

    doc /*
     * SpiraPlan definition for the OT System Model.
     *
     * Purpose
     * -------
     * Defines SpiraPlan as an external engineering lifecycle
     * management system that supports the OT MBSE environment.
     *
     * This model does not represent the internal architecture
     * or implementation of SpiraPlan.
     *
     * It establishes the system boundary, engineering information
     * and API interface relevant to integration with the
     * OT System Model.
     */


    // ================================================================
    // Engineering information
    // ================================================================

    item def EngineeringArtifact {
        doc /*
         * Engineering information managed by SpiraPlan that may
         * be exchanged with the OT MBSE environment.
         */

        attribute identifier : String;
        attribute name : String;
    }

    item def Requirement :> EngineeringArtifact {
        doc /*
         * Requirement managed by SpiraPlan.
         */
    }

    item def VerificationCase :> EngineeringArtifact {
        doc /*
         * Verification case defining how a requirement
         * is intended to be verified.
         */
    }

    item def VerificationResult :> EngineeringArtifact {
        doc /*
         * Result produced by execution of verification.
         */
    }

    item def LifecycleRelease :> EngineeringArtifact {
        doc /*
         * Lifecycle or release information used to organise
         * engineering and assurance activities.
         */
    }


    // ================================================================
    // API interface
    // ================================================================

    port def SpiraPlanAPIPort {
        doc /*
         * Logical interface through which an authorised client
         * accesses engineering information managed by SpiraPlan.
         *
         * The interface represents engineering semantics rather
         * than individual REST resources or endpoints.
         */

        out item requirements : Requirement;
        out item verificationCases : VerificationCase;
        out item verificationResults : VerificationResult;
        out item lifecycleReleases : LifecycleRelease;
    }


    part def SpiraPlanAPI {
        doc /*
         * Programmatic interface provided by SpiraPlan for
         * authorised access to engineering information.
         */

        port api : SpiraPlanAPIPort;
    }


    // ================================================================
    // System definition
    // ================================================================

    part def SpiraPlan {
        doc /*
         * External engineering lifecycle management system used
         * to manage project engineering and assurance information.
         *
         * Within this model SpiraPlan is treated as an external
         * system. Only the behaviour and information relevant to
         * the OT MBSE interface are represented.
         */

        part api : SpiraPlanAPI;
    }


    part def OTSystemModelRepository {
        doc /*
         * Governed repository containing OT engineering model
         * information.
         *
         * Integration with external engineering systems occurs
         * through explicitly defined interfaces.
         */
    }


    // ================================================================
    // MBSE context
    // ================================================================

    part spiraplan : SpiraPlan;

    part otSystemModelRepository : OTSystemModelRepository;


    // ================================================================
    // Interface requirements
    // ================================================================

    requirement def APIAccessRequirement {
        doc /*
         * The SpiraPlan API shall provide an authorised
         * programmatic interface for accessing engineering
         * information managed by SpiraPlan.
         */

        subject api : SpiraPlanAPI;
    }


    requirement def APIEndpointAvailabilityRequirement {
        doc /*
         * The SpiraPlan API shall provide documented API
         * endpoints that can be discovered and invoked by an
         * authorised client.
         */

        subject api : SpiraPlanAPI;
    }


    requirement def EngineeringArtifactRetrievalRequirement {
        doc /*
         * The SpiraPlan API shall enable an authorised client
         * to retrieve engineering artefacts required by the
         * OT MBSE environment.
         */

        subject api : SpiraPlanAPI;
    }


    // ================================================================
    // Requirement usages
    // ================================================================

    requirement apiAccess : APIAccessRequirement {
        subject api = spiraplan.api;
    }


    requirement apiEndpointAvailability
        : APIEndpointAvailabilityRequirement {

        subject api = spiraplan.api;
    }


    requirement engineeringArtifactRetrieval
        : EngineeringArtifactRetrievalRequirement {

        subject api = spiraplan.api;
    }

}