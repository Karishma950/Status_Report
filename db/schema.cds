namespace Status_Report_Admin;

using
{
    sap.common.CodeList,
    cuid,
    managed
}
from '@sap/cds/common';

entity Teams : cuid, managed
{
    teamName : String(100);
    poName : String(100);
    smName : String(100);
    useCaseDetails : Composition of many useCaseDetails on useCaseDetails.team = $self;
    developerDetails : Composition of many developerDetails on developerDetails.team = $self;
}

entity useCaseDetails
{
    key ID : UUID;
    usecaseID : String(100);
    usecaseName : String(100);
    startQuarter : String(100);
    expectedGoLive : String(100);
    goLiveQuarter : String(100);
    boardArea : String(100);
    numberofDeveloper : String(100);
    team : Association to one Teams;
    developerDetails : Association to many developerDetails on developerDetails.useCaseDetail = $self;
    weeklyStatuses : Composition of many weeklyStatus on weeklyStatuses.useCaseDetail = $self;
    botStatusCodeList : Association to one useCaseStatus;
}

entity weeklyStatus : cuid, managed
{
    status : String(100);
    lastUpdate : String(100);
    useCaseDetail : Association to one useCaseDetails;
}

entity firmContribution : cuid, managed
{
    activityName : String(100);
    description : String(100);
    noOfHours : String(100);
    developerDetail : Association to one developerDetails;
    skills : String(100);
    proficiency : String(100);
}

entity useCaseStatus : CodeList
{
    criticality : Integer;
    key Code : useCaseStatusEnum;
}

entity developerDetails : cuid
{
    firstName : String(100);
    lastName : String(100);
    mailID : String(100);
    team : Association to one Teams;
    useCaseDetail : Association to one useCaseDetails;
    firmContributions : Association to many firmContribution on firmContributions.developerDetail = $self;
}

type useCaseStatusEnum : String enum
{
    Kickoff = 'Kick-off';
    Design;
    Development;
    UAT;
    GoLive = 'Go Live';
    OnHold = 'On Hold';
}
