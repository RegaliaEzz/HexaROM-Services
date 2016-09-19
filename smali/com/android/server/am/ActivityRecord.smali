.class final Lcom/android/server/am/ActivityRecord;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;
    }
.end annotation


# static fields
.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field static final APPLICATION_ACTIVITY_TYPE:I = 0x0

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field static final FLOATING_ACTIVITY_TYPE:I = 0x3

.field static final HOME_ACTIVITY_TYPE:I = 0x1

.field public static ISOLATED_BASE:I = 0x0

.field private static final LAUNCH_REPORTING_BASE:J

.field static final RECENTS_ACTIVITY_TYPE:I = 0x2

.field public static final RECENTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.recents"

.field static final SAMSUNG_EXPAND_HOME_ACTIVITY_TYPE:I = 0x6

.field static final SAMSUNG_HOME_ACTIVITY_TYPE:I = 0x4

.field static final SAMSUNG_PINNED_HOME_ACTIVITY_TYPE:I = 0x5

.field private static final SHOW_ACTIVITY_START_TIME:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_THUMBNAILS:Ljava/lang/String; = "ActivityManager"

.field static final TAG_TIMELINE:Ljava/lang/String; = "Timeline"


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field bMultiInstance:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field final componentSpecified:Z

.field configChangeFlags:I

.field configDestroy:Z

.field configuration:Landroid/content/res/Configuration;

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field createTime:J

.field delayedResume:Z

.field displayStartTime:J

.field dualScreenAttrs:Lcom/android/server/am/DualScreenAttrs;

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field fullLaunch:Z

.field fullscreen:Z

.field fullyDrawnStartTime:J

.field hasBeenLaunched:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field isExpandable:Z

.field isPermissionRequestActivity:Z

.field isolatedBaseCouple:I

.field keysPaused:Z

.field labelRes:I

.field lastLaunchTime:J

.field lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field launchedBehindVRApp:Z

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromUid:I

.field logo:I

.field mActivityType:I

.field mChildContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mIsLastShownWhenLocked:Z

.field mLaunchTaskBehind:Z

.field mNeedToIdle:Z

.field mSingleTaskForDisplay:Z

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStartingWindowShown:Z

.field public minimizePenWindowRequested:Z

.field multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field final noDisplay:Z

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field public pendingNotifyMultiWindowFocus:I

.field public pendingNotifyMultiWindowStyle:Z

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field persistentState:Landroid/os/PersistableBundle;

.field policyExpandedDisplayOrientation:I

.field policyOppositeDisplayOrientation:I

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realTheme:I

.field final requestCode:I

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field public skipRotationAnimation:Z

.field sleeping:Z

.field sourceActivity:Landroid/content/ComponentName;

.field stackConfigOverride:Landroid/content/res/Configuration;

.field startTime:J

.field state:Lcom/android/server/am/ActivityStack$ActivityState;

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field theme:I

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

.field visible:Z

.field final vrActivity:Z

.field windowFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "debug.launch.reporting.base"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ActivityRecord;->LAUNCH_REPORTING_BASE:J

    .line 249
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V
    .locals 20
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_launchedFromUid"    # I
    .param p4, "_launchedFromPackage"    # Ljava/lang/String;
    .param p5, "_intent"    # Landroid/content/Intent;
    .param p6, "_resolvedType"    # Ljava/lang/String;
    .param p7, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p8, "_configuration"    # Landroid/content/res/Configuration;
    .param p9, "_resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p10, "_resultWho"    # Ljava/lang/String;
    .param p11, "_reqCode"    # I
    .param p12, "_componentSpecified"    # Z
    .param p13, "_rootVoiceInteraction"    # Z
    .param p14, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p15, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p18, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    .line 633
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ActivityRecord;->createTime:J

    .line 228
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 233
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->policyOppositeDisplayOrientation:I

    .line 234
    const/4 v15, -0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->policyExpandedDisplayOrientation:I

    .line 235
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->mSingleTaskForDisplay:Z

    .line 238
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->isExpandable:Z

    .line 242
    sget-object v15, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 245
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowFocus:I

    .line 250
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->minimizePenWindowRequested:Z

    .line 252
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->mNeedToIdle:Z

    .line 253
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->isPermissionRequestActivity:Z

    .line 257
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->skipRotationAnimation:Z

    .line 264
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    .line 634
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 635
    new-instance v15, Lcom/android/server/am/ActivityRecord$Token;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 636
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 637
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 638
    if-eqz p7, :cond_13

    .line 639
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 640
    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 645
    :goto_0
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 646
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 647
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 648
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    .line 649
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    .line 650
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 651
    if-eqz p15, :cond_14

    move-object/from16 v0, p15

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v15, v15, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    :goto_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    .line 653
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 654
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 655
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 656
    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 657
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 658
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 659
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 660
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 661
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 662
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 663
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 664
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 665
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 666
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 667
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 668
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 669
    move-object/from16 v0, p14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 670
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 671
    if-eqz p16, :cond_0

    .line 672
    new-instance v15, Landroid/app/ActivityOptions;

    move-object/from16 v0, p16

    invoke-direct {v15, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 674
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v13

    .line 675
    .local v13, "usageReport":Landroid/app/PendingIntent;
    if-eqz v13, :cond_0

    .line 676
    new-instance v15, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v15, v13}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 683
    .end local v13    # "usageReport":Landroid/app/PendingIntent;
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 718
    if-eqz p7, :cond_23

    .line 719
    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v15, :cond_1

    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v15, :cond_1

    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 722
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 727
    :goto_2
    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 728
    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_16

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 730
    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 731
    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 732
    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 733
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    if-nez v15, :cond_2

    .line 734
    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 735
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v6, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 736
    iget v15, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 738
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    .line 739
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    .line 740
    invoke-virtual/range {p7 .. p7}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 741
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    .line 742
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    if-nez v15, :cond_3

    .line 743
    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v16, 0xb

    move/from16 v0, v16

    if-ge v15, v0, :cond_17

    const v15, 0x1030005

    :goto_4
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    .line 748
    :cond_3
    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v15, v15, 0x200

    if-eqz v15, :cond_4

    .line 749
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/high16 v16, 0x1000000

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    .line 751
    :cond_4
    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_18

    if-eqz p2, :cond_18

    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 755
    :cond_5
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 760
    :goto_5
    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v15, v15, 0x20

    if-eqz v15, :cond_6

    .line 761
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v16, 0x800000

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 764
    :cond_6
    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 765
    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    .line 767
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    move/from16 v17, v0

    sget-object v18, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v8

    .line 769
    .local v8, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v8, :cond_19

    iget-object v15, v8, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v16, 0x5

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v8, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-nez v15, :cond_19

    iget-object v15, v8, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v16, 0x19

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_19

    :cond_7
    const/4 v12, 0x1

    .line 776
    .local v12, "translucent":Z
    :goto_6
    if-eqz v8, :cond_1a

    iget-object v15, v8, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-nez v15, :cond_1a

    if-nez v12, :cond_1a

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 779
    if-eqz v8, :cond_1b

    iget-object v15, v8, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v16, 0xa

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_1b

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    .line 782
    if-eqz p12, :cond_8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    move/from16 v0, p3

    if-eq v0, v15, :cond_8

    if-nez p3, :cond_1c

    :cond_8
    const-string v15, "android.intent.action.MAIN"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c

    const-string v15, "android.intent.category.HOME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    if-nez v15, :cond_1c

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v15

    const/high16 v16, 0x10000000

    and-int v15, v15, v16

    if-eqz v15, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 792
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    .line 795
    invoke-static/range {p7 .. p7}, Lcom/android/server/am/DualScreenPolicy;->isFullViewLaunchWithPriority(Landroid/content/pm/ActivityInfo;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 796
    const/4 v15, 0x6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    .line 821
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p17

    move-object/from16 v3, p18

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 822
    if-eqz p17, :cond_b

    move-object/from16 v0, p17

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v16, 0x1000

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p17

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v16, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 824
    :cond_a
    sget v15, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    .line 832
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 833
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 835
    :cond_c
    new-instance v15, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 836
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setNull(Z)V

    .line 837
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 838
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    .line 839
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getWindowScale()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V

    .line 842
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->getPermissionRequestActivities()Ljava/util/ArrayList;

    move-result-object v10

    .line 843
    .local v10, "securityPermissionsActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_f

    .line 844
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 845
    .local v4, "activity":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->isPermissionRequestActivity:Z

    .line 846
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->isPermissionRequestActivity:Z

    if-eqz v15, :cond_e

    .line 852
    .end local v4    # "activity":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p7

    iget v15, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v15, v15, 0x800

    if-eqz v15, :cond_22

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    .line 868
    .end local v8    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v10    # "securityPermissionsActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "translucent":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_24

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_24

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v15, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 869
    .local v7, "applicationMetaData":Landroid/os/Bundle;
    :goto_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v15, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 872
    .local v5, "activityMetaData":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    invoke-virtual {v15}, Lcom/android/server/am/VRApplicationPolicy;->isHMTconnected()Z

    move-result v15

    if-eqz v15, :cond_2a

    .line 873
    invoke-static {}, Lcom/android/server/wm/VRFlingerHelper;->getInstance()Lcom/android/server/wm/VRFlingerHelper;

    move-result-object v14

    .line 874
    .local v14, "vrHelper":Lcom/android/server/wm/VRFlingerHelper;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->getVRStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 875
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_10

    const-string/jumbo v15, "enable"

    const-string v16, "com.samsung.android.vrlauncher"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 876
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/VRFlingerHelper;->setVRFlingerLauncher(Ljava/lang/String;)V

    .line 878
    :cond_10
    if-eqz p4, :cond_27

    invoke-virtual {v14}, Lcom/android/server/wm/VRFlingerHelper;->getLancherPackage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27

    .line 879
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_26

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v16, "com.oculus.horizon"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    .line 880
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->setVRFlingerMode(Z)V

    .line 890
    :cond_11
    :goto_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityManagerService;->isVRFlingerMode()Z

    move-result v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/VRFlingerHelper;->skipPackage(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 891
    if-eqz v7, :cond_12

    .line 892
    const-string v15, "com.samsung.android.vr.application.mode"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 893
    const-string v15, "com.samsung.android.vr.application.mode"

    const-string/jumbo v16, "vr_only"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v15, "com.samsung.android.vrflinger.mode"

    const-string/jumbo v16, "vrflinger"

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "vrHelper":Lcom/android/server/wm/VRFlingerHelper;
    :cond_12
    :goto_10
    if-eqz v7, :cond_2d

    .line 910
    const-string/jumbo v15, "vr_only"

    const-string v16, "com.samsung.android.vr.application.mode"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 911
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->vrActivity:Z

    .line 928
    :goto_11
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    .line 929
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    .line 943
    return-void

    .line 642
    .end local v5    # "activityMetaData":Landroid/os/Bundle;
    .end local v7    # "applicationMetaData":Landroid/os/Bundle;
    :cond_13
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 643
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    goto/16 :goto_0

    .line 651
    :cond_14
    sget-object v15, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto/16 :goto_1

    .line 724
    :cond_15
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 728
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 743
    :cond_17
    const v15, 0x103006b

    goto/16 :goto_4

    .line 757
    :cond_18
    move-object/from16 v0, p7

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto/16 :goto_5

    .line 769
    .restart local v8    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 776
    .restart local v12    # "translucent":Z
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 779
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 800
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.android.systemui.recents"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 801
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto/16 :goto_9

    .line 803
    :cond_1d
    const-string v15, "android.intent.action.MAIN"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    const-string v15, "com.samsung.android.dualscreen.intent.category.SAMSUNG_HOME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 806
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto/16 :goto_9

    .line 807
    :cond_1e
    const-string v15, "android.intent.action.MAIN"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f

    const-string v15, "com.samsung.android.dualscreen.intent.category.SAMSUNG_PINNED_HOME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 809
    const/4 v15, 0x5

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto/16 :goto_9

    .line 810
    :cond_1f
    const-string v15, "android.intent.action.MAIN"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    const-string v15, "com.samsung.android.dualscreen.intent.category.SAMSUNG_FULLVIEW_HOME"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v15

    if-eqz v15, :cond_20

    .line 813
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto/16 :goto_9

    .line 816
    :cond_20
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto/16 :goto_9

    .line 845
    .restart local v4    # "activity":Ljava/lang/String;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "securityPermissionsActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 852
    .end local v4    # "activity":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_22
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 854
    .end local v8    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v10    # "securityPermissionsActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "translucent":Z
    :cond_23
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 855
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 856
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 857
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 858
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 859
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 860
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 861
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    .line 862
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    .line 863
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    goto/16 :goto_c

    .line 868
    :cond_24
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 869
    .restart local v7    # "applicationMetaData":Landroid/os/Bundle;
    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 882
    .restart local v5    # "activityMetaData":Landroid/os/Bundle;
    .restart local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "vrHelper":Lcom/android/server/wm/VRFlingerHelper;
    :cond_26
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->setVRFlingerMode(Z)V

    goto/16 :goto_f

    .line 884
    :cond_27
    if-eqz v11, :cond_28

    iget-object v15, v11, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v15, :cond_28

    iget-object v15, v11, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v15, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_28

    iget-object v15, v11, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v15, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/server/wm/VRFlingerHelper;->getLancherPackage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v16, "com.samsung.android.hmt.vrsystem"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 888
    :cond_29
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->setVRFlingerMode(Z)V

    goto/16 :goto_f

    .line 899
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "vrHelper":Lcom/android/server/wm/VRFlingerHelper;
    :cond_2a
    if-eqz v7, :cond_12

    .line 900
    const-string v15, "com.samsung.android.vrflinger.mode"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 901
    const-string v15, "com.samsung.android.vr.application.mode"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 902
    const-string v15, "com.samsung.android.vrflinger.mode"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityManagerService;->setVRFlingerMode(Z)V

    goto/16 :goto_10

    .line 912
    :cond_2b
    const-string/jumbo v15, "dual"

    const-string v16, "com.samsung.android.vr.application.mode"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c

    if-eqz v5, :cond_2c

    const-string v15, "com.samsung.android.vr.activity"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2c

    .line 914
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->vrActivity:Z

    goto/16 :goto_11

    .line 916
    :cond_2c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->vrActivity:Z

    goto/16 :goto_11

    .line 919
    :cond_2d
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/ActivityRecord;->vrActivity:Z

    goto/16 :goto_11
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .locals 4
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    const/high16 v3, 0x10000000

    const/4 v2, 0x0

    .line 1704
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1706
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1707
    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1711
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1712
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1713
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    .line 1714
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1719
    :cond_0
    return-void
.end method

.method private static activityTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1903
    packed-switch p0, :pswitch_data_0

    .line 1915
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1904
    :pswitch_0
    const-string v0, "APPLICATION_ACTIVITY_TYPE"

    goto :goto_0

    .line 1905
    :pswitch_1
    const-string v0, "HOME_ACTIVITY_TYPE"

    goto :goto_0

    .line 1906
    :pswitch_2
    const-string v0, "RECENTS_ACTIVITY_TYPE"

    goto :goto_0

    .line 1908
    :pswitch_3
    const-string v0, "FLOATING_ACTIVITY_TYPE"

    goto :goto_0

    .line 1911
    :pswitch_4
    const-string v0, "SAMSUNG_HOME_ACTIVITY_TYPE"

    goto :goto_0

    .line 1912
    :pswitch_5
    const-string v0, "SAMSUNG_PINNED_HOME_ACTIVITY_TYPE"

    goto :goto_0

    .line 1913
    :pswitch_6
    const-string v0, "SAMSUNG_EXPAND_HOME_ACTIVITY_TYPE"

    goto :goto_0

    .line 1903
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .locals 2
    .param p0, "createTime"    # J
    .param p2, "taskId"    # I

    .prologue
    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_activity_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 615
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    move-object v2, v0

    # invokes: Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/ActivityRecord$Token;->access$000(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 618
    :goto_0
    return-object v2

    .line 616
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad activity token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1740
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1741
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1742
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1744
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .locals 5
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "onlyRoot"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1722
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1723
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_1

    .line 1731
    :cond_0
    :goto_0
    return v3

    .line 1726
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1727
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1728
    .local v0, "activityNdx":I
    if-ltz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v4

    if-gt v0, v4, :cond_0

    .line 1731
    :cond_2
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1735
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1736
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportLaunchTimeLocked(J)V
    .locals 13
    .param p1, "curTime"    # J

    .prologue
    .line 1471
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1472
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v9, :cond_0

    .line 1533
    :goto_0
    return-void

    .line 1475
    :cond_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1476
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>APP_FULLY_LOADED_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</GATE-M>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_1
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    sub-long v4, p1, v2

    .line 1479
    .local v4, "thisTime":J
    iget-wide v2, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-eqz v1, :cond_7

    iget-wide v2, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    sub-long v6, p1, v2

    .line 1482
    .local v6, "totalTime":J
    :goto_1
    const-wide/16 v2, 0x40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "launching: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-static {v2, v3, v1, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1483
    const/16 v2, 0x7539

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v10, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v1

    const/4 v1, 0x2

    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v3, v1

    const/4 v1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v1

    const/4 v1, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v1

    const/4 v10, 0x5

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->fullLaunch:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1487
    sget-wide v2, Lcom/android/server/am/ActivityRecord;->LAUNCH_REPORTING_BASE:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_2

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    const-string/jumbo v1, "sys.config.bigdata_enable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1491
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SG_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    const-string/jumbo v1, "from"

    const/16 v2, 0x7539

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1493
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    const-string/jumbo v1, "ltime"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1495
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1498
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1499
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1500
    const-string v1, "Displayed "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    const-string v1, ": "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-static {v4, v5, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1504
    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 1505
    const-string v1, " (total "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    invoke-static {v6, v7, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1507
    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    :cond_3
    const-string v1, "ActivityManager"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 1512
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-lez v1, :cond_4

    .line 1515
    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    .line 1516
    const-wide/16 v2, 0x0

    iput-wide v2, v9, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    .line 1518
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1520
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mDynamicLMKEnable:Z

    if-eqz v1, :cond_5

    .line 1521
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v3, v10, v11}, Lcom/android/server/am/ProcessList;->updateDynamicLMK(Ljava/lang/String;J)V

    .line 1525
    :cond_5
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mILS_Enable:Z

    if-eqz v1, :cond_6

    .line 1526
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->updateILS(Ljava/lang/String;)V

    .line 1528
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mILS_DynamicLMKFlag:Z

    if-eqz v1, :cond_6

    .line 1529
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->updateLMKbyILS()V

    .line 1532
    :cond_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .end local v6    # "totalTime":J
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    move-wide v6, v4

    .line 1479
    goto/16 :goto_1

    .line 1483
    .restart local v6    # "totalTime":J
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;
    .locals 39
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1823
    const/4 v5, 0x0

    .line 1824
    .local v5, "intent":Landroid/content/Intent;
    const/16 v37, 0x0

    .line 1825
    .local v37, "persistentState":Landroid/os/PersistableBundle;
    const/4 v13, 0x0

    .line 1826
    .local v13, "launchedFromUid":I
    const/4 v14, 0x0

    .line 1827
    .local v14, "launchedFromPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1828
    .local v6, "resolvedType":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1829
    .local v22, "componentSpecified":Z
    const/4 v9, 0x0

    .line 1830
    .local v9, "userId":I
    const-wide/16 v32, -0x1

    .line 1831
    .local v32, "createTime":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v36

    .line 1832
    .local v36, "outerDepth":I
    new-instance v38, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v38 .. v38}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1834
    .local v38, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    add-int/lit8 v30, v4, -0x1

    .local v30, "attrNdx":I
    :goto_0
    if-ltz v30, :cond_7

    .line 1835
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v29

    .line 1836
    .local v29, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v31

    .line 1839
    .local v31, "attrValue":Ljava/lang/String;
    const-string/jumbo v4, "id"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1840
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 1834
    :goto_1
    add-int/lit8 v30, v30, -0x1

    goto :goto_0

    .line 1841
    :cond_0
    const-string/jumbo v4, "launched_from_uid"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1842
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_1

    .line 1843
    :cond_1
    const-string/jumbo v4, "launched_from_package"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1844
    move-object/from16 v14, v31

    goto :goto_1

    .line 1845
    :cond_2
    const-string/jumbo v4, "resolved_type"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1846
    move-object/from16 v6, v31

    goto :goto_1

    .line 1847
    :cond_3
    const-string v4, "component_specified"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1848
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    goto :goto_1

    .line 1849
    :cond_4
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1850
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    .line 1851
    :cond_5
    const-string/jumbo v4, "task_description_"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1852
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1854
    :cond_6
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown ActivityRecord attribute="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1859
    .end local v29    # "attrName":Ljava/lang/String;
    .end local v31    # "attrValue":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .local v34, "event":I
    const/4 v4, 0x1

    move/from16 v0, v34

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    move/from16 v0, v34

    if-ne v0, v4, :cond_8

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v36

    if-ge v4, v0, :cond_b

    .line 1861
    :cond_8
    const/4 v4, 0x2

    move/from16 v0, v34

    if-ne v0, v4, :cond_7

    .line 1862
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    .line 1865
    .local v35, "name":Ljava/lang/String;
    const-string/jumbo v4, "intent"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1866
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v5

    goto :goto_2

    .line 1869
    :cond_9
    const-string/jumbo v4, "persistable_bundle"

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1870
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v37

    goto :goto_2

    .line 1874
    :cond_a
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity: unexpected name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1880
    .end local v35    # "name":Ljava/lang/String;
    :cond_b
    if-nez v5, :cond_c

    .line 1881
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity error intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1884
    :cond_c
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1885
    .local v11, "service":Lcom/android/server/am/ActivityManagerService;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    .line 1887
    .local v17, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v17, :cond_d

    .line 1888
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreActivity resolver error. Intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resolvedType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1891
    :cond_d
    new-instance v10, Lcom/android/server/am/ActivityRecord;

    const/4 v12, 0x0

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v24, p1

    invoke-direct/range {v10 .. v28}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V

    .line 1895
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    iput-object v0, v10, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 1896
    move-object/from16 v0, v38

    iput-object v0, v10, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1897
    move-wide/from16 v0, v32

    iput-wide v0, v10, Lcom/android/server/am/ActivityRecord;->createTime:J

    .line 1899
    return-object v10
.end method


# virtual methods
.method public activityDrawn()V
    .locals 0

    .prologue
    .line 1963
    return-void
.end method

.method addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .locals 1
    .param p1, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1137
    new-instance v0, Lcom/android/server/am/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1139
    .local v0, "r":Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1142
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    return-void
.end method

.method applyOptionsLocked()V
    .locals 19

    .prologue
    .line 1225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 1227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v18

    .line 1228
    .local v18, "animationType":I
    sparse-switch v18, :sswitch_data_0

    .line 1320
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_0
    :goto_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1325
    .end local v18    # "animationType":I
    :cond_1
    return-void

    .line 1230
    .restart local v18    # "animationType":I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;I)V

    goto :goto_0

    .line 1238
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1250
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionCustomScaleUp(IIII)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1262
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIIII)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1275
    :sswitch_4
    const/4 v1, 0x3

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    .line 1276
    .local v7, "scaleUp":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getOnTransitionStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;ZI)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1275
    .end local v7    # "scaleUp":Z
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1295
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getOnTransitionStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v15

    const/16 v1, 0x8

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v17

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;ZI)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1295
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 1315
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionTranslate()V

    goto/16 :goto_0

    .line 1228
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xb -> :sswitch_1
        0x3e8 -> :sswitch_6
        0x3e9 -> :sswitch_2
    .end sparse-switch
.end method

.method changeWindowTranslucency(Z)Z
    .locals 4
    .param p1, "toOpaque"    # Z

    .prologue
    const/4 v1, 0x1

    .line 967
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-ne v0, p1, :cond_0

    .line 968
    const/4 v1, 0x0

    .line 975
    :goto_0
    return v1

    .line 972
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v2, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    iput v0, v2, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 974
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    goto :goto_0

    .line 972
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method clearOptionsLocked()V
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1336
    :cond_0
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .locals 9

    .prologue
    const/16 v8, 0x67

    const/4 v2, 0x0

    .line 1388
    iget-wide v4, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return v2

    .line 1392
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1393
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 1397
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1398
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1399
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1400
    const/4 v2, 0x1

    goto :goto_0
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 10
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrer"    # Ljava/lang/String;

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1183
    new-instance v8, Lcom/android/internal/content/ReferrerIntent;

    invoke-direct {v8, p2, p3}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1184
    .local v8, "rintent":Lcom/android/internal/content/ReferrerIntent;
    const/4 v9, 0x1

    .line 1185
    .local v9, "unsent":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 1190
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1191
    .local v6, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1193
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v6, v1}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1194
    const/4 v9, 0x0

    .line 1201
    .end local v6    # "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    .line 1202
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    .line 1204
    :cond_3
    return-void

    .line 1195
    :catch_0
    move-exception v7

    .line 1196
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending new intent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1197
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1198
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending new intent to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 286
    .local v6, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "packageName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    const-string v11, " processName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "launchedFromUid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 289
    const-string v11, " launchedFromPackage="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    const-string v11, " userId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 291
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "app="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 292
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "frontOfTask="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 294
    const-string v11, " task="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 295
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskAffinity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "realActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_1

    .line 299
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "baseDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 301
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "dataDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "stateNotNeeded="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 306
    const-string v11, " componentSpecified="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 307
    const-string v11, " mActivityType="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 308
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v11, :cond_2

    .line 309
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "rootVoiceInteraction="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 311
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "compat="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 312
    const-string v11, " labelRes=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string v11, " icon=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    const-string v11, " theme=0x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "config="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "stackConfigOverride="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 318
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resultTo="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 319
    const-string v11, " resultWho="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    const-string v11, " resultCode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 322
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v11, :cond_7

    .line 323
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "iconFilename":Ljava/lang/String;
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v11

    if-eqz v11, :cond_6

    .line 326
    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskDescription:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    const-string v11, " iconFilename="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    const-string v11, " label=\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    const-string v11, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    const-string v11, " color="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    :cond_6
    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v11}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 334
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "taskDescription contains Bitmap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    .end local v4    # "iconFilename":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v11, :cond_8

    .line 339
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "results="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 341
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    if-lez v11, :cond_b

    .line 342
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Pending Results:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 344
    .local v10, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/PendingIntentRecord;

    move-object v8, v11

    .line 345
    .local v8, "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    if-nez v8, :cond_a

    .line 347
    const-string/jumbo v11, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    .end local v8    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_9
    const/4 v8, 0x0

    goto :goto_1

    .line 349
    .restart local v8    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v11}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "pir":Lcom/android/server/am/PendingIntentRecord;
    .end local v10    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_d

    .line 355
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "Pending New Intents:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_d

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 358
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    if-nez v5, :cond_c

    .line 360
    const-string/jumbo v11, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 362
    :cond_c
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 366
    .end local v2    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v11, :cond_e

    .line 367
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "pendingOptions="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 369
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v11, :cond_f

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1, v12}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 372
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v11, :cond_10

    .line 373
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 375
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "launchFailed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 376
    const-string v11, " launchCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 377
    const-string v11, " lastLaunchTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_1a

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 381
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "haveState="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 382
    const-string v11, " icicle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 383
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "state="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 384
    const-string v11, " stopped="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 385
    const-string v11, " delayedResume="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 386
    const-string v11, " finishing="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 387
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "keysPaused="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 388
    const-string v11, " inHistory="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 389
    const-string v11, " visible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 390
    const-string v11, " sleeping="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 391
    const-string v11, " idle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 392
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "fullscreen="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 393
    const-string v11, " noDisplay="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 394
    const-string v11, " immersive="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 395
    const-string v11, " launchMode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 396
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "frozenBeforeDestroy="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 397
    const-string v11, " forceNewConfig="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 398
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "mActivityType="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    invoke-static {v11}, Lcom/android/server/am/ActivityRecord;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_12

    .line 401
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "displayStartTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_1b

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    :goto_5
    const-string v11, " startTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_1c

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 409
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 410
    .local v9, "waitingVisible":Z
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_13

    if-nez v9, :cond_13

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v11, :cond_14

    .line 411
    :cond_13
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "waitingVisible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Z)V

    .line 412
    const-string v11, " nowVisible="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 413
    const-string v11, " lastVisibleTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_1d

    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 418
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-nez v11, :cond_15

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v11, :cond_16

    .line 419
    :cond_15
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "configDestroy="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 420
    const-string v11, " configChangeFlags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v11, :cond_17

    .line 424
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "connections="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 429
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->vrActivity:Z

    if-nez v11, :cond_18

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    if-eqz v11, :cond_19

    .line 430
    :cond_18
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "vrActivity="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->vrActivity:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 431
    const-string v11, " launchedBehindVRApp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->launchedBehindVRApp:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 438
    :cond_19
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v11, "multiWindowStyle="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 442
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    const-string v11, "bMultiInstance="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 445
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 449
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "mIsLastShownWhenLocked="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 464
    return-void

    .line 379
    .end local v9    # "waitingVisible":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_4

    .line 403
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_5

    .line 406
    :cond_1c
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->startTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_6

    .line 415
    .restart local v9    # "waitingVisible":Z
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_7
.end method

.method finishLaunchTickingLocked()V
    .locals 4

    .prologue
    .line 1404
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 1405
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1406
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 1407
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1409
    :cond_0
    return-void
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getDisplayId()I

    move-result v0

    .line 1977
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->forTargetActivity()Landroid/app/ActivityOptions;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPreferredOrientation()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1097
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v0

    .line 1102
    :cond_0
    :goto_0
    return v0

    .line 1099
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_0
.end method

.method getScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    .prologue
    .line 1984
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    .line 1626
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v2, :cond_3

    .line 1627
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1629
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1630
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    .line 1631
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1639
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v0, v2

    .line 1645
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1649
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v0

    .line 1639
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    move-object v0, p0

    .line 1649
    goto :goto_1
.end method

.method public hasSubWindow()Z
    .locals 1

    .prologue
    .line 1665
    const/4 v0, 0x0

    return v0
.end method

.method isApplicationActivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1040
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-nez v3, :cond_0

    move v0, v1

    .line 1043
    .local v0, "result":Z
    :goto_0
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :goto_1
    or-int/2addr v0, v1

    .line 1046
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v2

    .line 1040
    goto :goto_0

    .restart local v0    # "result":Z
    :cond_1
    move v1, v2

    .line 1043
    goto :goto_1
.end method

.method isCoupled()Z
    .locals 1

    .prologue
    .line 2001
    const/4 v0, 0x0

    return v0
.end method

.method final isDestroyable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1748
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return v0

    .line 1757
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 1766
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 1771
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_0

    .line 1775
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isExpandHomeActivity()Z
    .locals 1

    .prologue
    .line 1031
    const/4 v0, 0x0

    return v0
.end method

.method isFloatingActivity()Z
    .locals 2

    .prologue
    .line 1093
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHomeActivity()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1009
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHomeWindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1670
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-ne v1, v0, :cond_0

    .line 1674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInHistory()Z
    .locals 1

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    return v0
.end method

.method isInStackLocked()Z
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterestingToUserLocked()Z
    .locals 2

    .prologue
    .line 1682
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNotResolverActivity()Z
    .locals 2

    .prologue
    .line 623
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPersistable()Z
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRecentsActivity()Z
    .locals 2

    .prologue
    .line 1036
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSamsungHomeActivity()Z
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method isSamsungPinnedHomeActivity()Z
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method isVRActivity()Z
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->isVRActivity(Z)Z

    move-result v0

    return v0
.end method

.method isVRActivity(Z)Z
    .locals 1
    .param p1, "original"    # Z

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->vrActivity:Z

    .line 1066
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    iget-boolean v0, v0, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->vrActivity:Z

    goto :goto_0
.end method

.method makeFinishingLocked()V
    .locals 2

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1113
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 1117
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makingFinishing(Landroid/os/IBinder;)V

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_1

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 1125
    :cond_1
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1418
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pauseKeyDispatchingLocked()V
    .locals 2

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_0

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 1354
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 1356
    :cond_0
    return-void
.end method

.method putInHistory()V
    .locals 1

    .prologue
    .line 979
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-nez v0, :cond_0

    .line 980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 982
    :cond_0
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 3
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 1147
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1148
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1149
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    .line 1150
    .local v1, "r":Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1

    .line 1148
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1151
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1152
    if-nez p2, :cond_0

    .line 1156
    :cond_2
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-ne v2, p3, :cond_0

    .line 1158
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1154
    :cond_3
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1161
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_4
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 1347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 1349
    :cond_0
    return-void
.end method

.method public reportFullyDrawnLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    .line 1435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1436
    .local v0, "curTime":J
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_0

    .line 1437
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    .line 1439
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1440
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    .line 1441
    iget-wide v8, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    sub-long v4, v0, v8

    .line 1442
    .local v4, "thisTime":J
    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_4

    iget-wide v8, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    sub-long v6, v0, v8

    .line 1445
    .local v6, "totalTime":J
    :goto_0
    const-wide/16 v8, 0x40

    const-string/jumbo v10, "drawing"

    invoke-static {v8, v9, v10, v14}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1446
    const/16 v8, 0x755a

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    const/4 v10, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1449
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1450
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1451
    const-string v8, "Fully drawn "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    const-string v8, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1455
    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 1456
    const-string v8, " (total "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1458
    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    :cond_1
    const-string v8, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    cmp-long v8, v6, v12

    if-lez v8, :cond_2

    .line 1465
    :cond_2
    iput-wide v12, v3, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    .line 1467
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "thisTime":J
    .end local v6    # "totalTime":J
    :cond_3
    iput-wide v12, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 1468
    return-void

    .restart local v4    # "thisTime":J
    :cond_4
    move-wide v6, v4

    .line 1442
    goto :goto_0
.end method

.method resumeKeyDispatchingLocked()V
    .locals 2

    .prologue
    .line 1359
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_0

    .line 1360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 1361
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 1363
    :cond_0
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1795
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1796
    const-string/jumbo v0, "launched_from_uid"

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1797
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1798
    const-string/jumbo v0, "launched_from_package"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1801
    const-string/jumbo v0, "resolved_type"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1803
    :cond_1
    const-string v0, "component_specified"

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1804
    const-string/jumbo v0, "user_id"

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1806
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_2

    .line 1807
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1810
    :cond_2
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1811
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1812
    const-string/jumbo v0, "intent"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_3

    .line 1815
    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1816
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1817
    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1819
    :cond_3
    return-void
.end method

.method public scheduleSetMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService;->scheduleSetMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1655
    return-void
.end method

.method setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1076
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1077
    return-void
.end method

.method setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "includeUniqueOptions"    # Z

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1084
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    .line 1085
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getScale()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_0
.end method

.method setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .locals 0
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 1992
    return-void
.end method

.method public setSleeping(Z)V
    .locals 4
    .param p1, "_sleeping"    # Z

    .prologue
    .line 1687
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-ne v1, p1, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return-void

    .line 1690
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    .line 1692
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 1693
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1694
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1697
    :catch_0
    move-exception v0

    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when sleeping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "newTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTask"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStopped(I)V

    .line 954
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 955
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 956
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5
    .param p1, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 1785
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1787
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v1

    .line 1788
    .local v1, "iconFilename":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1789
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 1791
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "iconFilename":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1792
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 959
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 964
    :cond_0
    return-void
.end method

.method public startDisplayChanging(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2005
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->startDisplayChanging(Landroid/os/IBinder;)V

    .line 2008
    :cond_0
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 1425
    :cond_0
    return-void
.end method

.method startLaunchTickingLocked()V
    .locals 4

    .prologue
    .line 1378
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    goto :goto_0
.end method

.method stopDisplayChanging()V
    .locals 2

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->stopDisplayChanging(Landroid/os/IBinder;)V

    .line 2014
    :cond_0
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 1428
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_1

    .line 1429
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1430
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 1432
    :cond_1
    return-void
.end method

.method takeFromHistory()V
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1

    .line 986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 987
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 988
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 992
    :cond_1
    return-void
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .locals 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1340
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1341
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1930
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_1

    const-string v1, " f}"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1943
    :goto_2
    return-object v1

    .line 1931
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "}"

    goto :goto_1

    .line 1935
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1936
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1940
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1941
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    .line 1943
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1216
    if-eqz p1, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1220
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1222
    :cond_1
    return-void
.end method

.method updateOptionsLocked(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1207
    if-eqz p1, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1211
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1213
    :cond_1
    return-void
.end method

.method updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newThumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1366
    if-eqz p1, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 1370
    .local v0, "thumbnailUpdated":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1374
    .end local v0    # "thumbnailUpdated":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object p2, v1, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 1375
    return-void
.end method

.method windowsDrawnLocked()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1536
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1540
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    .line 1541
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleResetTargetHeapUtilization(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1550
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    .line 1552
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1553
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v2, "com.android.vending/.AssetBrowserActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v2, "com.android.vending/com.google.android.finsky.activities.TosActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1555
    :cond_1
    const-string v1, "GATE"

    const-string v2, "<GATE-M> MARKET_LAUNCHED </GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1563
    iput-wide v4, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    .line 1564
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1565
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_3

    .line 1566
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    .line 1568
    :cond_3
    return-void

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1545
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1546
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Null Pointer Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1557
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    const-string v1, "GATE"

    const-string v2, "<GATE-M> APP_OPENED </GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method windowsVisibleLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1571
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1573
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v2, :cond_1

    .line 1574
    iput-boolean v5, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 1575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    .line 1576
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v2, :cond_3

    .line 1579
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(ZI)Ljava/util/ArrayList;

    .line 1582
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mNeedToIdle:Z

    if-eqz v2, :cond_2

    .line 1583
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1603
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1606
    iput-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->mNeedToIdle:Z

    .line 1612
    :cond_1
    iget v2, p0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-ne v2, v5, :cond_5

    .line 1613
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v4, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 1618
    :goto_1
    const-string v2, "Timeline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeline: Activity_windows_visible id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return-void

    .line 1584
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1585
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_0

    .line 1593
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1594
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 1595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 1596
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1595
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1599
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1600
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_0

    .line 1615
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v4, v4, v4, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto :goto_1
.end method
