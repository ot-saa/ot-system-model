/*
 * AI GENERATED EXAMPLE
 *
 * File: 03_Product_Lines/Systems Architecture and Assurance/ot-system-model-repository.sysml
 * Purpose: Model the OT System Model repository structure, contribution workflow,
 *          review responsibilities, and engineering governance.
 *
 * This model is a draft and should be reviewed against the applicable
 * Engineering Management Manual, repository procedures, and SysML v2 tool syntax.
 */

package 'OT System Model Repository' {

    // -------------------------------------------------------------------------
    // Definitions
    // -------------------------------------------------------------------------

    enum def RepositoryItemStatus {
        draft;
        inReview;
        accepted;
        baselined;
        superseded;
        rejected;
    }

    enum def ReviewDecision {
        pending;
        accepted;
        acceptedWithComments;
        reworkRequired;
        rejected;
    }

    enum def RepositoryRoleKind {
        contributor;
        reviewer;
        repositoryMaintainer;
        configurationManager;
        governanceAuthority;
    }

    part def Person {
        attribute name : String;
    }

    part def RepositoryRole {
        attribute roleKind : RepositoryRoleKind;
        attribute responsibilities : String;
    }

    part def RepositoryParticipant {
        part person : Person;
        part role : RepositoryRole[1..*];
    }

    part def RepositoryArea {
        attribute directoryName : String;
        attribute purpose : String;
        attribute controlled : Boolean = true;
    }

    part def ModelArtifact {
        attribute artifactName : String;
        attribute relativePath : String;
        attribute status : RepositoryItemStatus = RepositoryItemStatus::draft;
        attribute version : String;
        attribute owner : String;
    }

    part def ReviewRecord {
        attribute reviewId : String;
        attribute decision : ReviewDecision = ReviewDecision::pending;
        attribute commentsResolved : Boolean = false;
        attribute reviewEvidence : String;
    }

    part def Baseline {
        attribute baselineId : String;
        attribute baselineDate : String;
        attribute approved : Boolean = false;
    }

    part def GovernanceControl {
        attribute controlName : String;
        attribute controlObjective : String;
        attribute evidenceRequired : String;
    }

    // -------------------------------------------------------------------------
    // Repository structure
    // -------------------------------------------------------------------------

    part repository {
        attribute repositoryName : String = "ot-system-model";
        attribute repositoryRoot : String = "C:/repos/ot-saa/ot-system-model";
        attribute repositoryPurpose : String =
            "Governed repository for OT system architecture, assurance and related engineering model information.";

        part governance : RepositoryArea {
            directoryName = "00_Governance";
            purpose = "Repository governance, contribution rules, review criteria, approvals and configuration controls.";
        }

        part standards : RepositoryArea {
            directoryName = "01_Standards";
            purpose = "Applicable engineering, architecture, assurance and modelling standards.";
        }

        part referenceModels : RepositoryArea {
            directoryName = "02_Reference_Models";
            purpose = "Reusable reference architectures, patterns, definitions and model libraries.";
        }

        part productLines : RepositoryArea {
            directoryName = "03_Product_Lines";
            purpose = "Models for OT product lines, including Systems Architecture and Assurance.";
        }

        part integration : RepositoryArea {
            directoryName = "04_Integration";
            purpose = "Interfaces, dependencies and integration relationships across systems and product lines.";
        }

        part scenarios : RepositoryArea {
            directoryName = "05_Scenarios";
            purpose = "Operational, engineering, assurance and lifecycle scenarios.";
        }

        part requirements : RepositoryArea {
            directoryName = "06_Requirements";
            purpose = "Repository-level and model-related requirements with traceability.";
        }

        part userViews : RepositoryArea {
            directoryName = "07_User_Views";
            purpose = "Published stakeholder views generated from accepted repository content.";
        }

        part examples : RepositoryArea {
            directoryName = "examples";
            purpose = "Non-authoritative examples used to demonstrate modelling conventions and contribution patterns.";
            controlled = false;
        }

        part readme : ModelArtifact {
            artifactName = "README.md";
            relativePath = "README.md";
            owner = "Repository Maintainer";
            version = "draft";
        }

        part repositoryModel : ModelArtifact {
            artifactName = "ot-system-model-repository.sysml";
            relativePath = "03_Product_Lines/Systems Architecture and Assurance/ot-system-model-repository.sysml";
            owner = "Systems Architecture and Assurance";
            version = "0.1";
        }
    }

    // -------------------------------------------------------------------------
    // Repository participants and responsibilities
    // -------------------------------------------------------------------------

    part contributorRole : RepositoryRole {
        roleKind = RepositoryRoleKind::contributor;
        responsibilities =
            "Create or update model content; follow repository conventions; provide source, rationale and traceability; address review comments.";
    }

    part reviewerRole : RepositoryRole {
        roleKind = RepositoryRoleKind::reviewer;
        responsibilities =
            "Review technical correctness, completeness, consistency, traceability and compliance with repository conventions.";
    }

    part repositoryMaintainerRole : RepositoryRole {
        roleKind = RepositoryRoleKind::repositoryMaintainer;
        responsibilities =
            "Maintain repository structure, contribution guidance, access, automation, model integrity and published views.";
    }

    part configurationManagerRole : RepositoryRole {
        roleKind = RepositoryRoleKind::configurationManager;
        responsibilities =
            "Control versions and baselines; maintain configuration status; ensure accepted content is uniquely identified and reproducible.";
    }

    part governanceAuthorityRole : RepositoryRole {
        roleKind = RepositoryRoleKind::governanceAuthority;
        responsibilities =
            "Approve governance arrangements, resolve escalated matters and authorise controlled baselines or significant repository changes.";
    }

    part contributors : RepositoryParticipant[1..*] {
        part role : RepositoryRole[1] = contributorRole;
    }

    part reviewers : RepositoryParticipant[1..*] {
        part role : RepositoryRole[1] = reviewerRole;
    }

    part repositoryMaintainers : RepositoryParticipant[1..*] {
        part role : RepositoryRole[1] = repositoryMaintainerRole;
    }

    part configurationManagers : RepositoryParticipant[1..*] {
        part role : RepositoryRole[1] = configurationManagerRole;
    }

    part governanceAuthorities : RepositoryParticipant[1..*] {
        part role : RepositoryRole[1] = governanceAuthorityRole;
    }

    // -------------------------------------------------------------------------
    // Contribution, review, acceptance and baseline process
    // -------------------------------------------------------------------------

    action def ContributeRepositoryContent {
        in contributor : RepositoryParticipant;
        in targetArea : RepositoryArea;
        inout artifact : ModelArtifact;

        first start;
        then validateContribution;
        then submitForReview;
        then done;
    }

    action def ReviewRepositoryContent {
        in reviewer : RepositoryParticipant;
        in artifact : ModelArtifact;
        out review : ReviewRecord;

        first start;
        then assessTechnicalContent;
        then assessTraceability;
        then assessRepositoryConformance;
        then recordDecision;
        then done;
    }

    action def AcceptRepositoryContent {
        in review : ReviewRecord;
        inout artifact : ModelArtifact;

        first confirmReviewComplete;
        then confirmCommentsResolved;
        then setAcceptedStatus;
        then done;
    }

    action def EstablishRepositoryBaseline {
        in configurationManager : RepositoryParticipant;
        in acceptedArtifacts : ModelArtifact[1..*];
        out baseline : Baseline;

        first verifyAcceptedStatus;
        then identifyConfigurationItems;
        then createBaseline;
        then authoriseBaseline;
        then done;
    }

    action repositoryContributionWorkflow {
        part candidateArtifact : ModelArtifact;
        part reviewRecord : ReviewRecord;
        part controlledBaseline : Baseline;

        action contribute : ContributeRepositoryContent {
            in contributor = contributors;
            in targetArea = repository.productLines;
            inout artifact = candidateArtifact;
        }

        then action review : ReviewRepositoryContent {
            in reviewer = reviewers;
            in artifact = candidateArtifact;
            out review = reviewRecord;
        }

        then action accept : AcceptRepositoryContent {
            in review = reviewRecord;
            inout artifact = candidateArtifact;
        }

        then action baseline : EstablishRepositoryBaseline {
            in configurationManager = configurationManagers;
            in acceptedArtifacts = candidateArtifact;
            out baseline = controlledBaseline;
        }
    }

    // -------------------------------------------------------------------------
    // Governance controls
    // -------------------------------------------------------------------------

    part contributionControl : GovernanceControl {
        controlName = "Repository Contribution";
        controlObjective = "Only structured, attributable and traceable engineering content is submitted.";
        evidenceRequired = "Contributor identity, change description, rationale, source and affected model elements.";
    }

    part reviewControl : GovernanceControl {
        controlName = "Repository Review and Acceptance";
        controlObjective = "Repository content is independently reviewed before it is treated as accepted engineering information.";
        evidenceRequired = "Named reviewer, review record, decision and disposition of comments.";
    }

    part baselineControl : GovernanceControl {
        controlName = "Baseline and Configuration Management";
        controlObjective = "Accepted repository content is versioned, reproducible and protected from uncontrolled change.";
        evidenceRequired = "Baseline identifier, included configuration items, approval and change history.";
    }

    part accessControl : GovernanceControl {
        controlName = "Access and Change Control";
        controlObjective = "Repository permissions support contribution while protecting controlled branches and baselines.";
        evidenceRequired = "Role-based permissions, protected branch settings and approved merge history.";
    }

    part publicationControl : GovernanceControl {
        controlName = "Stakeholder View Publication";
        controlObjective = "Published views are generated from accepted repository content and are not a second authoring source.";
        evidenceRequired = "Source model reference, baseline reference and publication record.";
    }

    // -------------------------------------------------------------------------
    // Repository requirements
    // -------------------------------------------------------------------------

    requirement def RepositoryContributionRequirement {
        doc /* Repository changes shall identify the contributor, affected artifact,
               change rationale and supporting source or evidence. */
    }

    requirement def IndependentReviewRequirement {
        doc /* Controlled model content shall be reviewed by an authorised reviewer
               before its status is changed to accepted. */
    }

    requirement def BaselineRequirement {
        doc /* Accepted model content shall be included in an identified baseline
               before it is used as an authoritative engineering reference. */
    }

    requirement def PublishedViewRequirement {
        doc /* Stakeholder views shall be generated from accepted or baselined
               repository content and shall identify their source baseline. */
    }

    requirement repositoryRequirements {
        requirement contribution : RepositoryContributionRequirement;
        requirement independentReview : IndependentReviewRequirement;
        requirement baseline : BaselineRequirement;
        requirement publishedView : PublishedViewRequirement;
    }
}
