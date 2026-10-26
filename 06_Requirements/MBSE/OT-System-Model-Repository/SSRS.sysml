/*
 * AI GENERATED EXAMPLE
 *
 * File:
 * 06_Requirements/MBSE/OT-System-Model-Repository/SSRS.sysml
 *
 * Title:
 * OT System Model Repository
 * Subsystem Requirements Specification
 *
 * Purpose:
 * Defines the subsystem requirements allocated to the OT System Model
 * Repository for contributing, reviewing and managing engineering artefacts.
 *
 * Scope:
 * This specification covers the repository capability required to:
 *
 *   1. Store engineering artefacts.
 *   2. Identify contributors and changes.
 *   3. Maintain version and configuration status.
 *   4. support structured repository contribution.
 *   5. Support review and acceptance of contributions.
 *   6. Protect public and controlled engineering information.
 *
 * This draft intentionally excludes broader MBSE capabilities such as:
 *
 *   - Change impact assessment.
 *   - Stakeholder view generation.
 *   - Cross-domain model traceability.
 *   - Detailed architecture analysis.
 *   - Requirements verification management.
 *
 * These capabilities may be introduced after the repository contribution,
 * review and configuration management capability has been established.
 */

package 'OT System Model Repository SSRS' {

    // =====================================================================
    // Requirement definition
    // =====================================================================

    requirement def RepositorySubsystemRequirement {
        attribute requirementId : String;
        attribute requirementName : String;
        attribute source : String;
        attribute allocation : String;
        attribute complianceStatus : String;
        attribute criticality : String;
        attribute limitOfScope : String;
        attribute verificationMethod : String;
        attribute validationMethod : String;
        attribute rationale : String;
        attribute requirementCategory : String;
    }


    // =====================================================================
    // 1. Repository structure
    // =====================================================================

    package RepositoryStructure {

        requirement managedRepository :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-001";
            requirementName = "managedRepository";

            source = "MBSE-SRS-EM-001";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to engineering artefacts contributed to the OT System Model Repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "Engineering artefacts require a managed repository to support controlled contribution, review and configuration management.";

            requirementCategory = "Repository Structure";

            doc /*
                The OT System Model Repository shall provide a managed
                repository for storing engineering artefacts.
            */
        }


        requirement definedDirectoryStructure :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-002";
            requirementName = "definedDirectoryStructure";

            source = "MBSE-SRS-EM-001";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to the top-level structure of the OT System Model Repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "A defined directory structure supports predictable contribution, navigation, review and reuse of engineering artefacts.";

            requirementCategory = "Repository Structure";

            doc /*
                The OT System Model Repository shall organise engineering
                artefacts using the approved repository directory structure.
            */
        }


        requirement repositoryAreaPurpose :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-003";
            requirementName = "repositoryAreaPurpose";

            source = "MBSE-SRS-EM-001";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to each controlled top-level directory within the repository";

            verificationMethod = "Inspection";
            validationMethod = "Review";

            rationale =
                "Contributors require clear guidance about where different types of engineering information are to be stored.";

            requirementCategory = "Repository Structure";

            doc /*
                The OT System Model Repository shall define the purpose
                of each controlled top-level repository directory.
            */
        }


        requirement repositoryGuidance :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-004";
            requirementName = "repositoryGuidance";

            source = "MBSE-SRS-EM-001";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to contributors and reviewers of repository content";

            verificationMethod = "Inspection";
            validationMethod = "Review";

            rationale =
                "Contributors and reviewers require accessible instructions for using the repository consistently.";

            requirementCategory = "Repository Structure";

            doc /*
                The OT System Model Repository shall provide contribution
                and review guidance to repository users.
            */
        }
    }


    // =====================================================================
    // 2. Engineering artefact identification
    // =====================================================================

    package ArtefactIdentification {

        requirement artefactIdentification :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-010";
            requirementName = "artefactIdentification";

            source = "MBSE-SRS-EM-001";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to engineering artefacts stored within the managed repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "Engineering artefacts must be identifiable to support review, configuration management and traceability.";

            requirementCategory = "Artefact Identification";

            doc /*
                The OT System Model Repository shall enable each
                engineering artefact to be uniquely identified.
            */
        }


        requirement artefactLocation :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-011";
            requirementName = "artefactLocation";

            source = "MBSE-SRS-EM-001";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to engineering artefacts stored within the managed repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "The repository location of an engineering artefact must be identifiable to support navigation and controlled referencing.";

            requirementCategory = "Artefact Identification";

            doc /*
                The OT System Model Repository shall maintain an
                identifiable repository location for each engineering artefact.
            */
        }


        requirement artefactType :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-012";
            requirementName = "artefactType";

            source = "MBSE-SRS-EM-001";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to engineering artefacts stored within the managed repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "Identification of artefact type supports repository organisation, applicable quality checks and appropriate review.";

            requirementCategory = "Artefact Identification";

            doc /*
                The OT System Model Repository shall enable the type
                of each stored engineering artefact to be identified.
            */
        }
    }


    // =====================================================================
    // 3. Repository contribution
    // =====================================================================

    package RepositoryContribution {

        requirement authorisedContribution :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-020";
            requirementName = "authorisedContribution";

            source = "MBSE-SRS-EM-001";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to the creation or modification of engineering artefacts within the managed repository";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "Only authorised contributors should be able to create or modify repository content.";

            requirementCategory = "Repository Contribution";

            doc /*
                The OT System Model Repository shall permit authorised
                contributors to create and modify engineering artefacts.
            */
        }


        requirement contributorIdentification :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-021";
            requirementName = "contributorIdentification";

            source = "MBSE-SRS-EM-004";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to changes made to engineering artefacts within the managed repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "Repository changes must be attributable to support engineering accountability and auditability.";

            requirementCategory = "Repository Contribution";

            doc /*
                The OT System Model Repository shall identify the
                contributor associated with each repository change.
            */
        }


        requirement contributionDescription :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-022";
            requirementName = "contributionDescription";

            source = "MBSE-SRS-EM-004";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to changes submitted to the managed repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "A description of each contribution allows reviewers and future users to understand what was changed.";

            requirementCategory = "Repository Contribution";

            doc /*
                The OT System Model Repository shall enable a contributor
                to provide a description of each repository change.
            */
        }


        requirement contributionRationale :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-023";
            requirementName = "contributionRationale";

            source = "MBSE-SRS-EM-011";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to changes submitted for review or acceptance";

            verificationMethod = "Inspection";
            validationMethod = "Review";

            rationale =
                "The reason for changing an engineering artefact should be available to reviewers and future repository users.";

            requirementCategory = "Repository Contribution";

            doc /*
                The OT System Model Repository shall enable the rationale
                for a repository contribution to be recorded.
            */
        }


        requirement approvedChangeReference :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-024";
            requirementName = "approvedChangeReference";

            source = "MBSE-SRS-EM-005";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies where a repository contribution implements an approved engineering change";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "A repository contribution should be traceable to the approved change that authorised or required it.";

            requirementCategory = "Repository Contribution";

            doc /*
                The OT System Model Repository shall enable a repository
                contribution to reference its associated approved change.
            */
        }
    }


    // =====================================================================
    // 4. Version and change records
    // =====================================================================

    package VersionAndChangeManagement {

        requirement artefactVersionHistory :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-030";
            requirementName = "artefactVersionHistory";

            source = "MBSE-SRS-EM-002";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to engineering artefacts stored within the managed repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "Version history enables prior states of engineering artefacts to be identified and recovered.";

            requirementCategory = "Version Management";

            doc /*
                The OT System Model Repository shall maintain version
                history for each controlled engineering artefact.
            */
        }


        requirement previousVersionRecovery :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-031";
            requirementName = "previousVersionRecovery";

            source = "MBSE-SRS-EM-002";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to versions of engineering artefacts retained within the repository history";

            verificationMethod = "Demonstration";
            validationMethod = "Demonstration";

            rationale =
                "Recovery of a prior version supports error correction, comparison and audit activities.";

            requirementCategory = "Version Management";

            doc /*
                The OT System Model Repository shall enable an authorised
                user to recover a retained version of an engineering artefact.
            */
        }


        requirement changeRecord :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-032";
            requirementName = "changeRecord";

            source = "MBSE-SRS-EM-004";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to committed changes to engineering artefacts";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "An auditable change record is required to understand the history of controlled repository content.";

            requirementCategory = "Change Records";

            doc /*
                The OT System Model Repository shall maintain a record
                of changes made to each controlled engineering artefact.
            */
        }


        requirement changeTime :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-033";
            requirementName = "changeTime";

            source = "MBSE-SRS-EM-004";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to committed changes to engineering artefacts";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "The date and time of a change are required to establish an auditable sequence of repository events.";

            requirementCategory = "Change Records";

            doc /*
                The OT System Model Repository shall record the date
                and time associated with each committed repository change.
            */
        }
    }


    // =====================================================================
    // 5. Configuration status
    // =====================================================================

    package ConfigurationStatusManagement {

        requirement configurationStatus :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-040";
            requirementName = "configurationStatus";

            source = "MBSE-SRS-EM-003";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to controlled engineering artefacts stored within the managed repository";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "Repository users must be able to distinguish draft, review, accepted and baselined engineering information.";

            requirementCategory = "Configuration Status";

            doc /*
                The OT System Model Repository shall maintain the
                configuration status of each controlled engineering artefact.
            */
        }


        requirement visibleConfigurationStatus :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-041";
            requirementName = "visibleConfigurationStatus";

            source = "MBSE-SRS-EM-003";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to controlled engineering artefacts used by repository contributors and reviewers";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "Users must be able to determine whether engineering information is suitable for its intended use.";

            requirementCategory = "Configuration Status";

            doc /*
                The OT System Model Repository shall make the
                configuration status of each controlled engineering
                artefact visible to authorised users.
            */
        }


        requirement statusTransition :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-042";
            requirementName = "statusTransition";

            source = "MBSE-SRS-EM-003";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies when the configuration status of a controlled engineering artefact is changed";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "Changes in configuration status must be controlled to prevent unreviewed information being represented as accepted.";

            requirementCategory = "Configuration Status";

            doc /*
                The OT System Model Repository shall restrict changes
                to an engineering artefact's configuration status to
                authorised repository roles.
            */
        }
    }


    // =====================================================================
    // 6. Contribution quality checks
    // =====================================================================

    package ContributionQuality {

        requirement modelConsistencyCheck :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-050";
            requirementName = "modelConsistencyCheck";

            source = "MBSE-SRS-EM-006";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to model artefacts submitted to the managed repository";

            verificationMethod = "Demonstration";
            validationMethod = "Demonstration";

            rationale =
                "Consistency checks help prevent internally inconsistent model content from being accepted into the repository.";

            requirementCategory = "Contribution Quality";

            doc /*
                The OT System Model Repository shall support the
                assessment of model consistency for submitted model artefacts.
            */
        }


        requirement modellingRuleCheck :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-051";
            requirementName = "modellingRuleCheck";

            source = "MBSE-SRS-EM-007";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to model artefacts for which approved modelling rules have been defined";

            verificationMethod = "Test";
            validationMethod = "Demonstration";

            rationale =
                "Automated or repeatable modelling rule checks support consistent repository contributions.";

            requirementCategory = "Contribution Quality";

            doc /*
                The OT System Model Repository shall support the
                identification of violations of approved modelling rules.
            */
        }


        requirement incompleteArtefactCheck :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-052";
            requirementName = "incompleteArtefactCheck";

            source = "MBSE-SRS-EM-008";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies where completeness criteria have been defined for the contributed engineering artefact";

            verificationMethod = "Test";
            validationMethod = "Demonstration";

            rationale =
                "Incomplete engineering artefacts should be identified before they are treated as accepted repository content.";

            requirementCategory = "Contribution Quality";

            doc /*
                The OT System Model Repository shall support the
                identification of engineering artefacts that do not
                satisfy defined completeness criteria.
            */
        }


        requirement qualityCheckResults :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-053";
            requirementName = "qualityCheckResults";

            source =
                "MBSE-SRS-EM-006; MBSE-SRS-EM-007; MBSE-SRS-EM-008";

            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to consistency, modelling rule and completeness checks performed on contributed artefacts";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "Contributors and reviewers require access to quality check results to correct and assess repository contributions.";

            requirementCategory = "Contribution Quality";

            doc /*
                The OT System Model Repository shall record the results
                of contribution quality checks and make the results
                available to authorised contributors and reviewers.
            */
        }
    }


    // =====================================================================
    // 7. Review and acceptance
    // =====================================================================

    package ReviewAndAcceptance {

        requirement contributionReview :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-060";
            requirementName = "contributionReview";

            source =
                "MBSE-SRS-EM-003; MBSE-SRS-EM-010; MBSE-SRS-EM-011";

            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to engineering artefacts submitted for acceptance into the controlled repository";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "Engineering artefacts should be reviewed before they are represented as accepted repository content.";

            requirementCategory = "Review and Acceptance";

            doc /*
                The OT System Model Repository shall enable a repository
                contribution to be submitted for review.
            */
        }


        requirement reviewerIdentification :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-061";
            requirementName = "reviewerIdentification";

            source = "MBSE-SRS-EM-011";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to reviews of controlled repository contributions";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "Review decisions must be attributable to support accountability and assurance.";

            requirementCategory = "Review and Acceptance";

            doc /*
                The OT System Model Repository shall identify the
                reviewer associated with each repository review.
            */
        }


        requirement reviewComments :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-062";
            requirementName = "reviewComments";

            source =
                "MBSE-SRS-EM-010; MBSE-SRS-EM-011";

            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to controlled repository contributions submitted for review";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "Review comments and their disposition form part of the evidence supporting acceptance of repository content.";

            requirementCategory = "Review and Acceptance";

            doc /*
                The OT System Model Repository shall enable reviewers
                to record comments against a repository contribution.
            */
        }


        requirement reviewDecision :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-063";
            requirementName = "reviewDecision";

            source = "MBSE-SRS-EM-011";
            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to controlled repository contributions submitted for review";

            verificationMethod = "Inspection";
            validationMethod = "Demonstration";

            rationale =
                "The outcome of a repository review must be recorded before the contribution's configuration status can be changed.";

            requirementCategory = "Review and Acceptance";

            doc /*
                The OT System Model Repository shall record the
                review decision for each reviewed repository contribution.
            */
        }


        requirement acceptedContribution :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-064";
            requirementName = "acceptedContribution";

            source =
                "MBSE-SRS-EM-003; MBSE-SRS-EM-011";

            allocation = "OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to repository contributions that have completed the required review process";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "Only reviewed contributions should be represented as accepted engineering information.";

            requirementCategory = "Review and Acceptance";

            doc /*
                The OT System Model Repository shall prevent a repository
                contribution from being assigned an accepted status until
                the required review decision has been recorded.
            */
        }
    }


    // =====================================================================
    // 8. Repository security boundary
    // =====================================================================

    package RepositorySecurity {

        requirement publicInformationOnly :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-070";
            requirementName = "publicInformationOnly";

            source = "MBSE-SRS-CS-001";
            allocation = "Public OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies while the OT System Model Repository is hosted within a public repository";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "The public repository must not contain confidential, security-sensitive or operationally sensitive information.";

            requirementCategory = "Repository Security";

            doc /*
                The public OT System Model Repository shall contain
                only information approved for public release.
            */
        }


        requirement publicReleaseConfirmation :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-071";
            requirementName = "publicReleaseConfirmation";

            source = "MBSE-SRS-CS-001";
            allocation = "Public OT System Model Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to engineering artefacts proposed for contribution to a public repository";

            verificationMethod = "Inspection";
            validationMethod = "Review";

            rationale =
                "Contributors should explicitly consider the information security boundary before contributing engineering information to a public repository.";

            requirementCategory = "Repository Security";

            doc /*
                The public OT System Model Repository shall require
                confirmation that contributed information is approved
                for public release.
            */
        }


        requirement enterpriseSecurityBoundary :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-072";
            requirementName = "enterpriseSecurityBoundary";

            source = "MBSE-SRS-CS-002";
            allocation = "Enterprise OT Engineering Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to controlled engineering configuration items stored within the enterprise repository";

            verificationMethod = "Demonstration";
            validationMethod = "Review";

            rationale =
                "Controlled engineering configuration items require an approved enterprise security boundary.";

            requirementCategory = "Repository Security";

            doc /*
                The Enterprise OT Engineering Repository shall provide
                an approved security boundary for controlled engineering
                configuration items.
            */
        }


        requirement roleBasedRepositoryAccess :
            RepositorySubsystemRequirement {

            requirementId = "MBSE-SSRS-REP-073";
            requirementName = "roleBasedRepositoryAccess";

            source = "MBSE-SRS-CS-002";
            allocation = "Enterprise OT Engineering Repository";

            complianceStatus = "";
            criticality = "Essential";

            limitOfScope =
                "Applies to controlled enterprise repository content";

            verificationMethod = "Test";
            validationMethod = "Review";

            rationale =
                "Repository permissions should reflect contribution, review, maintenance and configuration management responsibilities.";

            requirementCategory = "Repository Security";

            doc /*
                The Enterprise OT Engineering Repository shall restrict
                access to controlled engineering artefacts according to
                authorised repository roles.
            */
        }
    }


    // =====================================================================
    // 9. Requirement groups
    // =====================================================================

    requirement 'Repository Structure Requirements' {
        requirement managedRepositoryRequirement =
            RepositoryStructure::managedRepository;

        requirement directoryStructureRequirement =
            RepositoryStructure::definedDirectoryStructure;

        requirement repositoryAreaRequirement =
            RepositoryStructure::repositoryAreaPurpose;

        requirement guidanceRequirement =
            RepositoryStructure::repositoryGuidance;
    }


    requirement 'Repository Contribution Requirements' {
        requirement authorisedContributionRequirement =
            RepositoryContribution::authorisedContribution;

        requirement contributorRequirement =
            RepositoryContribution::contributorIdentification;

        requirement descriptionRequirement =
            RepositoryContribution::contributionDescription;

        requirement rationaleRequirement =
            RepositoryContribution::contributionRationale;

        requirement approvedChangeRequirement =
            RepositoryContribution::approvedChangeReference;
    }


    requirement 'Repository Configuration Requirements' {
        requirement versionHistoryRequirement =
            VersionAndChangeManagement::artefactVersionHistory;

        requirement versionRecoveryRequirement =
            VersionAndChangeManagement::previousVersionRecovery;

        requirement changeRecordRequirement =
            VersionAndChangeManagement::changeRecord;

        requirement configurationStatusRequirement =
            ConfigurationStatusManagement::configurationStatus;

        requirement statusVisibilityRequirement =
            ConfigurationStatusManagement::visibleConfigurationStatus;

        requirement statusTransitionRequirement =
            ConfigurationStatusManagement::statusTransition;
    }


    requirement 'Repository Quality Requirements' {
        requirement consistencyRequirement =
            ContributionQuality::modelConsistencyCheck;

        requirement modellingRuleRequirement =
            ContributionQuality::modellingRuleCheck;

        requirement completenessRequirement =
            ContributionQuality::incompleteArtefactCheck;

        requirement resultsRequirement =
            ContributionQuality::qualityCheckResults;
    }


    requirement 'Repository Review Requirements' {
        requirement reviewRequirement =
            ReviewAndAcceptance::contributionReview;

        requirement reviewerRequirement =
            ReviewAndAcceptance::reviewerIdentification;

        requirement commentsRequirement =
            ReviewAndAcceptance::reviewComments;

        requirement decisionRequirement =
            ReviewAndAcceptance::reviewDecision;

        requirement acceptanceRequirement =
            ReviewAndAcceptance::acceptedContribution;
    }


    requirement 'Repository Security Requirements' {
        requirement publicInformationRequirement =
            RepositorySecurity::publicInformationOnly;

        requirement publicConfirmationRequirement =
            RepositorySecurity::publicReleaseConfirmation;

        requirement enterpriseBoundaryRequirement =
            RepositorySecurity::enterpriseSecurityBoundary;

        requirement accessRequirement =
            RepositorySecurity::roleBasedRepositoryAccess;
    }


    requirement 'OT System Model Repository Requirements' {
        requirement structure =
            'Repository Structure Requirements';

        requirement contribution =
            'Repository Contribution Requirements';

        requirement configuration =
            'Repository Configuration Requirements';

        requirement quality =
            'Repository Quality Requirements';

        requirement review =
            'Repository Review Requirements';

        requirement security =
            'Repository Security Requirements';
    }
}