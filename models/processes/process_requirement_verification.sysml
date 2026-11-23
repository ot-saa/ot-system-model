package OTProcessRequirementsVerification {

    doc /*
     * OT Process Requirements Verification process model.
     *
     * Source:
     * PRM51123 OT Process Requirements Verification, Version 1.0.
     * Date in force: 16 September 2026.
     *
     * Purpose:
     * Represent the planning, execution, independent verification,
     * reporting, monitoring and deviation-management activities used
     * to verify compliance with OT Process Requirements.
     *
     * Modelling intent:
     * - Preserve the intent and principal flow of PRM51123.
     * - Make roles, inputs, outputs and decisions explicit.
     * - Support traceability between the procedure, project activities,
     *   verification evidence and compliance outcomes.
     * - Provide a reusable process definition for project-specific use.
     *
     * Governance:
     * The controlled procedure remains the authoritative source.
     * This model is a structured representation and does not replace,
     * amend or reinterpret the controlled procedure.
     */


    // ================================================================
    // Enumerations
    // ================================================================

    enum def VerificationStatus {
        notStarted;
        planned;
        inProgress;
        incomplete;
        complete;
    }

    enum def ComplianceStatus {
        notAssessed;
        compliant;
        nonCompliant;
        deviationApproved;
    }

    enum def LifecycleStage {
        projectInitiation;
        systemRequirementsReview;
        preliminaryDesignReview;
        criticalDesignReview;
        engineeringReviewBoard;
        operationalSystemsArchitectureReviewBoard;
        operations;
        maintenance;
    }


    // ================================================================
    // Roles
    // ================================================================

    part def EngineeringRole {
        doc /*
         * Role participating in the Process Requirements
         * Verification process.
         */
    }

    part def EngineeringManager :> EngineeringRole {
        doc /*
         * Accountable for execution of compliance verification,
         * publication of compliance reporting and management of
         * compliance deviations.
         */
    }

    part def SystemsAssuranceManager :> EngineeringRole {
        doc /*
         * Accountable for verification planning, independent
         * evidence verification and ongoing compliance monitoring.
         */
    }

    part def SystemsAssuranceEngineer :> EngineeringRole {
        doc /*
         * Prepares Verification Plans, independently verifies
         * evidence and results, prepares reports and monitors
         * compliance status.
         */
    }

    part def LeadEngineer :> EngineeringRole {
        doc /*
         * Provides project inputs, executes applicable Verification
         * Cases, produces evidence and supports compliance reporting.
         */
    }

    part def SubjectMatterExpert :> EngineeringRole {
        doc /*
         * Provides specialist input and assesses relevant technical
         * evidence, reports and compliance deviations.
         */
    }

    part def SystemsArchitect :> SubjectMatterExpert {
        doc /*
         * Provides architecture expertise and supports development
         * and assessment of architecture verification evidence.
         */
    }

    part def SecurityArchitect :> SubjectMatterExpert {
        doc /*
         * Provides cyber-security guidance and assurance input.
         */
    }

    part def SystemsInterfaceIntegrationManager
        :> SubjectMatterExpert {

        doc /*
         * Provides systems engineering, integration, interface
         * management and project-tailoring guidance.
         */
    }


    // ================================================================
    // Process information
    // ================================================================

    item def ProjectInitiationInformation {
        attribute projectIdentifier : String;
        attribute projectName : String;
    }

    item def ProjectScope {
        attribute description : String;
    }

    item def JudgementOfSignificance {
        attribute reference : String;
    }

    item def TechnicalPlanningOutput {
        attribute reference : String;
    }

    item def ProjectTailoringDecision {
        attribute reference : String;
    }

    item def AssuranceRequirement {
        attribute identifier : String;
    }

    item def ProcessRequirement {
        doc /*
         * An action or step required to deliver a product that does
         * not exist within the finished product.
         */

        attribute identifier : String;
        attribute statement : String;
        attribute applicable : Boolean;
    }

    item def VerificationCriterion {
        attribute identifier : String;
        attribute statement : String;
    }

    item def VerificationCase {
        attribute identifier : String;
        attribute name : String;
    }

    item def VerificationPlan {
        attribute identifier : String;
        attribute endorsed : Boolean;
    }

    item def EngineeringArtifact {
        attribute identifier : String;
        attribute title : String;
        attribute revision : String;
    }

    item def VerificationEvidence {
        doc /*
         * Documented information providing objective proof that a
         * requirement has been verified and satisfied against
         * defined verification criteria.
         */

        attribute identifier : String;
        attribute reference : String;
        attribute available : Boolean;
        attribute adequate : Boolean;
        attribute complete : Boolean;
    }

    item def VerificationRecord {
        attribute identifier : String;
        attribute status : VerificationStatus;
        attribute evidenceSupported : Boolean;
    }

    item def RequirementsVerificationTraceabilityMatrix {
        attribute identifier : String;
        attribute current : Boolean;
    }

    item def VerificationFinding {
        attribute identifier : String;
        attribute description : String;
        attribute resolved : Boolean;
    }

    item def CorrectiveAction {
        attribute identifier : String;
        attribute description : String;
        attribute complete : Boolean;
    }

    item def NonComplianceRecord {
        attribute identifier : String;
        attribute description : String;
        attribute resolved : Boolean;
    }

    item def ComplianceDeviation {
        attribute identifier : String;
        attribute justification : String;
        attribute approved : Boolean;
    }

    item def VerificationCompletenessDecision {
        attribute complete : Boolean;
    }

    item def ComplianceReassessmentDecision {
        attribute required : Boolean;
        attribute rationale : String;
    }

    item def ProcessRequirementVerificationReport {
        attribute identifier : String;
        attribute endorsed : Boolean;
        attribute published : Boolean;
    }

    item def ComplianceStatusRecord {
        attribute status : ComplianceStatus;
        attribute endorsed : Boolean;
        attribute published : Boolean;
    }

    item def GovernanceReviewOutcome {
        attribute forum : String;
        attribute reference : String;
    }

    item def ComplianceMonitoringRecord {
        attribute identifier : String;
    }


    // ================================================================
    // 7.1 Prepare Verification Plan
    // ================================================================

    action def ProvideProjectInputs {
        doc /*
         * The Lead Engineer provides the project information needed
         * to initiate Process Requirements verification planning.
         */

        in projectInitiation : ProjectInitiationInformation;
        in projectScope : ProjectScope;
        in judgementOfSignificance : JudgementOfSignificance;
        in technicalPlanning : TechnicalPlanningOutput;
        in tailoringDecision : ProjectTailoringDecision;
        in assuranceRequirement : AssuranceRequirement;

        out planningInputs : ProjectInitiationInformation;
    }

    action def PrepareVerificationPlan {
        doc /*
         * The Systems Assurance Engineer identifies applicable
         * Process Requirements and defines how compliance will be
         * assessed across applicable lifecycle stages.
         */

        in planningInputs : ProjectInitiationInformation;
        in processRequirements : ProcessRequirement;
        in verificationCases : VerificationCase;
        in availableEvidence : VerificationEvidence;

        out verificationPlan : VerificationPlan;
    }

    action def ReviewVerificationPlan {
        doc /*
         * Subject Matter Experts and the Lead Engineer review the
         * proposed verification approach, applicability, lifecycle
         * alignment, responsibilities and deliverables.
         */

        in verificationPlan : VerificationPlan;
        in processRequirements : ProcessRequirement;

        out reviewedVerificationPlan : VerificationPlan;
    }

    action def EndorseVerificationPlan {
        doc /*
         * The Lead Engineer endorses the Verification Plan for
         * execution.
         */

        in reviewedVerificationPlan : VerificationPlan;

        out endorsedVerificationPlan : VerificationPlan;
    }

    action def PlanProcessRequirementVerification {
        in projectInitiation : ProjectInitiationInformation;
        in projectScope : ProjectScope;
        in judgementOfSignificance : JudgementOfSignificance;
        in technicalPlanning : TechnicalPlanningOutput;
        in tailoringDecision : ProjectTailoringDecision;
        in assuranceRequirement : AssuranceRequirement;
        in processRequirements : ProcessRequirement;
        in verificationCases : VerificationCase;
        in availableEvidence : VerificationEvidence;

        out endorsedVerificationPlan : VerificationPlan;

        action provideInputs : ProvideProjectInputs;
        action preparePlan : PrepareVerificationPlan;
        action reviewPlan : ReviewVerificationPlan;
        action endorsePlan : EndorseVerificationPlan;

        first provideInputs then preparePlan;
        first preparePlan then reviewPlan;
        first reviewPlan then endorsePlan;

        flow provideInputs.planningInputs
            to preparePlan.planningInputs;

        flow preparePlan.verificationPlan
            to reviewPlan.verificationPlan;

        flow reviewPlan.reviewedVerificationPlan
            to endorsePlan.reviewedVerificationPlan;

        flow endorsePlan.endorsedVerificationPlan
            to endorsedVerificationPlan;
    }


    // ================================================================
    // 7.2 Execute Process Requirements Verification
    // ================================================================

    action def ExecuteApplicableVerificationCases {
        doc /*
         * The Lead Engineer, or contractor where applicable,
         * executes applicable Verification Cases, produces evidence,
         * records status and identifies gaps or non-compliance.
         */

        in verificationPlan : VerificationPlan;
        in processRequirements : ProcessRequirement;
        in verificationCases : VerificationCase;
        in engineeringArtifacts : EngineeringArtifact;

        out evidence : VerificationEvidence;
        out verificationRecords : VerificationRecord;
        out nonComplianceRecords : NonComplianceRecord;
        out updatedRVTM : RequirementsVerificationTraceabilityMatrix;
    }

    action def AddressNonComplianceAndGaps {
        doc /*
         * Identified non-compliances, gaps, incomplete activities
         * and evidence deficiencies are reviewed and corrected
         * before the applicable Verification Cases are re-executed.
         */

        in findings : VerificationFinding;
        in nonComplianceRecords : NonComplianceRecord;

        out correctiveActions : CorrectiveAction;
        out resolvedFindings : VerificationFinding;
    }

    action def ExecuteProcessRequirementVerification {
        in verificationPlan : VerificationPlan;
        in processRequirements : ProcessRequirement;
        in verificationCases : VerificationCase;
        in engineeringArtifacts : EngineeringArtifact;

        out evidence : VerificationEvidence;
        out verificationRecords : VerificationRecord;
        out nonComplianceRecords : NonComplianceRecord;
        out updatedRVTM : RequirementsVerificationTraceabilityMatrix;

        action executeCases : ExecuteApplicableVerificationCases;

        flow executeCases.evidence to evidence;
        flow executeCases.verificationRecords to verificationRecords;
        flow executeCases.nonComplianceRecords to nonComplianceRecords;
        flow executeCases.updatedRVTM to updatedRVTM;
    }


    // ================================================================
    // 7.3 Verify Process Requirements Compliance Evidence
    // ================================================================

    action def IndependentlyVerifyComplianceEvidence {
        doc /*
         * The Systems Assurance Engineer independently assesses
         * traceability, adequacy and completeness of evidence and
         * recorded verification outcomes.
         */

        in processRequirements : ProcessRequirement;
        in verificationCases : VerificationCase;
        in evidence : VerificationEvidence;
        in verificationRecords : VerificationRecord;
        in verificationReport : ProcessRequirementVerificationReport;
        in rvtm : RequirementsVerificationTraceabilityMatrix;

        out verifiedEvidence : VerificationEvidence;
        out findings : VerificationFinding;
        out completenessDecision : VerificationCompletenessDecision;
    }

    action def ConfirmComplianceVerificationCompleteness {
        doc /*
         * Where verification is complete, the completion status,
         * approved tracking tool and RVTM are updated.
         */

        in verifiedEvidence : VerificationEvidence;
        in completenessDecision : VerificationCompletenessDecision;
        in verificationRecords : VerificationRecord;
        in rvtm : RequirementsVerificationTraceabilityMatrix;

        out completedVerificationRecords : VerificationRecord;
        out updatedRVTM : RequirementsVerificationTraceabilityMatrix;
    }

    action def VerifyComplianceEvidence {
        in processRequirements : ProcessRequirement;
        in verificationCases : VerificationCase;
        in evidence : VerificationEvidence;
        in verificationRecords : VerificationRecord;
        in verificationReport : ProcessRequirementVerificationReport;
        in rvtm : RequirementsVerificationTraceabilityMatrix;

        out verifiedEvidence : VerificationEvidence;
        out findings : VerificationFinding;
        out completenessDecision : VerificationCompletenessDecision;
        out completedVerificationRecords : VerificationRecord;
        out updatedRVTM : RequirementsVerificationTraceabilityMatrix;

        action verifyEvidence : IndependentlyVerifyComplianceEvidence;
        action confirmCompleteness
            : ConfirmComplianceVerificationCompleteness;

        first verifyEvidence then confirmCompleteness;

        flow verifyEvidence.verifiedEvidence
            to confirmCompleteness.verifiedEvidence;

        flow verifyEvidence.completenessDecision
            to confirmCompleteness.completenessDecision;

        flow verifyEvidence.verifiedEvidence to verifiedEvidence;
        flow verifyEvidence.findings to findings;
        flow verifyEvidence.completenessDecision
            to completenessDecision;

        flow confirmCompleteness.completedVerificationRecords
            to completedVerificationRecords;

        flow confirmCompleteness.updatedRVTM to updatedRVTM;
    }


    // ================================================================
    // 7.4 Generate Process Requirements Verification Reports
    // ================================================================

    action def GenerateVerificationReport {
        doc /*
         * The Systems Assurance Engineer prepares a report
         * summarising verification outcomes, compliance status,
         * gaps, deviations and outstanding actions.
         */

        in processRequirements : ProcessRequirement;
        in verifiedEvidence : VerificationEvidence;
        in verificationRecords : VerificationRecord;
        in rvtm : RequirementsVerificationTraceabilityMatrix;
        in nonComplianceRecords : NonComplianceRecord;
        in deviations : ComplianceDeviation;

        out verificationReport : ProcessRequirementVerificationReport;
    }

    action def ReviewVerificationReport {
        doc /*
         * Subject Matter Experts review the report and endorse the
         * reported compliance outcomes where adequately supported.
         */

        in verificationReport : ProcessRequirementVerificationReport;
        in verifiedEvidence : VerificationEvidence;

        out endorsedVerificationReport
            : ProcessRequirementVerificationReport;
    }

    action def ProvideGovernanceReviewInputs {
        doc /*
         * The Lead Engineer prepares and presents governance inputs
         * where review by the ERB or OSARB is required.
         */

        in verificationReport : ProcessRequirementVerificationReport;
        in verifiedEvidence : VerificationEvidence;

        out governanceReviewOutcome : GovernanceReviewOutcome;
    }

    action def PublishComplianceStatus {
        doc /*
         * The Systems Assurance Engineer publishes the latest
         * endorsed compliance position and maintains its supporting
         * records.
         */

        in verificationReport : ProcessRequirementVerificationReport;
        in verificationRecords : VerificationRecord;

        out complianceStatus : ComplianceStatusRecord;
    }

    action def ReportProcessRequirementVerification {
        in processRequirements : ProcessRequirement;
        in verifiedEvidence : VerificationEvidence;
        in verificationRecords : VerificationRecord;
        in rvtm : RequirementsVerificationTraceabilityMatrix;
        in nonComplianceRecords : NonComplianceRecord;
        in deviations : ComplianceDeviation;

        out endorsedVerificationReport
            : ProcessRequirementVerificationReport;

        out governanceReviewOutcome : GovernanceReviewOutcome;
        out publishedComplianceStatus : ComplianceStatusRecord;

        action generateReport : GenerateVerificationReport;
        action reviewReport : ReviewVerificationReport;
        action provideGovernanceInputs : ProvideGovernanceReviewInputs;
        action publishStatus : PublishComplianceStatus;

        first generateReport then reviewReport;
        first reviewReport then provideGovernanceInputs;
        first reviewReport then publishStatus;

        flow generateReport.verificationReport
            to reviewReport.verificationReport;

        flow reviewReport.endorsedVerificationReport
            to provideGovernanceInputs.verificationReport;

        flow reviewReport.endorsedVerificationReport
            to publishStatus.verificationReport;

        flow reviewReport.endorsedVerificationReport
            to endorsedVerificationReport;

        flow provideGovernanceInputs.governanceReviewOutcome
            to governanceReviewOutcome;

        flow publishStatus.complianceStatus
            to publishedComplianceStatus;
    }


    // ================================================================
    // 7.5 Monitor Compliance
    // ================================================================

    action def MonitorComplianceThroughLifecycle {
        doc /*
         * The Systems Assurance Engineer monitors compliance at
         * engineering review gates and following relevant project
         * changes.
         */

        in verificationReport : ProcessRequirementVerificationReport;
        in complianceStatus : ComplianceStatusRecord;
        in verificationRecords : VerificationRecord;
        in rvtm : RequirementsVerificationTraceabilityMatrix;
        in nonComplianceRecords : NonComplianceRecord;
        in deviations : ComplianceDeviation;
        in governanceOutcome : GovernanceReviewOutcome;

        out monitoringRecord : ComplianceMonitoringRecord;
    }

    action def IdentifyComplianceDeviationsAndGaps {
        doc /*
         * Monitoring outcomes are assessed to identify gaps,
         * potential deviations and impacts on previously verified
         * compliance outcomes.
         */

        in monitoringRecord : ComplianceMonitoringRecord;
        in processRequirements : ProcessRequirement;

        out findings : VerificationFinding;
        out deviations : ComplianceDeviation;
    }

    action def MonitorProcessRequirementCompliance {
        in verificationReport : ProcessRequirementVerificationReport;
        in complianceStatus : ComplianceStatusRecord;
        in verificationRecords : VerificationRecord;
        in rvtm : RequirementsVerificationTraceabilityMatrix;
        in nonComplianceRecords : NonComplianceRecord;
        in deviations : ComplianceDeviation;
        in governanceOutcome : GovernanceReviewOutcome;
        in processRequirements : ProcessRequirement;

        out monitoringRecord : ComplianceMonitoringRecord;
        out identifiedFindings : VerificationFinding;
        out identifiedDeviations : ComplianceDeviation;

        action monitorCompliance : MonitorComplianceThroughLifecycle;
        action identifyGaps : IdentifyComplianceDeviationsAndGaps;

        first monitorCompliance then identifyGaps;

        flow monitorCompliance.monitoringRecord
            to identifyGaps.monitoringRecord;

        flow monitorCompliance.monitoringRecord to monitoringRecord;
        flow identifyGaps.findings to identifiedFindings;
        flow identifyGaps.deviations to identifiedDeviations;
    }


    // ================================================================
    // 7.6 Manage Compliance Deviations
    // ================================================================

    action def AssessAndApproveComplianceDeviations {
        doc /*
         * Subject Matter Experts assess deviations within their
         * engineering permissions and determine whether additional
         * verification or reassessment is required.
         */

        in deviations : ComplianceDeviation;
        in verificationReport : ProcessRequirementVerificationReport;
        in evidence : VerificationEvidence;
        in rvtm : RequirementsVerificationTraceabilityMatrix;
        in processRequirements : ProcessRequirement;
        in tailoringDecisions : ProjectTailoringDecision;

        out approvedDeviations : ComplianceDeviation;
        out reassessmentDecision : ComplianceReassessmentDecision;
    }

    action def ManageComplianceDeviations {
        in deviations : ComplianceDeviation;
        in verificationReport : ProcessRequirementVerificationReport;
        in evidence : VerificationEvidence;
        in rvtm : RequirementsVerificationTraceabilityMatrix;
        in processRequirements : ProcessRequirement;
        in tailoringDecisions : ProjectTailoringDecision;

        out approvedDeviations : ComplianceDeviation;
        out reassessmentDecision : ComplianceReassessmentDecision;

        action assessDeviations
            : AssessAndApproveComplianceDeviations;

        flow assessDeviations.approvedDeviations
            to approvedDeviations;

        flow assessDeviations.reassessmentDecision
            to reassessmentDecision;
    }


    // ================================================================
    // End-to-end procedure
    // ================================================================

    action def ProcessRequirementsVerificationProcedure {
        doc /*
         * End-to-end Process Requirements Verification lifecycle.
         *
         * Normal flow:
         * Plan -> Execute -> Verify -> Report -> Monitor -> Manage
         *
         * Corrective loop:
         * Incomplete verification returns to execution after gaps
         * and deficiencies are addressed.
         *
         * Reassessment loop:
         * An approved compliance deviation, project change or gap
         * may trigger renewed verification planning.
         */

        in projectInitiation : ProjectInitiationInformation;
        in projectScope : ProjectScope;
        in judgementOfSignificance : JudgementOfSignificance;
        in technicalPlanning : TechnicalPlanningOutput;
        in tailoringDecision : ProjectTailoringDecision;
        in assuranceRequirement : AssuranceRequirement;
        in processRequirements : ProcessRequirement;
        in verificationCases : VerificationCase;
        in engineeringArtifacts : EngineeringArtifact;

        out complianceStatus : ComplianceStatusRecord;
        out verificationReport : ProcessRequirementVerificationReport;
        out monitoringRecord : ComplianceMonitoringRecord;
        out reassessmentDecision : ComplianceReassessmentDecision;

        action plan : PlanProcessRequirementVerification;
        action execute : ExecuteProcessRequirementVerification;
        action verify : VerifyComplianceEvidence;
        action report : ReportProcessRequirementVerification;
        action monitor : MonitorProcessRequirementCompliance;
        action manageDeviations : ManageComplianceDeviations;
        action addressGaps : AddressNonComplianceAndGaps;

        first plan then execute;
        first execute then verify;
        first verify then report;
        first report then monitor;
        first monitor then manageDeviations;

        flow plan.endorsedVerificationPlan
            to execute.verificationPlan;

        flow execute.evidence to verify.evidence;
        flow execute.verificationRecords
            to verify.verificationRecords;
        flow execute.updatedRVTM to verify.rvtm;

        flow verify.verifiedEvidence to report.verifiedEvidence;
        flow verify.completedVerificationRecords
            to report.verificationRecords;
        flow verify.updatedRVTM to report.rvtm;

        flow report.endorsedVerificationReport
            to monitor.verificationReport;
        flow report.publishedComplianceStatus
            to monitor.complianceStatus;
        flow report.governanceReviewOutcome
            to monitor.governanceOutcome;

        flow monitor.identifiedDeviations
            to manageDeviations.deviations;
        flow monitor.monitoringRecord to monitoringRecord;

        flow manageDeviations.reassessmentDecision
            to reassessmentDecision;

        flow report.publishedComplianceStatus
            to complianceStatus;

        flow report.endorsedVerificationReport
            to verificationReport;

        flow verify.findings to addressGaps.findings;
        flow execute.nonComplianceRecords
            to addressGaps.nonComplianceRecords;
    }


    // ================================================================
    // Project-specific usage
    // ================================================================

    action processRequirementVerification
        : ProcessRequirementsVerificationProcedure {

        doc /*
         * Reusable invocation of the PRM51123 process.
         *
         * A project-specific model should bind this usage to:
         * - the applicable project;
         * - its Process Requirements;
         * - its lifecycle stages;
         * - its Verification Cases;
         * - its engineering evidence;
         * - its approved tracking tool; and
         * - its nominated responsible and accountable roles.
         */
    }

}