.class final Lcom/android/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_APPREQUESTORIENTATION:Ljava/lang/String; = "multiwindow_apprequestorientation"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_CAN_MOVE_TASK_TO_SCREEN:Ljava/lang/String; = "can_move_task_to_screen"

.field private static final ATTR_DISPLAY_ID:Ljava/lang/String; = "display_id"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_FIRSTACTIVETIME:Ljava/lang/String; = "first_active_time"

.field private static final ATTR_IS_PRIVAT_EMODE:Ljava/lang/String; = "is_private_mode"

.field private static final ATTR_LASTACTIVETIME:Ljava/lang/String; = "last_active_time"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MULTIWINDOWSTYLE:Ljava/lang/String; = "multiwindow_style"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_PRIVILEGED:Ljava/lang/String; = "privileged"

.field static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_RESIZEABLE:Ljava/lang/String; = "resizeable"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field static final IGNORE_RETURN_TO_RECENTS:Z = true

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TASK_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_task_thumbnail"


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field bHidden:Z

.field canMoveTaskToScreen:Z

.field displayId:I

.field effectiveUid:I

.field firstActiveTime:J

.field fixed:Z

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field isSecretMode:Z

.field lastActiveElapsedTime:J

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mChildCoupledTask:Lcom/android/server/am/TaskRecord;

.field private final mFilename:Ljava/lang/String;

.field private mFinishWithCoupledTask:Z

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field mLastTimeMoved:J

.field mLockTaskAuth:I

.field mLockTaskMode:I

.field mLockTaskUid:I

.field mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field private mParentCoupledTask:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field private mPrivileged:Z

.field mResizeable:Z

.field mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskToReturnTo:I

.field mTmpDisplayIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTmpDisplayObscuredZones:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field maxRecents:I

.field multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stack:Lcom/android/server/am/ActivityStack;

.field stringName:Ljava/lang/String;

.field final taskId:I

.field taskType:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZLcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_taskType"    # I
    .param p13, "_userId"    # I
    .param p14, "_effectiveUid"    # I
    .param p15, "_lastDescription"    # Ljava/lang/String;
    .param p17, "_firstActiveTime"    # J
    .param p19, "_lastActiveTime"    # J
    .param p21, "lastTimeMoved"    # J
    .param p23, "neverRelinquishIdentity"    # Z
    .param p24, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p25, "taskAffiliation"    # I
    .param p26, "prevTaskId"    # I
    .param p27, "nextTaskId"    # I
    .param p28, "taskAffiliationColor"    # I
    .param p29, "callingUid"    # I
    .param p30, "callingPackage"    # Ljava/lang/String;
    .param p31, "resizeable"    # Z
    .param p32, "privileged"    # Z
    .param p33, "mwStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/samsung/android/multiwindow/MultiWindowStyle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    .local p16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 167
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    .line 175
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->fixed:Z

    .line 177
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 179
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFinishWithCoupledTask:Z

    .line 267
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 288
    sget-object v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 291
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 302
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 305
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 309
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 319
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 321
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 1722
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    .line 1769
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayIdArray:Ljava/util/ArrayList;

    .line 387
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_task_thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 390
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 391
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 392
    iput-object p3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 393
    iput-object p4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 394
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 395
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 396
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 397
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 398
    iput-object p7, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 399
    iput-object p8, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 400
    iput-boolean p9, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 401
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 402
    iput-boolean p10, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 403
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    .line 404
    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 405
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 406
    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 407
    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 408
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 409
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 410
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 411
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 412
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 413
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 414
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 415
    move/from16 v0, p25

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 416
    move/from16 v0, p28

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 417
    move/from16 v0, p26

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 418
    move/from16 v0, p27

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 419
    move/from16 v0, p29

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 420
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 421
    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    .line 422
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    .line 425
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 426
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {p33 .. p33}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 427
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {p33 .. p33}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    .line 430
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 167
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 173
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    .line 175
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->fixed:Z

    .line 177
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 178
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 179
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFinishWithCoupledTask:Z

    .line 267
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 288
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 291
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 302
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 305
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 309
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 319
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 321
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 1722
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayIdArray:Ljava/util/ArrayList;

    .line 352
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 355
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 356
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 357
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 358
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 359
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 360
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 362
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 363
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 364
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 366
    iput v3, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 367
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 369
    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 372
    iput v3, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 373
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 374
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 375
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 376
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 167
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 173
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->canMoveTaskToScreen:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->fixed:Z

    .line 177
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 178
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 179
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFinishWithCoupledTask:Z

    .line 267
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 279
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 288
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 291
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 302
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 305
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 309
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 319
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 321
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 1722
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    .line 1769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayIdArray:Ljava/util/ArrayList;

    .line 335
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 339
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 340
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 341
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 342
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 343
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 345
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 346
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 347
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 348
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 55
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1306
    const/4 v8, 0x0

    .line 1307
    .local v8, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1308
    .local v9, "affinityIntent":Landroid/content/Intent;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v21, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v12, 0x0

    .line 1310
    .local v12, "realActivity":Landroid/content/ComponentName;
    const/4 v13, 0x0

    .line 1311
    .local v13, "origActivity":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 1312
    .local v10, "affinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1313
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v48, 0x0

    .line 1314
    .local v48, "hasRootAffinity":Z
    const/4 v14, 0x0

    .line 1315
    .local v14, "rootHasReset":Z
    const/4 v15, 0x0

    .line 1316
    .local v15, "autoRemoveRecents":Z
    const/16 v16, 0x0

    .line 1317
    .local v16, "askedCompatMode":Z
    const/16 v17, 0x0

    .line 1318
    .local v17, "taskType":I
    const/16 v18, 0x0

    .line 1319
    .local v18, "userId":I
    const/16 v19, -0x1

    .line 1320
    .local v19, "effectiveUid":I
    const/16 v20, 0x0

    .line 1321
    .local v20, "lastDescription":Ljava/lang/String;
    const-wide/16 v22, -0x1

    .line 1322
    .local v22, "firstActiveTime":J
    const-wide/16 v24, -0x1

    .line 1323
    .local v24, "lastActiveTime":J
    const-wide/16 v26, 0x0

    .line 1324
    .local v26, "lastTimeOnTop":J
    const/16 v28, 0x1

    .line 1325
    .local v28, "neverRelinquishIdentity":Z
    const/4 v7, -0x1

    .line 1326
    .local v7, "taskId":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v50

    .line 1327
    .local v50, "outerDepth":I
    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1328
    .local v29, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/16 v30, -0x1

    .line 1329
    .local v30, "taskAffiliation":I
    const/16 v33, 0x0

    .line 1330
    .local v33, "taskAffiliationColor":I
    const/16 v31, -0x1

    .line 1331
    .local v31, "prevTaskId":I
    const/16 v32, -0x1

    .line 1332
    .local v32, "nextTaskId":I
    const/16 v34, -0x1

    .line 1333
    .local v34, "callingUid":I
    const-string v35, ""

    .line 1334
    .local v35, "callingPackage":Ljava/lang/String;
    const/16 v36, 0x0

    .line 1335
    .local v36, "resizeable":Z
    const/16 v37, 0x0

    .line 1337
    .local v37, "privileged":Z
    new-instance v38, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 1340
    .local v38, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v52, 0x0

    .line 1343
    .local v52, "privateMode":Z
    const/16 v46, 0x0

    .line 1344
    .local v46, "displayId":I
    const/16 v44, 0x1

    .line 1347
    .local v44, "canMoveTaskToScreen":Z
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    add-int/lit8 v42, v6, -0x1

    .local v42, "attrNdx":I
    :goto_0
    if-ltz v42, :cond_1d

    .line 1348
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v41

    .line 1349
    .local v41, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v43

    .line 1352
    .local v43, "attrValue":Ljava/lang/String;
    const-string/jumbo v6, "task_id"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1353
    const/4 v6, -0x1

    if-ne v7, v6, :cond_0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1347
    :cond_0
    :goto_1
    add-int/lit8 v42, v42, -0x1

    goto :goto_0

    .line 1354
    :cond_1
    const-string/jumbo v6, "real_activity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1355
    invoke-static/range {v43 .. v43}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_1

    .line 1356
    :cond_2
    const-string/jumbo v6, "orig_activity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1357
    invoke-static/range {v43 .. v43}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    goto :goto_1

    .line 1358
    :cond_3
    const-string v6, "affinity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1359
    move-object/from16 v10, v43

    goto :goto_1

    .line 1360
    :cond_4
    const-string/jumbo v6, "root_affinity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1361
    move-object/from16 v11, v43

    .line 1362
    const/16 v48, 0x1

    goto :goto_1

    .line 1363
    :cond_5
    const-string/jumbo v6, "root_has_reset"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1364
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto :goto_1

    .line 1365
    :cond_6
    const-string v6, "auto_remove_recents"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1366
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_1

    .line 1367
    :cond_7
    const-string v6, "asked_compat_mode"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1368
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    goto :goto_1

    .line 1369
    :cond_8
    const-string/jumbo v6, "user_id"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1370
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    goto/16 :goto_1

    .line 1371
    :cond_9
    const-string/jumbo v6, "effective_uid"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1372
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    goto/16 :goto_1

    .line 1373
    :cond_a
    const-string/jumbo v6, "task_type"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1374
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto/16 :goto_1

    .line 1375
    :cond_b
    const-string/jumbo v6, "first_active_time"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1376
    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_1

    .line 1377
    :cond_c
    const-string/jumbo v6, "last_active_time"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1378
    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    goto/16 :goto_1

    .line 1379
    :cond_d
    const-string/jumbo v6, "last_description"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1380
    move-object/from16 v20, v43

    goto/16 :goto_1

    .line 1381
    :cond_e
    const-string/jumbo v6, "last_time_moved"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1382
    invoke-static/range {v43 .. v43}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_1

    .line 1383
    :cond_f
    const-string/jumbo v6, "never_relinquish_identity"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1384
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    goto/16 :goto_1

    .line 1385
    :cond_10
    const-string/jumbo v6, "task_description_"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1386
    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1387
    :cond_11
    const-string/jumbo v6, "task_affiliation"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1388
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto/16 :goto_1

    .line 1389
    :cond_12
    const-string/jumbo v6, "prev_affiliation"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1390
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto/16 :goto_1

    .line 1391
    :cond_13
    const-string/jumbo v6, "next_affiliation"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1392
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v32

    goto/16 :goto_1

    .line 1393
    :cond_14
    const-string/jumbo v6, "task_affiliation_color"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1394
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v33

    goto/16 :goto_1

    .line 1395
    :cond_15
    const-string v6, "calling_uid"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1396
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v34

    goto/16 :goto_1

    .line 1397
    :cond_16
    const-string v6, "calling_package"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1398
    move-object/from16 v35, v43

    goto/16 :goto_1

    .line 1399
    :cond_17
    const-string/jumbo v6, "resizeable"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1400
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    goto/16 :goto_1

    .line 1401
    :cond_18
    const-string/jumbo v6, "privileged"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1402
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    goto/16 :goto_1

    .line 1404
    :cond_19
    const-string/jumbo v6, "multiwindow_style"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1405
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v53, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v53

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_1

    .line 1406
    :cond_1a
    const-string/jumbo v6, "multiwindow_apprequestorientation"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1407
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    goto/16 :goto_1

    .line 1410
    :cond_1b
    const-string/jumbo v6, "is_private_mode"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1411
    invoke-static/range {v43 .. v43}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    goto/16 :goto_1

    .line 1420
    :cond_1c
    const-string v6, "ActivityManager"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "TaskRecord: Unknown attribute="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1425
    .end local v41    # "attrName":Ljava/lang/String;
    .end local v43    # "attrValue":Ljava/lang/String;
    :cond_1d
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v47

    .local v47, "event":I
    const/4 v6, 0x1

    move/from16 v0, v47

    if-eq v0, v6, :cond_22

    const/4 v6, 0x3

    move/from16 v0, v47

    if-ne v0, v6, :cond_1e

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v50

    if-ge v6, v0, :cond_22

    .line 1427
    :cond_1e
    const/4 v6, 0x2

    move/from16 v0, v47

    if-ne v0, v6, :cond_1d

    .line 1428
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v49

    .line 1431
    .local v49, "name":Ljava/lang/String;
    const-string v6, "affinity_intent"

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1432
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    goto :goto_2

    .line 1433
    :cond_1f
    const-string/jumbo v6, "intent"

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1434
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_2

    .line 1435
    :cond_20
    const-string v6, "activity"

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1436
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1439
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1d

    .line 1440
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1443
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_21
    const-string v6, "ActivityManager"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "restoreTask: Unexpected name="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1448
    .end local v49    # "name":Ljava/lang/String;
    :cond_22
    if-nez v48, :cond_26

    .line 1449
    move-object v11, v10

    .line 1453
    :cond_23
    :goto_3
    if-gtz v19, :cond_25

    .line 1454
    if-eqz v8, :cond_27

    move-object/from16 v45, v8

    .line 1455
    .local v45, "checkIntent":Landroid/content/Intent;
    :goto_4
    const/16 v19, 0x0

    .line 1456
    if-eqz v45, :cond_24

    .line 1457
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v51

    .line 1459
    .local v51, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual/range {v45 .. v45}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v53, 0x2200

    move-object/from16 v0, v51

    move/from16 v1, v53

    move/from16 v2, v18

    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v40

    .line 1463
    .local v40, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v40, :cond_24

    .line 1464
    move-object/from16 v0, v40

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    .end local v40    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v51    # "pm":Landroid/content/pm/IPackageManager;
    :cond_24
    :goto_5
    const-string v6, "ActivityManager"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "Updating task #"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " for "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, ": effectiveUid="

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    .end local v45    # "checkIntent":Landroid/content/Intent;
    :cond_25
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v5 .. v38}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;ZZLcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1480
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    move/from16 v0, v52

    iput-boolean v0, v5, Lcom/android/server/am/TaskRecord;->isSecretMode:Z

    .line 1487
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v39, v6, -0x1

    .local v39, "activityNdx":I
    :goto_6
    if-ltz v39, :cond_28

    .line 1488
    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1487
    add-int/lit8 v39, v39, -0x1

    goto :goto_6

    .line 1450
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v39    # "activityNdx":I
    :cond_26
    const-string v6, "@"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1451
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_27
    move-object/from16 v45, v9

    .line 1454
    goto/16 :goto_4

    .line 1492
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v39    # "activityNdx":I
    :cond_28
    return-object v5

    .line 1466
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v39    # "activityNdx":I
    .restart local v45    # "checkIntent":Landroid/content/Intent;
    .restart local v51    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v6

    goto :goto_5
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 9
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/high16 v8, 0x8000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 453
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_7

    .line 454
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_6

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 460
    :cond_0
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 461
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_1

    .line 465
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 467
    :cond_1
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 468
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 470
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 471
    if-eqz p1, :cond_4

    .line 475
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 476
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 477
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 478
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 482
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v8

    if-eqz v4, :cond_4

    .line 483
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 489
    :cond_4
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 490
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 491
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 512
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_b

    move v1, v6

    .line 513
    .local v1, "intentFlags":I
    :goto_3
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_5

    .line 516
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 519
    :cond_5
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 520
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_c

    .line 522
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 536
    :goto_4
    iget-boolean v4, p2, Landroid/content/pm/ActivityInfo;->resizeable:Z

    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    .line 537
    iget v4, p2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    .line 538
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    :goto_5
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    .line 539
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 540
    .end local v1    # "intentFlags":I
    :goto_6
    return-void

    :cond_6
    move v4, v6

    .line 454
    goto/16 :goto_0

    .line 456
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v4, :cond_0

    goto :goto_6

    :cond_8
    move-object v4, v7

    .line 490
    goto :goto_1

    .line 493
    :cond_9
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .local v2, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_a

    .line 496
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 497
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 498
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 499
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 502
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 503
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 504
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 506
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_a
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 507
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 508
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 512
    .end local v2    # "targetComponent":Landroid/content/ComponentName;
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    goto :goto_3

    .line 523
    .restart local v1    # "intentFlags":I
    :cond_c
    const v4, 0x82000

    and-int/2addr v4, v1

    const/high16 v7, 0x80000

    if-ne v4, v7, :cond_e

    .line 528
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_d

    .line 529
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_4

    .line 531
    :cond_d
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_4

    .line 534
    :cond_e
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_4

    :cond_f
    move v5, v6

    .line 538
    goto :goto_5
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 777
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    .line 807
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mNeedUpdateFocusWhileRemovingStack:Z

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_1

    .line 815
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 819
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 820
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 821
    iget v0, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 822
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 824
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 837
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 838
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 839
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 849
    :cond_2
    return-void

    .line 835
    :cond_3
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    iput v0, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_0
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/high16 v5, 0x1000000

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 782
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 785
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 786
    .local v1, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_3

    .line 787
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 788
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 789
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 791
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 792
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 793
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 801
    .end local v0    # "i":I
    .end local v1    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 802
    return-void

    .line 784
    .restart local v0    # "i":I
    .restart local v1    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method autoRemoveFromRecents()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method closeRecentsChain()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 619
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 620
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 621
    return-void
.end method

.method disposeThumbnail()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 696
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 697
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x80

    const/16 v7, 0x7d

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1496
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1497
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1498
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1499
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1501
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1503
    :cond_1
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_4

    .line 1522
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1524
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1525
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1529
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1531
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1532
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1536
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1538
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1539
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 1542
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1545
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    .line 1546
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_a

    .line 1551
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1552
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1553
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1554
    const-string v0, " taskType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1555
    const-string v0, " mTaskToReturnTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1557
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v3, :cond_c

    .line 1559
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1560
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1561
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1562
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    :cond_c
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v2, :cond_d

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v0, v6, :cond_d

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v6, :cond_d

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_e

    .line 1567
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1568
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1569
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_15

    .line 1571
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    :goto_1
    const-string v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1576
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_16

    .line 1578
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1582
    :goto_2
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1585
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_10

    .line 1586
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1587
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1588
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1590
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1591
    const-string v0, " lastThumbnailFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1592
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 1593
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1595
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_12

    .line 1596
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1598
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1599
    const-string v0, " mResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1600
    const-string v0, " firstActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1601
    const-string v0, " lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1602
    const-string v0, " lastActiveElapsedTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveElapsedTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1603
    const-string v0, " (inactive for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v0, "s)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v0, :cond_13

    .line 1607
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "multiWindowStyle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1608
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1612
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1613
    const-string/jumbo v0, "isSecretMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isSecretMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1616
    return-void

    .line 1505
    :cond_14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 1573
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1580
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1119
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1120
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1121
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1122
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 1120
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1129
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findEffectiveRootIndex()I
    .locals 5

    .prologue
    .line 1194
    const/4 v1, 0x0

    .line 1195
    .local v1, "effectiveNdx":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1196
    .local v3, "topActivityNdx":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_0
    if-gt v0, v3, :cond_2

    .line 1197
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1198
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 1196
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    :cond_1
    move v1, v0

    .line 1202
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_0

    .line 1206
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v1
.end method

.method freeLastThumbnail()V
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 692
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public getChildCoupledTask()Lcom/android/server/am/TaskRecord;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method public getCoupledTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "coupledTask":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    goto :goto_0
.end method

.method public getCoupledTaskId()I
    .locals 2

    .prologue
    .line 244
    const/4 v1, -0x1

    .line 245
    .local v1, "taskId":I
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getCoupledTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 246
    .local v0, "coupledTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_0

    .line 247
    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 249
    :cond_0
    return v1
.end method

.method getDisplayObscuredZones(Z)Landroid/util/SparseArray;
    .locals 9
    .param p1, "lifeCycle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0xf

    .line 1730
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1733
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_5

    .line 1734
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1735
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 1733
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1738
    :cond_1
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    .line 1739
    .local v4, "type":I
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1740
    .local v2, "currentZone":I
    if-nez v4, :cond_3

    .line 1741
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    .line 1742
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1744
    :cond_2
    if-eqz p1, :cond_0

    .line 1745
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1747
    :cond_3
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1748
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    or-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1749
    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1750
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    or-int/lit8 v7, v2, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1753
    .end local v2    # "currentZone":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "type":I
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayObscuredZones:Landroid/util/SparseArray;

    return-object v5
.end method

.method getInactiveDuration()J
    .locals 4

    .prologue
    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V
    .locals 2
    .param p1, "thumbs"    # Landroid/app/ActivityManager$TaskThumbnail;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 676
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 677
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 681
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLayer()I
    .locals 2

    .prologue
    .line 1814
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1815
    .local v0, "appRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1816
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getLayer()I

    move-result v1

    .line 1820
    :goto_0
    return v1

    .line 1817
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1818
    const/4 v1, 0x1

    goto :goto_0

    .line 1820
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getObscuredScreenIds(Lcom/android/server/am/ActivityRecord;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1771
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayIdArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1772
    const/4 v3, 0x0

    .line 1773
    .local v3, "obscuredScreenZone":I
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1774
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1775
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1776
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    if-eq p1, v4, :cond_0

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_1

    .line 1774
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1780
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v2

    .line 1781
    .local v2, "currentScreenZone":I
    and-int v5, v2, v3

    if-eq v5, v2, :cond_2

    .line 1782
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayIdArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v5

    or-int/2addr v3, v5

    goto :goto_1

    .line 1787
    .end local v2    # "currentScreenZone":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpDisplayIdArray:Ljava/util/ArrayList;

    return-object v5
.end method

.method public getParentCoupledTask()Lcom/android/server/am/TaskRecord;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 708
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method getScreenZone()I
    .locals 5

    .prologue
    .line 1757
    const/4 v2, 0x0

    .line 1758
    .local v2, "obscuredScreenZone":I
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1759
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1760
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1761
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 1759
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1764
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ActivityStackSupervisor;->convertDisplayIdToScreenZone(I)I

    move-result v4

    or-int/2addr v2, v4

    goto :goto_1

    .line 1766
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v2
.end method

.method public getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;
    .locals 4

    .prologue
    .line 978
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    .line 979
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 980
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p0, :cond_0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isForceHideCascade()Z

    move-result v3

    if-nez v3, :cond_0

    .line 982
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 983
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 986
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    .line 987
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    .line 988
    return-object v1
.end method

.method getTaskToReturnTo()I
    .locals 5

    .prologue
    .line 579
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 580
    .local v0, "index":I
    if-lez v0, :cond_5

    .line 581
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 582
    .local v1, "next":Lcom/android/server/am/TaskRecord;
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-eqz v3, :cond_0

    .line 583
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 598
    .end local v1    # "next":Lcom/android/server/am/TaskRecord;
    :goto_0
    return v3

    .line 585
    .restart local v1    # "next":Lcom/android/server/am/TaskRecord;
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object v2, v3

    .line 588
    .local v2, "nextAr":Lcom/android/server/am/ActivityRecord;
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 591
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 585
    .end local v2    # "nextAr":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 593
    .restart local v2    # "nextAr":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 598
    .end local v1    # "next":Lcom/android/server/am/TaskRecord;
    .end local v2    # "nextAr":Lcom/android/server/am/ActivityRecord;
    :cond_5
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    goto :goto_0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 717
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 718
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 719
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    .line 717
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 724
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1807
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1808
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1810
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 1664
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    return v0
.end method

.method getVisibleObscuredZone(Z)I
    .locals 7
    .param p1, "lifeCycle"    # Z

    .prologue
    const/16 v5, 0xf

    .line 1697
    const/4 v2, 0x0

    .line 1698
    .local v2, "obscuredZone":I
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1699
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1700
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1701
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    .line 1699
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1704
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    .line 1705
    .local v4, "type":I
    if-nez v4, :cond_4

    .line 1706
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_3

    if-nez p1, :cond_3

    move v2, v5

    .line 1718
    .end local v2    # "obscuredZone":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "type":I
    :cond_2
    :goto_1
    return v2

    .line 1709
    .restart local v2    # "obscuredZone":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "type":I
    :cond_3
    if-eqz p1, :cond_0

    move v2, v5

    .line 1710
    goto :goto_1

    .line 1712
    :cond_4
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    .line 1713
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    goto :goto_1

    .line 1714
    :cond_5
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 1715
    const/4 v2, 0x0

    goto :goto_1
.end method

.method hasFullScreenActivity()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1791
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->getDisplayObscuredZones(Z)Landroid/util/SparseArray;

    move-result-object v1

    .line 1793
    .local v1, "taskDisplayObscuredZones":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1794
    .local v0, "NZ":I
    const/4 v3, 0x0

    .local v3, "zoneNdx":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1795
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1797
    .local v2, "zoneDisplayId":I
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1798
    const/4 v4, 0x1

    .line 1801
    .end local v2    # "zoneDisplayId":I
    :cond_0
    return v4

    .line 1794
    .restart local v2    # "zoneDisplayId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method isApplicationTask()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1093
    iget v3, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-nez v3, :cond_0

    move v0, v1

    .line 1096
    .local v0, "result":Z
    :goto_0
    iget v3, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :goto_1
    or-int/2addr v0, v1

    .line 1099
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v2

    .line 1093
    goto :goto_0

    .restart local v0    # "result":Z
    :cond_1
    move v1, v2

    .line 1096
    goto :goto_1
.end method

.method public isCoupled()Z
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "coupledTask":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 260
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    goto :goto_0

    .line 260
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isExpandHomeTask()Z
    .locals 1

    .prologue
    .line 1082
    const/4 v0, 0x0

    return v0
.end method

.method public isFinishWithCoupledTask()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mFinishWithCoupledTask:Z

    return v0
.end method

.method isFullscreenVisible()Z
    .locals 1

    .prologue
    .line 1669
    iget v0, p0, Lcom/android/server/am/TaskRecord;->displayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible(I)Z

    move-result v0

    return v0
.end method

.method isFullscreenVisible(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1675
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1676
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1677
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2

    .line 1675
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1681
    :cond_2
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_1

    .line 1689
    const/4 v3, 0x1

    .line 1693
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isHomeTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockTaskWhitelistedLocked()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1038
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1039
    .local v2, "pkg":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_2

    .line 1051
    :cond_0
    :goto_1
    return v3

    .line 1038
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1042
    .restart local v2    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1043
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1046
    array-length v4, v1

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_0

    .line 1047
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1048
    const/4 v3, 0x1

    goto :goto_1

    .line 1046
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method isOverHomeStack()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1110
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRecentTask()Z
    .locals 2

    .prologue
    .line 1088
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSamsungHomeTask()Z
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x0

    return v0
.end method

.method isSamsungPinnedHomeTask()Z
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 997
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 998
    :pswitch_0
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    goto :goto_0

    .line 999
    :pswitch_1
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    goto :goto_0

    .line 1000
    :pswitch_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    goto :goto_0

    .line 1001
    :pswitch_3
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    goto :goto_0

    .line 1002
    :pswitch_4
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    goto :goto_0

    .line 997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 772
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 773
    return-void
.end method

.method final performClearTaskAtIndexLocked(I)V
    .locals 1
    .param p1, "activityNdx"    # I

    .prologue
    .line 885
    const-string v0, "clear-task-index"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(ILjava/lang/String;)V

    .line 886
    return-void
.end method

.method final performClearTaskAtIndexLocked(ILjava/lang/String;)V
    .locals 7
    .param p1, "activityNdx"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 889
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 890
    .local v6, "numActivities":I
    :goto_0
    if-ge p1, v6, :cond_3

    .line 891
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 892
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 890
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_2

    .line 897
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 898
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 899
    add-int/lit8 p1, p1, -0x1

    .line 900
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    add-int/lit8 p1, p1, -0x1

    .line 904
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 907
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 931
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "activityNdx":I
    :goto_0
    if-ltz v8, :cond_8

    .line 932
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 933
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 931
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 936
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    move-object v11, v1

    .line 940
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    :goto_1
    if-ge v8, v9, :cond_5

    .line 941
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 942
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 940
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 945
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 946
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_4

    .line 947
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 949
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "clear-task-stack"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 951
    add-int/lit8 v8, v8, -0x1

    .line 952
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 959
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    .line 961
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 962
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    .line 963
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "clear-task-top"

    const/4 v7, 0x0

    move-object v3, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 966
    :cond_6
    const/4 v11, 0x0

    .line 974
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_7
    :goto_3
    return-object v11

    :cond_8
    const/4 v11, 0x0

    goto :goto_3
.end method

.method final performClearTaskLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 914
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 915
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 916
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 855
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateTaskDescription()V

    .line 859
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_1

    .line 861
    iget v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 863
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 864
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 866
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 867
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v2, :cond_3

    .line 870
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 867
    goto :goto_0

    .line 869
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    move v0, v1

    .line 870
    goto :goto_0
.end method

.method public removeTaskActivitiesLocked()V
    .locals 2

    .prologue
    .line 993
    const/4 v0, 0x0

    const-string/jumbo v1, "removeTask"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(ILjava/lang/String;)V

    .line 994
    return-void
.end method

.method removedFromRecents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 625
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 626
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    .line 627
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 628
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 630
    :cond_0
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x80000

    const/4 v8, 0x0

    .line 1218
    const-string/jumbo v4, "task_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1219
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1220
    const-string/jumbo v4, "real_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 1223
    const-string/jumbo v4, "orig_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1229
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 1230
    const-string v4, "affinity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1231
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1232
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1237
    :cond_2
    :goto_1
    const-string/jumbo v4, "root_has_reset"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1238
    const-string v4, "auto_remove_recents"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1239
    const-string v4, "asked_compat_mode"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1240
    const-string/jumbo v4, "user_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1241
    const-string/jumbo v4, "effective_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1242
    const-string/jumbo v4, "task_type"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1243
    const-string/jumbo v4, "first_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1244
    const-string/jumbo v4, "last_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1245
    const-string/jumbo v4, "last_time_moved"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1246
    const-string/jumbo v4, "never_relinquish_identity"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1247
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 1248
    const-string/jumbo v4, "last_description"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_4

    .line 1251
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1253
    :cond_4
    const-string/jumbo v4, "task_affiliation_color"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1254
    const-string/jumbo v4, "task_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    const-string/jumbo v4, "prev_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    const-string/jumbo v4, "next_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const-string v4, "calling_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1258
    const-string v5, "calling_package"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_2
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1259
    const-string/jumbo v4, "resizeable"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    const-string/jumbo v4, "privileged"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1263
    const-string/jumbo v4, "multiwindow_style"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1264
    const-string/jumbo v4, "multiwindow_apprequestorientation"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    const-string/jumbo v4, "is_private_mode"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->isSecretMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 1278
    const-string v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1279
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1280
    const-string v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1283
    :cond_5
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1284
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1285
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1287
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1288
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1289
    .local v2, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3
    if-ge v1, v2, :cond_6

    .line 1290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1291
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v9

    or-int/lit16 v4, v4, 0x2000

    if-ne v4, v9, :cond_b

    if-lez v1, :cond_b

    .line 1302
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    return-void

    .line 1232
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "numActivities":I
    :cond_7
    const-string v4, "@"

    goto/16 :goto_0

    .line 1234
    :cond_8
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1235
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_4
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_9
    const-string v4, "@"

    goto :goto_4

    .line 1258
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    goto/16 :goto_2

    .line 1298
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b
    const-string v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1299
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1300
    const-string v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1289
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public setChildCoupledTask(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "childCoupledTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mChildCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 220
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 221
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_0
    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 226
    .local v0, "child":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setChildCoupledTask(Landroid/view/IApplicationToken;Landroid/view/IApplicationToken;)V

    goto :goto_0

    .line 228
    .end local v0    # "child":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setChildCoupledTask(Landroid/view/IApplicationToken;Landroid/view/IApplicationToken;)V

    goto :goto_0
.end method

.method public setFinishWithCoupledTask(Z)V
    .locals 3
    .param p1, "finishWithCoupledTask"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/server/am/TaskRecord;->mFinishWithCoupledTask:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 188
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->setFinishWithCoupledTask(Landroid/view/IApplicationToken;Z)V

    goto :goto_0
.end method

.method final setFrontOfTask()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "foundFront":Z
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 743
    .local v2, "numActivities":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 744
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 745
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 746
    :cond_0
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 743
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_1
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 750
    const/4 v1, 0x1

    goto :goto_1

    .line 753
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-nez v1, :cond_3

    if-lez v2, :cond_3

    .line 756
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 758
    :cond_3
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 446
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 447
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 448
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 449
    return-void
.end method

.method setLastThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    .line 661
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 662
    if-nez p1, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 669
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 671
    :goto_1
    return v0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setLockTaskAuth()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1008
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-ne v2, v0, :cond_1

    .line 1012
    :cond_0
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    .line 1014
    :cond_1
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    packed-switch v2, :pswitch_data_0

    .line 1035
    :goto_0
    return-void

    .line 1016
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 1021
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 1025
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 1029
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 1014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 608
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 609
    return-void

    .line 608
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method public setParentCoupledTask(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "parentCoupledTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mParentCoupledTask:Lcom/android/server/am/TaskRecord;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 201
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 206
    .local v0, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setParentCoupledTask(Landroid/view/IApplicationToken;Landroid/view/IApplicationToken;)V

    goto :goto_0

    .line 210
    .end local v0    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setParentCoupledTask(Landroid/view/IApplicationToken;Landroid/view/IApplicationToken;)V

    goto :goto_0
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 603
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 604
    return-void

    .line 603
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 633
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 634
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 635
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 637
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    .line 638
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 639
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v1, v2, :cond_2

    .line 640
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_0

    .line 643
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 645
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 650
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 652
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 653
    return-void

    .line 648
    .restart local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object p1, v0

    .line 649
    goto :goto_0
.end method

.method setTaskToReturnTo(I)V
    .locals 2
    .param p1, "taskToReturnTo"    # I

    .prologue
    const/4 v1, 0x2

    .line 545
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowPolicy;->isUpdateTaskToReturnToFrozenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    .end local p1    # "taskToReturnTo":I
    :cond_0
    :goto_0
    return-void

    .line 558
    .restart local p1    # "taskToReturnTo":I
    :cond_1
    invoke-static {}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenSettings;->isExpandHomeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 561
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 569
    .end local p1    # "taskToReturnTo":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    goto :goto_0

    .line 564
    .restart local p1    # "taskToReturnTo":I
    :cond_2
    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    .end local p1    # "taskToReturnTo":I
    :cond_3
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    goto :goto_1
.end method

.method setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1660
    iput p1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 1661
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1621
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1622
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1625
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1635
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1636
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1655
    :goto_0
    return-object v1

    .line 1638
    :cond_0
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1642
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1643
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 1655
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1645
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 1646
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1648
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1649
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1652
    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 728
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 729
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 730
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 731
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 729
    .restart local v0    # "activityNdx":I
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 736
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method touchActiveTime()V
    .locals 4

    .prologue
    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveElapsedTime:J

    .line 435
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 436
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 438
    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 3

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1211
    .local v0, "effectiveRootIndex":I
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1212
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1213
    return-void
.end method

.method updateTaskDescription()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1137
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1138
    .local v4, "numActivities":I
    if-nez v4, :cond_6

    .line 1140
    .local v6, "relinquish":Z
    :cond_0
    :goto_0
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "activityNdx":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 1142
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1143
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_7

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-nez v8, :cond_7

    .line 1146
    add-int/lit8 v0, v0, 0x1

    .line 1154
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v0, :cond_a

    .line 1159
    const/4 v3, 0x0

    .line 1160
    .local v3, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1161
    .local v2, "iconFilename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1163
    .local v1, "colorPrimary":I
    const/4 v7, 0x0

    .line 1164
    .local v7, "textColorPrimary":I
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_9

    .line 1165
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1166
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v8, :cond_5

    .line 1167
    if-nez v3, :cond_2

    .line 1168
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 1170
    :cond_2
    if-nez v2, :cond_3

    .line 1171
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    .line 1173
    :cond_3
    if-nez v1, :cond_4

    .line 1174
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    .line 1177
    :cond_4
    if-nez v7, :cond_5

    .line 1178
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getTextPrimaryColor()I

    move-result v7

    .line 1164
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1138
    .end local v0    # "activityNdx":I
    .end local v1    # "colorPrimary":I
    .end local v2    # "iconFilename":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "relinquish":Z
    .end local v7    # "textColorPrimary":I
    :cond_6
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_0

    move v6, v9

    goto :goto_0

    .line 1149
    .restart local v0    # "activityNdx":I
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "relinquish":Z
    :cond_7
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_8

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-nez v8, :cond_1

    .line 1141
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1183
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "colorPrimary":I
    .restart local v2    # "iconFilename":Ljava/lang/String;
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v7    # "textColorPrimary":I
    :cond_9
    new-instance v8, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v8, v3, v1, v2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1185
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8, v7}, Landroid/app/ActivityManager$TaskDescription;->setTextPrimaryColor(I)V

    .line 1187
    iget v8, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v9, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v8, v9, :cond_a

    .line 1188
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v8

    iput v8, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 1191
    .end local v1    # "colorPrimary":I
    .end local v2    # "iconFilename":Ljava/lang/String;
    .end local v3    # "label":Ljava/lang/String;
    .end local v7    # "textColorPrimary":I
    :cond_a
    return-void
.end method
