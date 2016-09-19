.class public Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
.super Ljava/lang/Object;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonaPolicyData"
.end annotation


# instance fields
.field mAirCommandEnabled:Z

.field mAllowAllShare:Z

.field mAllowContainerReset:Z

.field mAllowCustomBadgeIcon:Z

.field mAllowCustomColorIdentification:Z

.field mAllowCustomPersonaIcon:Z

.field mAllowDLNADataTransfer:Z

.field mAllowExportAndDeleteFiles:Z

.field mAllowExportFiles:Z

.field mAllowImportFiles:Z

.field mAllowPrint:Z

.field mAllowShortCutCreation:Z

.field mAllowUniversalCallerId:Z

.field mCameraModeChangeEnabled:Z

.field mDisableSwitchWidgetOnLockScreen:Z

.field mEncryptionEnabled:Z

.field mGearSupportEnabled:Z

.field mModifyLockScreenTimeout:Z

.field mPasswordLockEnabled:Z

.field mPenWindowEnabled:Z

.field mPersonaId:I

.field mRCPDataSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field mRCPNotifSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field mSecureKeystoreEnabled:Z

.field mSwitchNotifEnabled:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    .line 111
    iput-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    .line 112
    iput-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    .line 116
    iput p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPersonaId:I

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    .line 119
    return-void
.end method
