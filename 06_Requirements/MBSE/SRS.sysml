/*
 * AI GENERATED EXAMPLE
 *
 * File: 06_Requirements/MBSE/SRS.sysml
 *
 * Scope:
 * Requirements related to contributing engineering artefacts
 * to the OT System Model repository.
 *
 * This draft intentionally excludes later MBSE capabilities such as
 * broader traceability, change impact assessment and stakeholder
 * view generation, except where directly required to contribute
 * and manage engineering artefacts within the repository.
 */

package 'MBSE SRS' {

    requirement def MBSESRSRequirement {
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
        attribute brCategory : String;
    }


    // ================================================================
    // Functional and Performance Requirements
    // Engineering Management
    // ================================================================

    package EngineeringManagement {

        requirement mbse_EM_storeArtefacts : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-001";
            requirementName = "mbse_EM_storeArtefacts";
            source = "MBSE for OT CAP-001";
            allocation = "Model Repository";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to all engineering artefacts that are stored within the managed repository";
            verificationMethod = "Inspection";
            validationMethod = "Demonstration";
            rationale =
                "Engineering artefacts require a common managed location to support controlled contribution and subsequent governance.";
            brCategory = "";

            doc /*
                The system shall store engineering artefacts
                within a managed repository.
            */
        }


        requirement mbse_EM_versioning : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-002";
            requirementName = "mbse_EM_versioning";
            source = "MBSE for OT CAP-001";
            allocation = "Model Repository";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to all engineering artefacts that are stored within the managed repository";
            verificationMethod = "Inspection";
            validationMethod = "Demonstration";
            rationale =
                "Version history allows repository users to identify how an engineering artefact has evolved and recover prior states.";
            brCategory = "";

            doc /*
                The system shall maintain version history
                for engineering artefacts.
            */
        }


        requirement mbse_EM_configurationStatus : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-003";
            requirementName = "mbse_EM_configurationStatus";
            source = "MBSE for OT CAP-001";
            allocation = "Model Repository";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to all engineering artefacts that are stored within the managed repository";
            verificationMethod = "Inspection";
            validationMethod = "Demonstration";
            rationale =
                "Configuration status allows users to distinguish the governance state of engineering artefacts held in the repository.";
            brCategory = "";

            doc /*
                The system shall maintain configuration status
                of engineering artefacts.
            */
        }


        requirement mbse_EM_changeRecord : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-004";
            requirementName = "mbse_EM_changeRecord";
            source = "MBSE for OT CAP-001";
            allocation = "Model Repository";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to all engineering artefacts that are stored within the managed repository";
            verificationMethod = "Inspection";
            validationMethod = "Demonstration";
            rationale =
                "Changes made during contribution must be recorded to provide an auditable history of repository content.";
            brCategory = "";

            doc /*
                The system shall record changes made
                to engineering artefacts.
            */
        }


        requirement mbse_EM_changeTraceability : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-005";
            requirementName = "mbse_EM_changeTraceability";
            source = "MBSE for OT CAP-001";
            allocation = "Model Repository";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to all engineering artefacts that are stored within the managed repository";
            verificationMethod = "Demonstration";
            validationMethod = "Demonstration";
            rationale =
                "Repository changes should be attributable to the approved change that authorised or required the modification.";
            brCategory = "";

            doc /*
                The system shall maintain traceability between
                engineering artefacts and approved changes.
            */
        }


        requirement mbse_EM_assessConsistency : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-006";
            requirementName = "mbse_EM_assessConsistency";
            source = "MBSE for OT CAP-001";
            allocation = "Change Management System";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to all engineering artefacts that are stored within the managed repository";
            verificationMethod = "Demonstration";
            validationMethod = "Demonstration";
            rationale =
                "Consistency assessment helps prevent internally inconsistent model content from being contributed to the managed repository.";
            brCategory = "";

            doc /*
                The system shall assess model consistency.
            */
        }


        requirement mbse_EM_modellingViolations : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-007";
            requirementName = "mbse_EM_modellingViolations";
            source = "MBSE for OT CAP-001";
            allocation = "Modelling Software";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to all engineering artefacts that are stored within the managed repository";
            verificationMethod = "Test";
            validationMethod = "Demonstration";
            rationale =
                "Identifying modelling rule violations supports consistent and reviewable contributions to the repository.";
            brCategory = "";

            doc /*
                The system shall identify modelling rule violations.
            */
        }


        requirement mbse_EM_incompleteArtefacts : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-008";
            requirementName = "mbse_EM_incompleteArtefacts";
            source = "MBSE for OT CAP-001";
            allocation = "Change Management System";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to all engineering artefacts that are stored within the managed repository";
            verificationMethod = "Test";
            validationMethod = "Demonstration";
            rationale =
                "Incomplete engineering artefacts should be identifiable before they are accepted as controlled repository content.";
            brCategory = "";

            doc /*
                The system shall identify incomplete
                engineering artefacts.
            */
        }


        requirement mbse_EM_informationExchange : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-010";
            requirementName = "mbse_EM_informationExchange";
            source = "MBSE for OT CAP-001";
            allocation = "Modelling Software";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to engineering information exchanged for the purpose of contributing to or reviewing repository content";
            verificationMethod = "Demonstration";
            validationMethod = "Demonstration";
            rationale =
                "Contributors and reviewers require a means to exchange engineering information needed to develop and review repository contributions.";
            brCategory = "";

            doc /*
                The system shall support information exchange
                between engineering stakeholders for repository
                contribution and review.
            */
        }


        requirement mbse_EM_recordDecisions : MBSESRSRequirement {
            requirementId = "MBSE-SRS-EM-011";
            requirementName = "mbse_EM_recordDecisions";
            source = "MBSE for OT CAP-001";
            allocation = "Change Management System";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to engineering decisions associated with contributed or reviewed repository content";
            verificationMethod = "Inspection";
            validationMethod = "Demonstration";
            rationale =
                "Engineering decisions associated with a repository contribution should remain available as part of its governance record.";
            brCategory = "";

            doc /*
                The system shall maintain records of engineering
                decisions associated with repository contributions.
            */
        }
    }


    // ================================================================
    // Cyber Security Requirements
    // Repository contribution security boundary
    // ================================================================

    package CyberSecurity {

        requirement publicRepositoryInformation : MBSESRSRequirement {
            requirementId = "MBSE-SRS-CS-001";
            requirementName = "Public Repository Information";
            source = "";
            allocation = "Repository";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies when engineering artefacts are contributed to a public repository";
            verificationMethod = "Demonstration";
            validationMethod = "Review";
            rationale = "Data/Information security boundary";
            brCategory = "";

            doc /*
                The public repository shall contain only
                information approved for public release.
            */
        }


        requirement enterpriseRepositorySecurityBoundary : MBSESRSRequirement {
            requirementId = "MBSE-SRS-CS-002";
            requirementName = "Enterprise Repository Security Boundary";
            source = "Data/Information security boundary";
            allocation = "Repository";
            complianceStatus = "";
            criticality = "Essential";
            limitOfScope =
                "Applies to controlled engineering configuration items that are contributed to the enterprise repository";
            verificationMethod = "Demonstration";
            validationMethod = "Review";
            rationale = "Data/Information security boundary";
            brCategory = "";

            doc /*
                The OT Engineering Repository shall provide an
                approved security boundary for the management of
                controlled engineering configuration items.
            */
        }
    }
}