// ============================================================================
// AI GENERATED EXAMPLE
// ============================================================================
//
// Purpose:
// Example SysML v2 model showing how an OT Engineering Repository could fit
// within a simplified Sydney Trains Operational Technology environment.
//
// This is not an official Sydney Trains organisational model.
// It is an illustrative MBSE example intended to demonstrate repository
// governance, contribution, review, acceptance, traceability and baseline
// management within an OT engineering context.
//
// Key Concept:
// The OT Engineering Repository is owned by Engineering Governance and is
// managed as an engineering information repository. SysML models are one
// type of engineering information held within the repository.
//
// ============================================================================

package SydneyTrainsOTRepositoryExample {

    //=======================================================================
    // ORGANISATIONAL CONTEXT
    //=======================================================================

    part def TransportForNSW;

    part def SydneyTrains;

    part def EngineeringAndMaintenance;

    part def NetworkOperations;

    part def SignallingDiscipline;

    part def TelecommunicationsDiscipline;

    part def ElectricalSystemsDiscipline;

    part def EngineeringGovernance;

    part def OTEngineeringRepository;


    //=======================================================================
    // ORGANISATIONAL STRUCTURE
    //=======================================================================

    part transportForNSW : TransportForNSW {

        part sydneyTrains : SydneyTrains {

            part engineeringAndMaintenance : EngineeringAndMaintenance {

                part signalling : SignallingDiscipline;

                part telecommunications : TelecommunicationsDiscipline;

                part electricalSystems : ElectricalSystemsDiscipline;

                part engineeringGovernance : EngineeringGovernance {
                    part repository : OTEngineeringRepository;
                }
            }

            part networkOperations : NetworkOperations;
        }
    }


    //=======================================================================
    // REPOSITORY STRUCTURE
    //=======================================================================

    part def StakeholderRepository;

    part def RequirementRepository;

    part def ArchitectureRepository;

    part def InterfaceRepository;

    part def VerificationRepository;

    part def ConfigurationBaselineRepository;

    part def EngineeringEvidenceRepository;


    part repository : OTEngineeringRepository {

        part stakeholders : StakeholderRepository;

        part requirements : RequirementRepository;

        part architecture : ArchitectureRepository;

        part interfaces : InterfaceRepository;

        part verification : VerificationRepository;

        part baselines : ConfigurationBaselineRepository;

        part evidence : EngineeringEvidenceRepository;
    }


    //=======================================================================
    // ENGINEERING INFORMATION
    //=======================================================================

    item def StakeholderNeed;

    item def Requirement;

    item def ArchitectureModel;

    item def InterfaceDefinition;

    item def VerificationCase;

    item def VerificationResult;

    item def Baseline;

    item def EngineeringEvidence;


    //=======================================================================
    // REPOSITORY SERVICES
    //=======================================================================

    action def ContributeInformation;

    action def ReviewInformation;

    action def AcceptInformation;

    action def BaselineInformation;

    action def GenerateTraceability;

    action def PublishViews;


    //=======================================================================
    // ENGINEERING DISCIPLINES INTERACTING WITH REPOSITORY
    //=======================================================================

    connection def RepositoryContribution {
        end contributor;
        end repository;
    }

    connection def RepositoryConsumption {
        end repository;
        end consumer;
    }


    connect signalling
        to repository
        by RepositoryContribution;

    connect telecommunications
        to repository
        by RepositoryContribution;

    connect electricalSystems
        to repository
        by RepositoryContribution;

    connect networkOperations
        to repository
        by RepositoryContribution;


    connect repository
        to signalling
        by RepositoryConsumption;

    connect repository
        to telecommunications
        by RepositoryConsumption;

    connect repository
        to electricalSystems
        by RepositoryConsumption;

    connect repository
        to networkOperations
        by RepositoryConsumption;


    //=======================================================================
    // ENGINEERING GOVERNANCE RESPONSIBILITIES
    //=======================================================================

    requirement def ControlledContribution {
        doc /*
            Engineering information shall be contributed through
            controlled workflows.
        */
    }

    requirement def ReviewAndAcceptance {
        doc /*
            Engineering information shall be reviewed and accepted
            before becoming authoritative.
        */
    }

    requirement def BaselineManagement {
        doc /*
            Approved engineering information shall be baseline controlled.
        */
    }

    requirement def Traceability {
        doc /*
            Engineering information shall support end-to-end
            traceability.
        */
    }

    requirement def RepositoryAsAuthoritativeSource {
        doc /*
            The repository shall act as the authoritative source
            of approved engineering information.
        */
    }


    //=======================================================================
    // MBSE CAPABILITY
    //=======================================================================

    part def MBSECapability;

    part mbse : MBSECapability;

    connect mbse
        to repository
        by RepositoryContribution;


    //=======================================================================
    // EXAMPLE ENGINEERING TRACEABILITY
    //=======================================================================

    item needSafeTrainOperations : StakeholderNeed;

    item needEfficientAssetMaintenance : StakeholderNeed;

    item requirementAssetIntegrity : Requirement;

    item requirementSystemAvailability : Requirement;

    item architectureOTSolution : ArchitectureModel;

    item interfaceOperationalSystems : InterfaceDefinition;

    item verificationOperationalTest : VerificationCase;

    item resultAccepted : VerificationResult;

    item projectBaseline : Baseline;


    //=======================================================================
    // EXAMPLE INFORMATION FLOW
    //=======================================================================

    comment /*
        Example Flow

        Stakeholder Need
            -> Requirement
            -> Architecture Model
            -> Interface Definition
            -> Verification Case
            -> Verification Result
            -> Baseline

        Engineering disciplines contribute information.

        Engineering Governance reviews and accepts information.

        The OT Engineering Repository maintains the authoritative
        engineering baseline.

        MBSE is implemented through repository-managed engineering
        information rather than as a standalone modelling activity.
    */


    //=======================================================================
    // CONCEPTUAL VIEW
    //=======================================================================

    comment /*
        Sydney Trains
        ├─ Engineering & Maintenance
        │
        ├─ Signalling
        ├─ Telecommunications
        ├─ Electrical Systems
        │
        └─ Engineering Governance
            └─ OT Engineering Repository
                ├─ Stakeholders
                ├─ Requirements
                ├─ Architecture
                ├─ Interfaces
                ├─ Verification
                ├─ Evidence
                └─ Baselines

        Network Operations interacts with repository information
        but repository ownership remains within Engineering Governance.
    */

}