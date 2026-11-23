package vANDvProcess {

    doc /*
    Test process and test artefacts aligned with the
    Engineering Management Manual (EMM).

    Purpose:
    - Identify the engineering artefacts produced by testing.
    - Show where artefacts mature across engineering gates.
    - Distinguish continuously developed artefacts from
      point-in-time gate evidence.
    */


    //=========================================================
    // Artefact Definitions
    //=========================================================

    enum def ArtefactLifecycle {
        continuouslyMatured;
        continuouslyGenerated;
        gateEvidence;
    }

    part def EngineeringArtefact {
        attribute identifier : String;
        attribute lifecycle : ArtefactLifecycle;
    }


    //=========================================================
    // Continuously Matured Artefacts
    //=========================================================

    part vAndVManagementPlan : EngineeringArtefact {
        identifier = "TST-01";
        lifecycle = ArtefactLifecycle::continuouslyMatured;
        doc /*
        Verification and Validation Management Plan.
        Established early and progressively maintained.
        */
    }

    part rvtm : EngineeringArtefact {
        identifier = "TST-02";
        lifecycle = ArtefactLifecycle::continuouslyMatured;
        doc /*
        Requirements Verification Traceability Matrix.
        Progressively populated as requirements, verification
        methods and verification evidence mature.
        */
    }

    part testPlan : EngineeringArtefact {
        identifier = "TST-03";
        lifecycle = ArtefactLifecycle::continuouslyMatured;
        doc /* Defines the planned approach to testing. */
    }

    part testConditions : EngineeringArtefact {
        identifier = "TST-04";
        lifecycle = ArtefactLifecycle::continuouslyMatured;
        doc /* Defines test conditions and acceptance criteria. */
    }

    part testCases : EngineeringArtefact {
        identifier = "TST-05";
        lifecycle = ArtefactLifecycle::continuouslyMatured;
        doc /* Defines test cases derived from verification needs. */
    }

    part testProcedures : EngineeringArtefact {
        identifier = "TST-06";
        lifecycle = ArtefactLifecycle::continuouslyMatured;
        doc /* Defines executable test procedures and scripts. */
    }

    part testData : EngineeringArtefact {
        identifier = "TST-07";
        lifecycle = ArtefactLifecycle::continuouslyMatured;
        doc /* Defines data required to perform testing. */
    }

    part testEnvironmentRecord : EngineeringArtefact {
        identifier = "TST-08";
        lifecycle = ArtefactLifecycle::continuouslyMatured;
        doc /*
        Records the test environment and configuration
        against which testing is performed.
        */
    }


    //=========================================================
    // Gate Evidence
    //=========================================================

    part testReadinessReviewRecord : EngineeringArtefact {
        identifier = "TST-09";
        lifecycle = ArtefactLifecycle::gateEvidence;
        doc /* Records evidence and outcome of Test Readiness Review. */
    }


    //=========================================================
    // Continuously Generated During Test Execution
    //=========================================================

    part testExecutionRecord : EngineeringArtefact {
        identifier = "TST-10";
        lifecycle = ArtefactLifecycle::continuouslyGenerated;
        doc /*
        Records execution of individual tests and actual results.
        Generated as testing progresses.
        */
    }

    part defectIncidentRecord : EngineeringArtefact {
        identifier = "TST-11";
        lifecycle = ArtefactLifecycle::continuouslyGenerated;
        doc /*
        Records defects and incidents identified during testing.
        Generated and updated throughout testing.
        */
    }


    //=========================================================
    // Test Reports
    //=========================================================

    part systemTestReport : EngineeringArtefact {
        identifier = "TST-12";
        lifecycle = ArtefactLifecycle::gateEvidence;
        doc /* Consolidates System Test results. */
    }

    part systemIntegrationTestReport : EngineeringArtefact {
        identifier = "TST-13";
        lifecycle = ArtefactLifecycle::gateEvidence;
        doc /* Consolidates System Integration Test results. */
    }

    part operationalAcceptanceTestReport : EngineeringArtefact {
        identifier = "TST-14";
        lifecycle = ArtefactLifecycle::gateEvidence;
        doc /* Consolidates Operational Acceptance Test results. */
    }


    //=========================================================
    // Test Completion
    //=========================================================

    part testCompletionSummary : EngineeringArtefact {
        identifier = "TST-15";
        lifecycle = ArtefactLifecycle::gateEvidence;
        doc /*
        Consolidates test completion status, coverage,
        outstanding defects, deviations and residual risks.
        */
    }

    part engineeringAssuranceReport : EngineeringArtefact {
        identifier = "TST-16";
        lifecycle = ArtefactLifecycle::gateEvidence;
        doc /*
        Provides the engineering assurance conclusion supported
        by the accumulated verification evidence.
        */
    }


    //=========================================================
    // Test Process
    //=========================================================

    action def PlanTesting;
    action def MonitorAndControlTesting;
    action def AnalyseTesting;
    action def DesignTesting;
    action def ImplementTesting;
    action def ExecuteTesting;
    action def CompleteTesting;

    action testProcess {

        action planTesting : PlanTesting;
        action monitorTesting : MonitorAndControlTesting;
        action analyseTesting : AnalyseTesting;
        action designTesting : DesignTesting;
        action implementTesting : ImplementTesting;
        action executeTesting : ExecuteTesting;
        action completeTesting : CompleteTesting;

        first planTesting
            then analyseTesting
            then designTesting
            then implementTesting
            then executeTesting
            then completeTesting;
    }

}