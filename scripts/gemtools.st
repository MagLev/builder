"GemTools"
Gofer new
  squeaksource: 'MetacelloRepository';
  package: 'ConfigurationOfGemTools';
  load.
!
ConfigurationOfGemTools loadLatestVersion.
OGLauncherNode
  addSessionWithDescription:
    (OGStandardSessionDescription new
      name: 'Seaside';
      stoneHost: 'localhost';
      stoneName: 'seaside';
      gemHost: 'localhost';
      netLDI: '50377`';
      userId: 'DataCurator';
      password: 'swordfish';
      backupDirectory: '';
      yourself).
OGLauncherNode
  addSessionWithDescription:
    (OGStandardSessionDescription new
      name: 'MagLev';
      stoneHost: 'localhost';
      stoneName: 'maglev';
      gemHost: 'localhost';
      netLDI: '50378';
      userId: 'DataCurator';
      password: 'swordfish';
      backupDirectory: '';
      yourself).
Transcript clear.
SystemWindow allSubInstancesDo:
  [:window | ({ Transcript class. }
    anySatisfy: [:wantedClass |
      window model isKindOf: wantedClass])
        ifFalse: [window delete]].
OGLauncher open.
