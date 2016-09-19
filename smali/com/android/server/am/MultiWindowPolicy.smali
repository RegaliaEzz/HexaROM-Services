.class public Lcom/android/server/am/MultiWindowPolicy;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowPolicy$TaskController;,
        Lcom/android/server/am/MultiWindowPolicy$ZoneRects;,
        Lcom/android/server/am/MultiWindowPolicy$H;
    }
.end annotation


# static fields
.field private static final ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field private static final ACTION_TIMER_STARTED_IN_ALERT:Ljava/lang/String; = "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

.field private static final ALARM_ALERT_FROM_ALARM:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

.field private static final DEBUG:Z = false

.field private static final GLANCEVIEW_LAUNCH_ACTION:Ljava/lang/String; = "com.android.settings.LaunchGlanceView"

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I = 0x0

.field public static LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I = 0x0

.field static final SAFE_DEBUG:Z

.field public static final SPLIT_DIM_AMOUNT:F = 0.5f

.field private static final TAB_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowPolicy"

.field private static final TASKCONTROLLER_DEBUG:Z

.field public static sExposuerTitleBarMenu:Z

.field public static sStatusBarHeight:I

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarPoints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultScale:F

.field private mDiffUserPenWindowCnt:I

.field mDisplayZoneRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/MultiWindowPolicy$ZoneRects;",
            ">;"
        }
    .end annotation
.end field

.field mFeatureMultiwindowRecentUI:Z

.field mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field final mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

.field private mIsolatedPoint:Landroid/graphics/Point;

.field private mMaxScale:F

.field private mMinScale:F

.field private mMultiInstanceMaxCnt:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegisteredTaskControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/MultiWindowPolicy$TaskController;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingContentObserver:Landroid/database/ContentObserver;

.field private mTabFrontStack:I

.field private mTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateTaskToReturnToFrozen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 106
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    .line 114
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    .line 115
    const/4 v0, 0x4

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    .line 130
    sput v1, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    .line 131
    sput-boolean v2, Lcom/android/server/am/MultiWindowPolicy;->sExposuerTitleBarMenu:Z

    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 124
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    .line 127
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    .line 129
    iput-boolean v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mFeatureMultiwindowRecentUI:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mUpdateTaskToReturnToFrozen:Z

    .line 143
    iput v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    .line 144
    iput v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    .line 145
    iput v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    .line 147
    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowPolicy$H;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    .line 148
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 149
    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    .line 421
    new-instance v0, Lcom/android/server/am/MultiWindowPolicy$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiWindowPolicy$3;-><init>(Lcom/android/server/am/MultiWindowPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mSettingContentObserver:Landroid/database/ContentObserver;

    .line 1362
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    .line 159
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 161
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    .line 163
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_QUAD_VIEW:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    .line 175
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    .line 176
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    .line 178
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mFeatureMultiwindowRecentUI:Z

    .line 179
    return-void

    .line 166
    :cond_1
    sget v0, Lcom/android/server/am/MultiWindowPolicy;->LIMIT_NUM_OF_MULTI_INSTANCE_DUAL_VIEW:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    goto :goto_0
.end method

.method private RecentTaskInfoToObject(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2355
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2356
    .local v2, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "idx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2357
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2358
    .local v1, "r":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2356
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2360
    .end local v1    # "r":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_0
    return-object v2
.end method

.method private TaskInfoToObject(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2364
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    .local v3, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "idx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2366
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    .line 2367
    .local v1, "t":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne p2, v4, :cond_0

    .line 2368
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2365
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2373
    :cond_0
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 2374
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 2375
    iget v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 2376
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2377
    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne p2, v4, :cond_1

    .line 2378
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 2382
    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2380
    :cond_1
    iget-object v4, v1, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 2384
    .end local v1    # "t":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    return-object v3
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowPolicy;->isWhiteTheme()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowPolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDiffUserPenWindowCnt:I

    return v0
.end method

.method static synthetic access$300()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/am/MultiWindowPolicy;->toastAlert:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 103
    sput-object p0, Lcom/android/server/am/MultiWindowPolicy;->toastAlert:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowPolicy;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiWindowPolicy;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->RecentTaskInfoToObject(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowPolicy;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V

    return-void
.end method

.method private adjustFloatingBounds(Lcom/android/server/am/ActivityRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1829
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v4

    .line 1830
    .local v4, "preferredOr":I
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 1831
    .local v5, "requestBounds":Landroid/graphics/Rect;
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1833
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1834
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1835
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1836
    :cond_0
    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    if-ge v9, v10, :cond_2

    move v2, v7

    .line 1837
    .local v2, "isDisplayPortrait":Z
    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_3

    move v3, v7

    .line 1838
    .local v3, "isStackPortrait":Z
    :goto_1
    if-eq v2, v3, :cond_1

    .line 1839
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1840
    .local v6, "tmpBounds":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 1841
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1842
    sget-boolean v7, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "MultiWindowPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustFloating, r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requested="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", adjusted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v2    # "isDisplayPortrait":Z
    .end local v3    # "isStackPortrait":Z
    .end local v6    # "tmpBounds":Landroid/graphics/Rect;
    :cond_1
    return-void

    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "displaySize":Landroid/graphics/Point;
    :cond_2
    move v2, v8

    .line 1836
    goto :goto_0

    .restart local v2    # "isDisplayPortrait":Z
    :cond_3
    move v3, v8

    .line 1837
    goto :goto_1
.end method

.method private getHeaderDrawableHeight()I
    .locals 3

    .prologue
    .line 2285
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2286
    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2287
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2289
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGamePackage(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 245
    const/4 v2, 0x0

    .line 248
    .local v2, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v4, :cond_0

    .line 249
    const-string/jumbo v4, "gamemanager"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    .line 252
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v4, :cond_1

    .line 253
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v4, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v2

    .line 254
    const-string v4, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gamemode - return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  when calling  identifyForegroundApp("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_1
    :goto_0
    if-ne v2, v3, :cond_2

    :goto_1
    return v3

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MultiWindowPolicy"

    const-string v5, "Gamemode - identifyForegroundApp error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isSplitOnly(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 801
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindowonly.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    const/4 v0, 0x1

    .line 805
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, "talkbackEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 370
    const-string v2, "(?i).*com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 376
    :cond_1
    :goto_0
    return v1

    .line 370
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWhiteTheme()Z
    .locals 2

    .prologue
    .line 451
    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 5
    .param p2, "controller"    # Lcom/samsung/android/multiwindow/ITaskController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/samsung/android/multiwindow/ITaskController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2419
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2454
    :cond_0
    :goto_0
    return-void

    .line 2422
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2423
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2424
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2425
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    .line 2426
    .local v2, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_3

    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p2, :cond_2

    .line 2429
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    if-eqz v3, :cond_4

    .line 2430
    iget v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/MultiWindowPolicy;->TaskInfoToObject(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 2438
    .local v1, "rtInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v3, v1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStarted(Ljava/util/List;)V

    goto :goto_1

    .line 2449
    .end local v1    # "rtInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2447
    :cond_4
    iget-object v3, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v3, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStarted(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2453
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    .end local v2    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/MultiWindowPolicy$TaskController;>;"
    :cond_5
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private updateIsolatedRects(IILandroid/graphics/Rect;)V
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "zone"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 1413
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1414
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1415
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1418
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 1419
    .local v3, "iDeviceWidth":I
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 1420
    .local v2, "iDeviceHeight":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v5, v8, Landroid/graphics/Point;->x:I

    .line 1421
    .local v5, "iWidthBoundary":I
    iget-object v8, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v4, v8, Landroid/graphics/Point;->y:I

    .line 1422
    .local v4, "iHeightBoundary":I
    if-le v3, v2, :cond_1

    const/4 v6, 0x1

    .line 1424
    .local v6, "landscape":Z
    :goto_0
    if-eqz v6, :cond_4

    .line 1425
    if-ne p2, v9, :cond_2

    .line 1426
    invoke-virtual {p3, v7, v7, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1441
    :goto_1
    return-void

    .end local v6    # "landscape":Z
    :cond_1
    move v6, v7

    .line 1422
    goto :goto_0

    .line 1427
    .restart local v6    # "landscape":Z
    :cond_2
    if-ne p2, v10, :cond_3

    .line 1428
    invoke-virtual {p3, v5, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 1430
    :cond_3
    invoke-virtual {p3, v7, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 1433
    :cond_4
    if-ne p2, v9, :cond_5

    .line 1434
    invoke-virtual {p3, v7, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 1435
    :cond_5
    if-ne p2, v10, :cond_6

    .line 1436
    invoke-virtual {p3, v7, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 1438
    :cond_6
    invoke-virtual {p3, v7, v7, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public RunningTaskInfoToObject(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2342
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2343
    .local v3, "taskInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "idx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2344
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2345
    .local v1, "r":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v2, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 2346
    .local v2, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 2347
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2348
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 2349
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2343
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2351
    .end local v1    # "r":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_0
    return-object v3
.end method

.method public addTab(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowTab;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1976
    return-void
.end method

.method public adjustStackBound(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    .line 2261
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowPolicy;->getHeaderDrawableHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 2262
    .local v0, "boundaryX":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2263
    .local v1, "boundaryY":I
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowPolicy;->getHeaderDrawableHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 2265
    .local v4, "headerWindowMargin":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2266
    .local v3, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 2267
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2269
    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v0

    if-le v5, v6, :cond_3

    .line 2270
    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2276
    :cond_1
    :goto_0
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    if-le v5, v6, :cond_4

    .line 2277
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2282
    :cond_2
    :goto_1
    return-void

    .line 2272
    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-ge v5, v0, :cond_1

    .line 2273
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 2279
    :cond_4
    iget v5, p1, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_2

    .line 2280
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    add-int/2addr v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2076
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 24
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "updateFocus"    # Z

    .prologue
    .line 2081
    sget-boolean v21, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v21, :cond_0

    .line 2082
    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " multiWindowStyle="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: sourceRecord="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " callers="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2086
    .local v14, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v21

    if-nez v21, :cond_1

    if-eqz p2, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 2087
    :cond_1
    const/4 v13, -0x1

    .line 2089
    .local v13, "stackId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 2090
    const/4 v10, 0x0

    .line 2091
    .local v10, "source":Landroid/content/Intent;
    const/4 v11, 0x0

    .line 2092
    .local v11, "sourceFilter":Landroid/content/Intent$FilterComparison;
    const/16 v16, 0x0

    .line 2093
    .local v16, "targetFilter":Landroid/content/Intent$FilterComparison;
    if-eqz p2, :cond_2

    .line 2094
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "source":Landroid/content/Intent;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2095
    .restart local v10    # "source":Landroid/content/Intent;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2096
    new-instance v11, Landroid/content/Intent$FilterComparison;

    .end local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    invoke-direct {v11, v10}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2098
    .restart local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    :cond_2
    const/16 v20, 0x0

    .line 2099
    .local v20, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2100
    .local v6, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 2101
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v20

    .line 2103
    :cond_3
    const/4 v15, 0x0

    .line 2104
    .local v15, "target":Landroid/content/Intent;
    if-eqz v20, :cond_4

    .line 2105
    new-instance v15, Landroid/content/Intent;

    .end local v15    # "target":Landroid/content/Intent;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2106
    .restart local v15    # "target":Landroid/content/Intent;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2107
    new-instance v16, Landroid/content/Intent$FilterComparison;

    .end local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 2110
    .restart local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    :cond_4
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 2111
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2112
    const-string/jumbo v7, "keep-current"

    .line 2113
    .local v7, "reason":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v21, :cond_5

    .line 2114
    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: Keep current stack for cascade app (inherit) >> r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_5
    :goto_0
    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 2257
    .end local v6    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "reason":Ljava/lang/String;
    .end local v10    # "source":Landroid/content/Intent;
    .end local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .end local v13    # "stackId":I
    .end local v15    # "target":Landroid/content/Intent;
    .end local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .end local v20    # "topTask":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v17

    .line 2115
    .restart local v6    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "source":Landroid/content/Intent;
    .restart local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .restart local v13    # "stackId":I
    .restart local v15    # "target":Landroid/content/Intent;
    .restart local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .restart local v20    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v22, 0x2000

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_7

    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 2120
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2121
    const-string/jumbo v7, "existing-cascade"

    .line 2122
    .restart local v7    # "reason":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v21, :cond_5

    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: Use existing stack for cascade app (inherit) >> r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2123
    .end local v7    # "reason":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v22, 0x2000

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_8

    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->isDocument()Z

    move-result v21

    if-eqz v21, :cond_8

    if-eqz v11, :cond_8

    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 2125
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2126
    const-string/jumbo v7, "keep-current"

    .restart local v7    # "reason":Ljava/lang/String;
    goto/16 :goto_0

    .line 2129
    .end local v7    # "reason":Ljava/lang/String;
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/MultiWindowPolicy;->adjustFloatingBounds(Lcom/android/server/am/ActivityRecord;)V

    .line 2130
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IILandroid/graphics/Rect;)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2131
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v12, :cond_9

    .line 2132
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2135
    :cond_9
    const-string v7, "create-cascade"

    .line 2136
    .restart local v7    # "reason":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v21, :cond_5

    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: New stack for cascade app >> r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2146
    .end local v6    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "reason":Ljava/lang/String;
    .end local v10    # "source":Landroid/content/Intent;
    .end local v11    # "sourceFilter":Landroid/content/Intent$FilterComparison;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "target":Landroid/content/Intent;
    .end local v16    # "targetFilter":Landroid/content/Intent$FilterComparison;
    .end local v20    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    if-eqz p2, :cond_14

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 2147
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    .line 2148
    .local v17, "taskStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 2152
    const-string/jumbo v21, "keep-current"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2156
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 2158
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v9

    .line 2159
    .local v9, "relativeStackId":I
    invoke-virtual {v14, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2160
    .local v8, "relativeStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_1

    .line 2165
    .end local v8    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "relativeStackId":I
    :cond_c
    const/4 v4, 0x1

    .line 2166
    .local v4, "bSameZone":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    .line 2172
    .local v19, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v19, :cond_f

    const-string v21, "com.sec.android.app.FlashBarService"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getWindowMode()I

    move-result v21

    if-eqz v21, :cond_f

    .line 2173
    :cond_d
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    .line 2174
    .local v18, "taskZone":I
    if-nez v18, :cond_e

    .line 2175
    const/16 v18, 0xf

    .line 2177
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    and-int v21, v21, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const/4 v4, 0x1

    .line 2182
    .end local v18    # "taskZone":I
    :cond_f
    :goto_2
    if-eqz v19, :cond_14

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-nez v21, :cond_14

    if-eqz v4, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-nez v21, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    :cond_10
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 2187
    :cond_11
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2188
    const-string/jumbo v7, "reuse-exsiting-task"

    .line 2189
    .restart local v7    # "reason":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v21, :cond_12

    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: Use existing stack for split app >> r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2194
    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2196
    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    goto/16 :goto_1

    .line 2177
    .end local v7    # "reason":Ljava/lang/String;
    .restart local v18    # "taskZone":I
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2201
    .end local v4    # "bSameZone":Z
    .end local v17    # "taskStack":Lcom/android/server/am/ActivityStack;
    .end local v18    # "taskZone":I
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_14
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2202
    .local v5, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v5, :cond_15

    .line 2204
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 2205
    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 2208
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v21

    if-eqz v21, :cond_16

    if-eqz p2, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v21

    if-nez v21, :cond_17

    .line 2212
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    const-string/jumbo v22, "use-home"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 2214
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    goto/16 :goto_1

    .line 2217
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I

    move-result v9

    .line 2219
    .restart local v9    # "relativeStackId":I
    invoke-virtual {v14, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2220
    .restart local v8    # "relativeStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2224
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2226
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v12, :cond_18

    .line 2230
    const-string/jumbo v21, "exsiting-zone"

    move-object/from16 v0, v21

    invoke-virtual {v14, v12, v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v17, v12

    .line 2246
    goto/16 :goto_1

    .line 2235
    :cond_18
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2237
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    .line 2239
    sget-boolean v21, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v21, :cond_19

    const-string v21, "MultiWindowPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adjustStackFocus: New stack r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stackId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_19
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "create-zone"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v12, v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    goto :goto_3

    .line 2257
    .end local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v8    # "relativeStack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "relativeStackId":I
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "stackId":I
    :cond_1a
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeStack()Lcom/android/server/am/ActivityStack;

    move-result-object v17

    goto/16 :goto_1
.end method

.method applyMetaDataMultiWindowOptions(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "targetStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/high16 v2, 0x10000

    .line 274
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 275
    .local v0, "appMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 276
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 279
    :cond_0
    return-void
.end method

.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const v7, -0x8000001

    const/4 v3, 0x0

    .line 1617
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v4, :cond_4

    .line 1618
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1622
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v0, :cond_8

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eq v0, v4, :cond_1

    :cond_0
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_1
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v4, v1, :cond_8

    .line 1627
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/MultiWindowPolicy;->getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v4

    iget v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    if-lt v4, v5, :cond_4

    .line 1628
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1630
    .local v2, "taskAffinity":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1632
    .local v1, "newTask":Z
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 1633
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1634
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    .line 1642
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "newTask":Z
    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 1618
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    .line 1628
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_1

    .restart local v2    # "taskAffinity":Ljava/lang/String;
    :cond_7
    move v1, v3

    .line 1630
    goto :goto_2

    .line 1638
    .end local v2    # "taskAffinity":Ljava/lang/String;
    :cond_8
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1639
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    goto :goto_3
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 21
    .param p1, "callerRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "calleeRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1450
    const/4 v10, 0x0

    .line 1451
    .local v10, "isMultiWindowLaunch":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x10000000

    and-int v17, v17, v18

    if-eqz v17, :cond_1

    const-string v17, "android"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1456
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1478
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->getUserManagerLocked()Lcom/android/server/pm/UserManagerService;

    move-result-object v17

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    .line 1479
    .local v16, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v17

    if-nez v17, :cond_7

    .line 1480
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1481
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1482
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x1000000

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1490
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 1614
    :cond_3
    :goto_2
    return-void

    .line 1461
    .end local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-nez v17, :cond_6

    .line 1463
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1464
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1468
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1469
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_0

    .line 1466
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v18

    const v19, -0x10000001

    and-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 1473
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1474
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_0

    .line 1483
    .restart local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {}, Landroid/os/PersonaManager;->isKnoxMultiwindowsSupported()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1484
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1485
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1486
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x1000000

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1487
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/high16 v18, 0x200000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_1

    .line 1495
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 1496
    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1000

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_9

    goto/16 :goto_2

    .line 1501
    .end local v11    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowLaunchApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    if-nez v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v17

    const/high16 v18, 0x10000000

    and-int v17, v17, v18

    if-eqz v17, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v17

    const/high16 v18, 0x200000

    and-int v17, v17, v18

    if-nez v17, :cond_b

    .line 1508
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1509
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x800

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1511
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->getPenWindowLaunchScale(Landroid/content/pm/ActivityInfo;)F

    move-result v14

    .line 1512
    .local v14, "scale":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/android/server/am/MultiWindowPolicy;->setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V

    .line 1514
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1517
    .end local v14    # "scale":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "multi_window_enabled"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "open_multi_window_view"

    const/16 v19, 0x0

    const/16 v20, -0x2

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->isInLockTaskMode()Z

    move-result v17

    if-nez v17, :cond_13

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidLaunchStyleApp(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 1524
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 1527
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiWindowLaunchInSame(Landroid/content/Intent;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1530
    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "audio/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_d

    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_e

    const-string/jumbo v17, "fb-messenger"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    :cond_d
    const-string v17, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "com.android.gallery.action.SEARCH_VIEW"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "android.intent.action.START_SLINK_PLAYBACK"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "com.sec.android.app.music.intent.action.PLAY_VIA"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1537
    :cond_e
    const/4 v4, 0x1

    .line 1538
    .local v4, "clearTask":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1540
    const/4 v13, 0x0

    .line 1541
    .local v13, "sameTask":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 1542
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1543
    .local v7, "extra":Landroid/os/Bundle;
    if-eqz v7, :cond_10

    .line 1544
    const-string v17, "android.intent.extra.INTENT"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    .line 1545
    .local v15, "selectedIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v5

    .line 1546
    .local v5, "currentUserId":I
    const/4 v3, 0x0

    .line 1547
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_f

    .line 1549
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    const v19, 0x10400

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v15, v1, v2, v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 1551
    .local v12, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_14

    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_f
    :goto_4
    if-eqz v3, :cond_10

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1559
    const/4 v13, 0x1

    .line 1563
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "currentUserId":I
    .end local v7    # "extra":Landroid/os/Bundle;
    .end local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_10
    if-nez v13, :cond_11

    .line 1564
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1565
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1566
    const/4 v10, 0x1

    .line 1582
    .end local v13    # "sameTask":Z
    :cond_11
    :goto_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1584
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const/high16 v18, 0x10000000

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1585
    if-eqz v4, :cond_12

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_12

    .line 1586
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const v18, 0x8000

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1591
    :cond_12
    if-eqz v10, :cond_19

    .line 1592
    const/16 v17, 0x0

    const v18, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    .line 1593
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1594
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    .line 1611
    .end local v4    # "clearTask":Z
    :cond_13
    :goto_6
    if-eqz v10, :cond_3

    if-eqz p1, :cond_3

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/WindowManagerService;->setLastDrawnFocusedStackFrameIdToSkip(I)V

    goto/16 :goto_2

    .line 1551
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "clearTask":Z
    .restart local v5    # "currentUserId":I
    .restart local v7    # "extra":Landroid/os/Bundle;
    .restart local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "sameTask":Z
    .restart local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1552
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    .line 1553
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1569
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "currentUserId":I
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "extra":Landroid/os/Bundle;
    .end local v13    # "sameTask":Z
    .end local v15    # "selectedIntent":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 1572
    .local v9, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_7
    if-eqz v9, :cond_11

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_16

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    :cond_16
    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1575
    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17

    .line 1576
    const/4 v4, 0x0

    .line 1578
    :cond_17
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1579
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_5

    .line 1569
    .end local v9    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    goto :goto_7

    .line 1596
    :cond_19
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->needToUpdateCenterBarPosition(I)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1597
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 1598
    const/16 v17, 0x0

    const v18, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    .line 1602
    :goto_8
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1603
    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    goto/16 :goto_6

    .line 1600
    :cond_1a
    const/16 v17, 0x0

    const v18, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->updateCenterBarPosition(IF)V

    goto :goto_8
.end method

.method public applyMultiWindowStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 15
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "sourceToken"    # Landroid/os/IBinder;

    .prologue
    .line 561
    const/4 v6, 0x0

    .line 563
    .local v6, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v3, 0x0

    .line 564
    .local v3, "callerRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 565
    .local v2, "callerMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v5

    .line 567
    .local v5, "isFreeStyleFeatureEnabled":Z
    const-string v12, "android"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 568
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 569
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 571
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    if-eqz v6, :cond_1

    .line 572
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->resetSpecificTaskId()V

    .line 576
    :cond_1
    if-eqz p3, :cond_14

    .line 577
    move-object/from16 v3, p3

    .line 608
    :cond_2
    :goto_0
    if-eqz v3, :cond_1f

    .line 609
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 612
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getWindowMode()I

    move-result v11

    .line 613
    .local v11, "windowMode":I
    if-eqz v11, :cond_3

    if-nez v6, :cond_3

    .line 614
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 615
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 616
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v9

    .line 617
    .local v9, "rect":Landroid/graphics/Rect;
    if-eqz v9, :cond_1b

    .line 618
    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 624
    .end local v9    # "rect":Landroid/graphics/Rect;
    :cond_3
    :goto_1
    if-eqz v6, :cond_1e

    .line 625
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 626
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_1d

    .line 627
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 628
    .local v7, "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_1c

    if-eqz v7, :cond_1c

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v13, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v12

    if-nez v12, :cond_1c

    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 636
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 662
    .end local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_2
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v14, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidInheritStack(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 663
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v12, :cond_5

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v13, v13, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    if-eqz v12, :cond_5

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v12, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v5, :cond_5

    .line 667
    const/16 v12, 0x2000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 699
    :cond_5
    :goto_3
    if-nez v6, :cond_6

    .line 700
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 703
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_6
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 704
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isInValidZone()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 705
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 709
    :cond_7
    const/4 v10, 0x0

    .line 710
    .local v10, "supportScaleApp":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 711
    const/high16 v12, 0x1000000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 738
    :cond_8
    :goto_4
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_a

    if-eqz v5, :cond_a

    .line 739
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->isNoTitleActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 740
    const/high16 v12, 0x40000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 743
    :cond_9
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidScaleOption(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 744
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 745
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 753
    :cond_a
    :goto_5
    if-eqz v10, :cond_b

    .line 754
    const/high16 v12, 0x1000000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 757
    :cond_b
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 759
    const/high16 v12, 0x200000

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 760
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 761
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 762
    const/high16 v12, 0x1000000

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 765
    :cond_c
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_d

    if-eqz v10, :cond_e

    .line 767
    :cond_d
    const/16 v12, 0x1000

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v12

    if-nez v12, :cond_e

    .line 770
    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getIsolatedCenterPoint()Landroid/graphics/Point;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/android/server/am/MultiWindowPolicy;->setIsolatedPoint(ILandroid/graphics/Point;)V

    .line 774
    :cond_e
    if-eqz v5, :cond_f

    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowManagerService;->isForceHideCascade(Z)Z

    move-result v12

    if-eqz v12, :cond_10

    :cond_f
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 776
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 779
    :cond_10
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_11

    if-eqz v5, :cond_11

    .line 780
    const/high16 v12, 0x20000

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 787
    :cond_11
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v12, :cond_12

    if-eqz p3, :cond_12

    .line 788
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 789
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->getPreferredOrientation()I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    .line 793
    :cond_12
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v13, "com.google.android.packageinstaller"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 794
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 797
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_13
    return-object v6

    .line 578
    .end local v10    # "supportScaleApp":Z
    .end local v11    # "windowMode":I
    :cond_14
    if-eqz p4, :cond_15

    .line 579
    invoke-static/range {p4 .. p4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    goto/16 :goto_0

    .line 580
    :cond_15
    if-eqz p2, :cond_2

    .line 581
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 583
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 584
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v8, v12, :cond_16

    .line 585
    move-object v3, v8

    .line 589
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_17
    if-nez v3, :cond_18

    .line 590
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 593
    .restart local v3    # "callerRecord":Lcom/android/server/am/ActivityRecord;
    :cond_18
    if-eqz v3, :cond_19

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 595
    const/4 v3, 0x0

    .line 598
    :cond_19
    const-string v12, "com.sec.android.app.FlashBarService"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 599
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 600
    :cond_1a
    if-eqz v3, :cond_2

    const-string v12, "com.android.systemui.multiwindow.RecentsMultiWindowActivity"

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 603
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 619
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local v9    # "rect":Landroid/graphics/Rect;
    .restart local v11    # "windowMode":I
    :cond_1b
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 620
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 638
    .end local v9    # "rect":Landroid/graphics/Rect;
    .restart local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_2

    .line 640
    .end local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1d
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v12

    if-nez v12, :cond_4

    .line 641
    const/16 v12, 0xc

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_2

    .line 645
    :cond_1e
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 646
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 647
    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 649
    sget-boolean v12, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v12, :cond_4

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v5, :cond_4

    .line 651
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowManagerService;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v1

    .line 652
    .local v1, "appRequestOrientation":I
    const/4 v12, -0x1

    if-eq v1, v12, :cond_4

    .line 653
    invoke-virtual {v6, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    goto/16 :goto_2

    .line 671
    .end local v1    # "appRequestOrientation":I
    .end local v11    # "windowMode":I
    :cond_1f
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getWindowMode()I

    move-result v11

    .line 672
    .restart local v11    # "windowMode":I
    if-eqz v11, :cond_20

    if-nez v6, :cond_20

    .line 673
    new-instance v6, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 674
    .restart local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 675
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v9

    .line 676
    .restart local v9    # "rect":Landroid/graphics/Rect;
    if-eqz v9, :cond_20

    .line 677
    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 680
    .end local v9    # "rect":Landroid/graphics/Rect;
    :cond_20
    if-eqz v6, :cond_5

    .line 681
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 682
    const/16 v12, 0x1000

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 683
    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getIsolatedCenterPoint()Landroid/graphics/Point;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/android/server/am/MultiWindowPolicy;->setIsolatedPoint(ILandroid/graphics/Point;)V

    .line 685
    :cond_21
    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    iget-object v7, v12, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 686
    .restart local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_5

    const/16 v12, 0x1000

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_5

    .line 687
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 688
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 689
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_22

    const/high16 v12, 0x200000

    invoke-virtual {v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 690
    :cond_22
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_3

    .line 691
    :cond_23
    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v12

    if-nez v12, :cond_5

    .line 692
    const/16 v12, 0xc

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_3

    .line 712
    .end local v7    # "previousStackResumedRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "supportScaleApp":Z
    :cond_24
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 713
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->isSplitOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-nez v12, :cond_25

    const/4 v10, 0x1

    .line 714
    :goto_6
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_4

    .line 713
    :cond_25
    const/4 v10, 0x0

    goto :goto_6

    .line 715
    :cond_26
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_27

    const/16 v12, 0x800

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_27

    if-eqz v5, :cond_27

    .line 718
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_4

    .line 719
    :cond_27
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v12

    if-eqz v12, :cond_28

    if-eqz v5, :cond_28

    .line 721
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_4

    .line 722
    :cond_28
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v12, :cond_29

    iget-object v12, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->shouldNotBeLaunchedInMultiWindowStyle(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_29

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v12}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v12

    if-nez v12, :cond_29

    .line 725
    if-eqz v2, :cond_8

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v12

    if-nez v12, :cond_8

    .line 732
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_4

    .line 735
    :cond_29
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_4

    .line 748
    :cond_2a
    const/16 v12, 0x800

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 749
    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_5
.end method

.method public applyRecentTaskMultiWindowStyle(Lcom/android/server/am/TaskRecord;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 12
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/16 v11, 0x1000

    const/high16 v10, 0x1000000

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 519
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v7, :cond_2

    .line 520
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 521
    .local v4, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x8000000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 522
    invoke-virtual {v4, v10, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 524
    :cond_0
    invoke-virtual {v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 525
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 527
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-interface {v3, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 528
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 529
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    .end local v4    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    :goto_0
    return-object v4

    .line 536
    :cond_2
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 537
    .local v1, "baseStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 538
    .local v2, "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 539
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 540
    .local v5, "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v6}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v6}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v6}, Lcom/android/server/am/MultiWindowPolicy;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    invoke-virtual {v2, v9, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 544
    invoke-virtual {v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const/high16 v6, 0x8000000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v7

    :goto_2
    invoke-virtual {v2, v10, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 548
    const/high16 v9, 0x200000

    const/high16 v6, 0x200000

    invoke-virtual {v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_3

    const/high16 v6, 0x200000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    move v6, v7

    :goto_3
    invoke-virtual {v2, v9, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 551
    invoke-virtual {v1, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v8, v7

    :cond_5
    invoke-virtual {v2, v11, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 554
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setAppRequestOrientation(I)V

    .end local v5    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_6
    move-object v4, v2

    .line 556
    goto/16 :goto_0

    .restart local v5    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_7
    move v6, v8

    .line 540
    goto :goto_1

    :cond_8
    move v6, v8

    .line 544
    goto :goto_2

    :cond_9
    move v6, v8

    .line 548
    goto :goto_3

    .line 531
    .end local v1    # "baseStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "newStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "topStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v3    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v4    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public arrangeMultiWindowStyle(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 12
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "requestStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/high16 v8, 0x4000000

    const/4 v11, 0x1

    .line 830
    if-nez p1, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 835
    const/high16 v7, 0x2000000

    invoke-virtual {p2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 836
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface(I)V

    goto :goto_0

    .line 841
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    .line 842
    .local v4, "requestZone":I
    const/16 v7, 0xf

    if-eq v4, v7, :cond_0

    if-eqz v4, :cond_0

    .line 846
    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v1

    .line 847
    .local v1, "baseZone":I
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 848
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_0

    .line 849
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 850
    .local v2, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v2, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 851
    xor-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v1

    invoke-virtual {v2, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 854
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 855
    invoke-virtual {p2, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 856
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->createMultiWindowFreezeSurface(I)V

    .line 865
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v7, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 866
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v5, :cond_4

    .line 867
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v8

    iget v9, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 869
    :cond_4
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    xor-int/lit8 v8, v4, -0x1

    and-int/2addr v8, v1

    if-eq v7, v8, :cond_0

    .line 870
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 871
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v8, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 872
    .local v3, "orgin":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_5

    .line 873
    iget v7, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v8, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v9, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v7, v8, v9, v11}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IIIZ)V

    .line 876
    .end local v3    # "orgin":Lcom/android/server/am/ActivityStack;
    :cond_5
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v7, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 877
    invoke-virtual {v5, v6, v11, v11}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 878
    const-string v7, "FIXME"

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 879
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v9, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto/16 :goto_0

    .line 857
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    invoke-virtual {v2, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v0, "appTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v8, 0x8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->prepareMultiWindowTransition(Ljava/util/ArrayList;II)V

    goto/16 :goto_1
.end method

.method public arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V
    .locals 32
    .param p1, "resumeTopStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 905
    if-nez p1, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryIsolatedLocked()Ljava/util/ArrayList;

    move-result-object v22

    .line 910
    .local v22, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v17, "skipTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v12, 0x0

    .line 912
    .local v12, "obscuredZone":I
    const/4 v13, 0x0

    .line 913
    .local v13, "overRecent":Z
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 914
    .local v14, "recordZoneTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v8, v26, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    .line 915
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskRecord;

    .line 916
    .local v20, "task":Lcom/android/server/am/TaskRecord;
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v21

    .line 917
    .local v21, "taskObscuredZone":I
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 918
    .local v23, "topAr":Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ne v0, v8, :cond_4

    if-lez v8, :cond_4

    add-int/lit8 v26, v8, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 920
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v25, "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    move/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 923
    const/4 v13, 0x1

    .line 961
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .end local v21    # "taskObscuredZone":I
    .end local v23    # "topAr":Lcom/android/server/am/ActivityRecord;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    :goto_2
    const/16 v26, 0xf

    move/from16 v0, v26

    if-eq v12, v0, :cond_0

    .line 965
    const/4 v15, 0x0

    .line 966
    .local v15, "shouldPaused":Z
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 969
    .local v7, "frontZoneSize":I
    if-lez v7, :cond_16

    .line 970
    const/4 v11, 0x0

    .line 971
    .local v11, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-lez v7, :cond_e

    .line 972
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_f

    .line 973
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 974
    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .line 975
    .local v24, "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 976
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 977
    const-string v26, "MultiWindowPolicy"

    const-string v27, "Keep current MultiWindowStyle by option"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 926
    .end local v7    # "frontZoneSize":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v15    # "shouldPaused":Z
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v21    # "taskObscuredZone":I
    .restart local v23    # "topAr":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/16 v26, 0xf

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 929
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 914
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1

    .line 932
    :cond_6
    if-nez v21, :cond_7

    .line 933
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v26

    if-gtz v26, :cond_5

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    if-eqz v26, :cond_5

    .line 934
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 938
    :cond_7
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    if-eqz v26, :cond_5

    .line 941
    and-int v26, v12, v21

    if-nez v26, :cond_9

    .line 942
    or-int v12, v12, v21

    .line 943
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    move/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 946
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 947
    const/4 v10, 0x0

    .line 948
    .local v10, "isRealOverHome":Z
    if-lez v8, :cond_8

    add-int/lit8 v26, v8, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    add-int/lit8 v26, v8, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v26

    if-eqz v26, :cond_8

    const/4 v10, 0x1

    .line 949
    :goto_5
    if-eqz v10, :cond_5

    goto/16 :goto_2

    .line 948
    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    .line 951
    .end local v10    # "isRealOverHome":Z
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_9
    or-int v26, v12, v21

    const/16 v27, 0xf

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 954
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 955
    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v25, :cond_5

    .line 956
    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 980
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .end local v21    # "taskObscuredZone":I
    .end local v23    # "topAr":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "frontZoneSize":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v15    # "shouldPaused":Z
    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_a
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 981
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v26

    if-eqz v26, :cond_b

    if-eqz v13, :cond_3

    .line 982
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .line 983
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v18, :cond_c

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v28, v0

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v29

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .line 987
    :cond_c
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 988
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 990
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 995
    const-string v26, "FIXME"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 997
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const-string v28, "FIXME"

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1002
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_d
    const/4 v15, 0x1

    .line 1084
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_e
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_16

    .line 1085
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    .line 1086
    .local v16, "skipTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-virtual/range {v26 .. v30}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    goto :goto_7

    .line 1004
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "skipTask":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v6, 0x0

    .line 1005
    .local v6, "arrangeZone":I
    packed-switch v7, :pswitch_data_0

    goto :goto_6

    .line 1007
    :pswitch_0
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 1008
    const/4 v6, 0x3

    .line 1012
    :goto_8
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 1013
    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_10
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .line 1014
    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1015
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v11, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v19

    .line 1017
    .local v19, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1018
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1020
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 1025
    const-string v26, "FIXME"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1027
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 1028
    monitor-exit v27

    goto/16 :goto_9

    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 1010
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_11
    const/16 v6, 0xc

    goto/16 :goto_8

    .line 1032
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_12
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    check-cast v25, Ljava/util/ArrayList;

    .line 1033
    .restart local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_13
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .line 1034
    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1035
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    xor-int/lit8 v26, v6, -0x1

    and-int/lit8 v26, v26, 0xf

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v19

    .line 1037
    .restart local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1038
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1040
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 1045
    const-string v26, "FIXME"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1047
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 1048
    monitor-exit v27

    goto/16 :goto_a

    :catchall_1
    move-exception v26

    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v26

    .line 1054
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v25    # "zoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :pswitch_1
    xor-int/lit8 v26, v12, -0x1

    and-int/lit8 v26, v26, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v6

    .line 1055
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v5, "allZoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Collection;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1057
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Collection;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1058
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Collection;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1059
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_14
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/TaskRecord;

    .line 1060
    .restart local v24    # "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v26

    and-int v26, v26, v6

    if-eqz v26, :cond_14

    .line 1061
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1062
    .restart local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    xor-int/lit8 v26, v6, -0x1

    and-int/lit8 v26, v26, 0xf

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v19

    .line 1064
    .restart local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1065
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1067
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 1072
    const-string v26, "FIXME"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1074
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v28, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 1075
    monitor-exit v27

    goto/16 :goto_b

    :catchall_2
    move-exception v26

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v26

    .line 1088
    .end local v5    # "allZoneTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v6    # "arrangeZone":I
    .end local v19    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/TaskRecord;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    const-string v28, "FIXME"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1091
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_16
    if-eqz v15, :cond_0

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    goto/16 :goto_0

    .line 1005
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public calculateMinimizePosition(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "zone"    # I
    .param p3, "displaySize"    # Landroid/graphics/Point;

    .prologue
    .line 1919
    const/4 v3, 0x0

    .local v3, "x":I
    const/4 v4, 0x0

    .line 1920
    .local v4, "y":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1921
    .local v1, "minimizeSize":I
    const/4 v0, 0x0

    .line 1926
    .local v0, "cocktailBarSize":I
    const/4 v2, 0x0

    .line 1930
    .local v2, "orient":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 1933
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 1935
    iget v5, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v1

    sub-int v3, v5, v0

    .line 1936
    sparse-switch p2, :sswitch_data_0

    .line 1944
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    iget v4, v5, Landroid/graphics/Point;->y:I

    .line 1961
    :goto_0
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 1938
    :sswitch_0
    sget v4, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    .line 1939
    goto :goto_0

    .line 1941
    :sswitch_1
    iget v5, p3, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v1

    .line 1942
    goto :goto_0

    .line 1948
    :cond_0
    sget v5, Lcom/android/server/am/MultiWindowPolicy;->sStatusBarHeight:I

    add-int v4, v0, v5

    .line 1949
    sparse-switch p2, :sswitch_data_1

    .line 1957
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v5

    iget v3, v5, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 1951
    :sswitch_2
    const/4 v3, 0x0

    .line 1952
    goto :goto_0

    .line 1954
    :sswitch_3
    iget v5, p3, Landroid/graphics/Point;->x:I

    sub-int v3, v5, v1

    .line 1955
    goto :goto_0

    .line 1936
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 1949
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method chkDisableByMobileKeyboard()V
    .locals 4

    .prologue
    .line 2487
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    if-eqz v1, :cond_1

    .line 2489
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2490
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowPolicy$4;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2500
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public closePenWindow()V
    .locals 10

    .prologue
    .line 435
    const-string v6, "MultiWindowPolicy"

    const-string v7, "closePenWindow"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v0

    .line 437
    .local v0, "currentUserId":I
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 438
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 439
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 441
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 442
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v6, v0, :cond_1

    .line 443
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/ActivityManagerService;->removeTask(II)Z

    goto :goto_0

    .line 447
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    return-void
.end method

.method findBaseZone(I)I
    .locals 1
    .param p1, "requestZone"    # I

    .prologue
    .line 809
    const/16 v0, 0xf

    .line 810
    .local v0, "baseZone":I
    packed-switch p1, :pswitch_data_0

    .line 826
    :goto_0
    :pswitch_0
    return v0

    .line 813
    :pswitch_1
    const/16 v0, 0xf

    .line 814
    goto :goto_0

    .line 818
    :pswitch_2
    const/4 v0, 0x3

    .line 819
    goto :goto_0

    .line 823
    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 810
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findNextFocusableStackTab(I)I
    .locals 8
    .param p1, "curStackId"    # I

    .prologue
    .line 2053
    const/4 v2, -0x1

    .line 2054
    .local v2, "nextStackId":I
    const/4 v4, -0x1

    .line 2055
    .local v4, "stackId":I
    const/4 v3, -0x1

    .line 2056
    .local v3, "prevStackId":I
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 2057
    .local v5, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    move v3, v4

    .line 2058
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v4

    .line 2059
    if-ne v4, p1, :cond_0

    .line 2060
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2061
    .local v1, "idx":I
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    .line 2062
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v2

    .line 2066
    :goto_0
    iput v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    .line 2070
    .end local v1    # "idx":I
    .end local v5    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_1
    return v2

    .line 2064
    .restart local v1    # "idx":I
    .restart local v5    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 1

    .prologue
    .line 1729
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mMultiInstanceMaxCnt:I

    return v0
.end method

.method getBounds(Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "zone"    # I

    .prologue
    .line 1231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;II)V

    .line 1232
    return-void
.end method

.method getBounds(Landroid/graphics/Rect;II)V
    .locals 4
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "zone"    # I
    .param p3, "displayId"    # I

    .prologue
    .line 1235
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .line 1236
    .local v0, "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    if-nez v0, :cond_0

    .line 1237
    const-string v1, "MultiWindowPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requested display #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not initilized yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-virtual {p0, p3}, Lcom/android/server/am/MultiWindowPolicy;->updateZoneRects(I)V

    .line 1239
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .line 1242
    .restart local v0    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1262
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1265
    :goto_0
    return-void

    .line 1244
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1247
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1250
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1253
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1256
    :pswitch_5
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1259
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

.method public getDefaultScale()F
    .locals 1

    .prologue
    .line 1888
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    return v0
.end method

.method public getEnableMultiInstance(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1687
    const/4 v1, 0x0

    .line 1690
    .local v1, "bMultiInstance":Z
    if-nez p1, :cond_0

    .line 1691
    const/4 v5, 0x0

    .line 1725
    :goto_0
    return v5

    .line 1694
    :cond_0
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1695
    .local v0, "applicationMetaData":Landroid/os/Bundle;
    :goto_1
    iget v2, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1697
    .local v2, "launchMode":I
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    .line 1698
    .local v3, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1699
    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_3

    .line 1700
    const/4 v1, 0x1

    :cond_1
    :goto_2
    move v5, v1

    .line 1725
    goto :goto_0

    .line 1694
    .end local v0    # "applicationMetaData":Landroid/os/Bundle;
    .end local v2    # "launchMode":I
    .end local v3    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1701
    .restart local v0    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v2    # "launchMode":I
    .restart local v3    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_3
    if-ne v2, v6, :cond_4

    .line 1702
    if-eqz v0, :cond_1

    .line 1703
    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1704
    .local v4, "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1705
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1706
    const-string/jumbo v5, "singleTask"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1707
    const/4 v1, 0x1

    goto :goto_2

    .line 1712
    .end local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    :cond_4
    if-ne v2, v7, :cond_1

    .line 1713
    if-eqz v0, :cond_1

    .line 1714
    const-string v5, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1715
    .restart local v4    # "multiInstanceLaunchMode":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1716
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1717
    const-string/jumbo v5, "singleInstance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1718
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public getPenWindowLaunchScale(Landroid/content/pm/ActivityInfo;)F
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1892
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1893
    .local v1, "metaData":Landroid/os/Bundle;
    :goto_0
    if-eqz v1, :cond_1

    .line 1894
    const-string v2, "com.sec.android.multiwindow.DEFAULT_SCALE"

    iget v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1897
    :goto_1
    return v0

    .line 1892
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 1897
    .restart local v1    # "metaData":Landroid/os/Bundle;
    :cond_1
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    goto :goto_1
.end method

.method public getRelativeStackIdLocked(IILcom/android/server/am/ActivityRecord;)I
    .locals 10
    .param p1, "requestZone"    # I
    .param p2, "displayId"    # I
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v9, 0x1000

    const/16 v8, 0xf

    .line 1114
    const/4 v3, 0x0

    .line 1115
    .local v3, "relativeZone":I
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->findBaseZone(I)I

    move-result v3

    .line 1116
    if-ne v3, v8, :cond_0

    .line 1117
    const/4 v3, 0x0

    .line 1120
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1121
    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .line 1122
    .local v2, "obscuredZone":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1124
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1122
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1127
    :cond_2
    if-ne v2, v8, :cond_4

    .line 1165
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v6, 0x0

    :goto_1
    return v6

    .line 1131
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1133
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_5

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1135
    move-object v5, p3

    .line 1138
    :cond_5
    if-eqz v5, :cond_9

    .line 1139
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    or-int/2addr v2, v6

    .line 1148
    :cond_6
    :goto_2
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1154
    :cond_7
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, v5, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v7, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v6, v7, :cond_8

    iget v6, p3, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v7, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v6, v7, :cond_8

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1161
    :cond_8
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 1162
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_1

    .line 1143
    :cond_9
    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 1144
    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2
.end method

.method public getRunningPenWindowCnt()I
    .locals 1

    .prologue
    .line 1848
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt(I)I

    move-result v0

    return v0
.end method

.method public getRunningPenWindowCnt(I)I
    .locals 12
    .param p1, "notIncludeTaskId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1852
    const/4 v1, 0x0

    .line 1853
    .local v1, "cnt":I
    iput v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mDiffUserPenWindowCnt:I

    .line 1854
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v4

    .line 1856
    .local v4, "currentUserId":I
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1857
    .local v5, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, -0x1

    .line 1858
    .local v2, "curHomeTaskNdx":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 1859
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 1860
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v9, v4, :cond_3

    .line 1861
    move v2, v6

    .line 1866
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1867
    .local v0, "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1868
    .local v3, "currStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_1

    .line 1869
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 1870
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v9, :cond_1

    .line 1871
    iget v9, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, p1, :cond_1

    .line 1874
    iget v9, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v9, v4, :cond_4

    .line 1875
    iget v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDiffUserPenWindowCnt:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDiffUserPenWindowCnt:I

    .line 1880
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1858
    .end local v0    # "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1876
    .restart local v0    # "activityStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ge v9, v2, :cond_2

    .line 1877
    sget-boolean v9, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "MultiWindowPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not Conunt task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", taskNdx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < homeTaskNdx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1884
    .end local v3    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return v1
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 17
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1645
    const/4 v2, 0x0

    .line 1646
    .local v2, "cls":Landroid/content/ComponentName;
    if-eqz p1, :cond_4

    .line 1647
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1648
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 1649
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 1656
    .local v7, "nInstance":I
    const/4 v3, 0x0

    .line 1657
    .local v3, "cp":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1659
    .local v14, "userId":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v10

    .line 1660
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    .line 1661
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 1662
    .local v12, "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 1663
    .local v11, "tR":Lcom/android/server/am/TaskRecord;
    iget-object v1, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1664
    .local v1, "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1665
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v15, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v15, :cond_3

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v15, v3, :cond_3

    iget v15, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v15, v14, :cond_3

    .line 1666
    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1667
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 1668
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1669
    .local v13, "taskAffinity":Ljava/lang/String;
    :goto_3
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1670
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1651
    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "nInstance":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v13    # "taskAffinity":Ljava/lang/String;
    .end local v14    # "userId":I
    :cond_4
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_0

    .line 1652
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto/16 :goto_0

    .line 1657
    .restart local v3    # "cp":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "nInstance":I
    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/am/TaskRecord;->userId:I

    goto/16 :goto_1

    :cond_6
    const/4 v14, -0x2

    goto/16 :goto_1

    .line 1668
    .restart local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .restart local v14    # "userId":I
    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 1672
    :cond_9
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_a

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1674
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1675
    :cond_a
    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v15, :cond_3

    iget-object v15, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v15, v15, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1677
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1683
    .end local v1    # "aRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "tR":Lcom/android/server/am/TaskRecord;
    .end local v12    # "tRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_b
    return v7
.end method

.method public getTabFrontStack()I
    .locals 1

    .prologue
    .line 1970
    iget v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    return v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2019
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowTab;

    goto :goto_0

    .line 2022
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public getTaskController()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/MultiWindowPolicy$TaskController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2388
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 2389
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 2390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initCenterBarPosition(I)Landroid/graphics/Point;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 1169
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1170
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1171
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1173
    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1174
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1175
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1176
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1177
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 1179
    :cond_0
    return-object v1
.end method

.method public initMWSetting(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 382
    const-string v7, "MultiWindowPolicy"

    const-string v8, "Check MultiWindowSetting!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 384
    const-string v7, "MultiWindowPolicy"

    const-string v8, "MultiWindowSetting! - SimplificationUI"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "multi_window_enabled"

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v2, v5

    .line 387
    .local v2, "isMultiWindow":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "easy_mode_switch"

    invoke-static {v7, v8, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_6

    move v0, v5

    .line 389
    .local v0, "isEasyMode":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    .line 390
    .local v4, "isUPS":Z
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mobile_keyboard"

    invoke-static {v7, v8, v6, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_7

    move v1, v5

    .line 392
    .local v1, "isMobileKeyboardEnabled":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/am/MultiWindowPolicy;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 394
    .local v3, "isTalkbackEnabled":Z
    const-string v7, "MultiWindowPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MultiWindowSetting! - SimplificationUI mw : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " easymode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mobile-keyboard : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_8

    .line 397
    :cond_0
    if-eqz v0, :cond_1

    .line 398
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string/jumbo v7, "easymode"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    :cond_1
    if-eqz v4, :cond_2

    .line 401
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string v7, "com.sec.android.emergencymode.service"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 403
    :cond_2
    if-eqz v1, :cond_3

    .line 404
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string/jumbo v7, "mobile_keyboard"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 406
    :cond_3
    if-eqz v3, :cond_4

    .line 407
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v5

    const-string/jumbo v7, "talkback"

    invoke-virtual {v5, v7, p1, v6}, Lcom/android/server/am/MultiWindowFacadeService;->updateMultiWindowSetting(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    .end local v0    # "isEasyMode":Z
    .end local v1    # "isMobileKeyboardEnabled":Z
    .end local v2    # "isMultiWindow":Z
    .end local v3    # "isTalkbackEnabled":Z
    .end local v4    # "isUPS":Z
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v2, v6

    .line 385
    goto/16 :goto_0

    .restart local v2    # "isMultiWindow":Z
    :cond_6
    move v0, v6

    .line 387
    goto/16 :goto_1

    .restart local v0    # "isEasyMode":Z
    .restart local v4    # "isUPS":Z
    :cond_7
    move v1, v6

    .line 390
    goto :goto_2

    .line 409
    .restart local v1    # "isMobileKeyboardEnabled":Z
    .restart local v3    # "isTalkbackEnabled":Z
    :cond_8
    if-nez v2, :cond_4

    .line 410
    const-string v6, "MultiWindowPolicy"

    const-string v7, "Turn on MultiWindowSetting!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "multi_window_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method public initMultiWindowApplicationInfo()V
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->initConfig()V

    .line 1916
    return-void
.end method

.method public isAvoidScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isAvoidScaleOption(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEnableMakePenWindow()Z
    .locals 1

    .prologue
    .line 1902
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowPolicy;->isEnableMakePenWindow(I)Z

    move-result v0

    return v0
.end method

.method public isEnableMakePenWindow(I)Z
    .locals 4
    .param p1, "notIncludeTaskId"    # I

    .prologue
    .line 1906
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getMaxPenWindow(Landroid/content/Context;)I

    move-result v0

    .line 1907
    .local v0, "maxPenWindow":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getRunningPenWindowCnt(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1908
    :cond_0
    const/4 v1, 0x1

    .line 1911
    :goto_0
    return v1

    .line 1910
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 1911
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isNoTitleActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isNoTitleActivityList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowLaunchApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPopupLaunchApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnlyApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const/4 v0, 0x1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowPolicy;->isGamePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 212
    sget-boolean v1, Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    .line 213
    const-string v1, "MultiWindowPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gamemode - In isSupportFullScreenMinimizable() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will be made as FullScreenMinimizable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method isUpdateTaskToReturnToFrozenLocked()Z
    .locals 1

    .prologue
    .line 2511
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mUpdateTaskToReturnToFrozen:Z

    return v0
.end method

.method public minimizeAll(Ljava/lang/String;)V
    .locals 7
    .param p1, "skipPackage"    # Ljava/lang/String;

    .prologue
    .line 885
    const-string v3, "MultiWindowPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minimizeAll : skipPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 887
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 888
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 889
    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimizeAll : stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 891
    .local v2, "topRecord":Lcom/android/server/am/ActivityRecord;
    const-string v3, "MultiWindowPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimizeAll : topRecord="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    if-eqz v2, :cond_0

    .line 893
    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 896
    :cond_1
    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_0

    .line 901
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    return-void
.end method

.method public needToUpdateCenterBarPosition(I)Z
    .locals 10
    .param p1, "displayId"    # I

    .prologue
    const v9, 0x3f4ccccd    # 0.8f

    const v8, 0x3e4ccccd    # 0.2f

    .line 1184
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1185
    .local v6, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 1186
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_0

    .line 1187
    invoke-virtual {v5, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1190
    :cond_0
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 1191
    .local v3, "MIN_FIXED_WIDTH":I
    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v1, v7

    .line 1193
    .local v1, "MAX_FIXED_WIDTH":I
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 1194
    .local v2, "MIN_FIXED_HEIGHT":I
    iget v7, v6, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v0, v7

    .line 1196
    .local v0, "MAX_FIXED_HEIGHT":I
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v4

    .line 1198
    .local v4, "centerBarPoint":Landroid/graphics/Point;
    iget v7, v4, Landroid/graphics/Point;->x:I

    if-le v7, v3, :cond_1

    iget v7, v4, Landroid/graphics/Point;->x:I

    if-ge v7, v1, :cond_1

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-le v7, v2, :cond_1

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-lt v7, v0, :cond_2

    .line 1202
    :cond_1
    const/4 v7, 0x1

    .line 1205
    :goto_0
    return v7

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1
    .param p1, "cmp"    # Landroid/content/ComponentName;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 265
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MultiWindowFacadeService;->notifyMultiWindowStyleChangedLocked(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 267
    return-void
.end method

.method public notifyTaskRemoved(I)V
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    .line 2471
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2472
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2473
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2474
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2476
    .local v1, "key":Landroid/os/IBinder;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    sget v4, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne v2, v4, :cond_0

    .line 2478
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskRemoved(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2480
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2483
    .end local v1    # "key":Landroid/os/IBinder;
    :cond_1
    :try_start_2
    monitor-exit v3

    .line 2484
    return-void

    .line 2483
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyTaskStarted(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2394
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2395
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2396
    monitor-exit v3

    .line 2416
    :cond_0
    :goto_0
    return-void

    .line 2398
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    if-eqz p1, :cond_0

    .line 2404
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2405
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;-><init>()V

    .line 2406
    .local v0, "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->id:I

    .line 2407
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2408
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2409
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 2413
    :goto_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2414
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2415
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V

    goto :goto_0

    .line 2398
    .end local v0    # "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2407
    .restart local v0    # "taskInfo":Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    .restart local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_1

    .line 2411
    :cond_3
    iget-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_2
.end method

.method public notifyTaskStopped(I)V
    .locals 4
    .param p1, "taskId"    # I

    .prologue
    .line 2457
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2458
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2459
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2463
    .local v1, "key":Landroid/os/IBinder;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v2, p1}, Lcom/samsung/android/multiwindow/ITaskController;->onTaskStopped(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2464
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2467
    .end local v1    # "key":Landroid/os/IBinder;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 2468
    return-void

    .line 2467
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 5
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 2293
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2294
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2295
    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/MultiWindowPolicy$TaskController;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2297
    .local v1, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2301
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    .end local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2304
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2305
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2306
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2307
    sget v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RUNNING:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2308
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 2309
    return-void

    .line 2303
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2298
    .restart local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 5
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I

    .prologue
    .line 2312
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2313
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2314
    new-instance v1, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/MultiWindowPolicy$TaskController;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2316
    .local v1, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2320
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    .end local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2323
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2324
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2325
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2326
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2327
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 2328
    return-void

    .line 2322
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2317
    .restart local v1    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public removeTab(I)V
    .locals 9
    .param p1, "stackId"    # I

    .prologue
    const/high16 v8, 0x800000

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 1980
    if-ne p1, v7, :cond_1

    .line 2016
    :cond_0
    return-void

    .line 1984
    :cond_1
    iget v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    if-ne v5, p1, :cond_6

    .line 1985
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->findNextFocusableStackTab(I)I

    .line 1994
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 1995
    .local v3, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 1996
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2000
    .end local v3    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2001
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2002
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 2003
    .local v4, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2006
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2007
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v6, :cond_5

    .line 2008
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2009
    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 2010
    const/4 v5, 0x0

    invoke-virtual {v1, v8, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 2011
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v2, v1}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2013
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_1

    .line 1988
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(IZ)V

    .line 1989
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 1990
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1991
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 418
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowFacadeService;->removeUser(I)V

    .line 419
    return-void
.end method

.method public resize2Split(IIIZ)V
    .locals 5
    .param p1, "stackAId"    # I
    .param p2, "stackBId"    # I
    .param p3, "displayId"    # I
    .param p4, "isIsolated"    # Z

    .prologue
    const/16 v4, 0xc

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1287
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1289
    .local v0, "zoneBounds":Landroid/graphics/Rect;
    if-eqz p4, :cond_0

    .line 1290
    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/am/MultiWindowPolicy;->updateIsolatedRects(IILandroid/graphics/Rect;)V

    .line 1294
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    .line 1296
    if-eqz p4, :cond_1

    .line 1297
    invoke-direct {p0, v2, v4, v0}, Lcom/android/server/am/MultiWindowPolicy;->updateIsolatedRects(IILandroid/graphics/Rect;)V

    .line 1298
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    invoke-virtual {v1, p3, v2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1304
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    .line 1305
    return-void

    .line 1292
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 1301
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    .line 1302
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v2, p3, v1}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    goto :goto_1
.end method

.method public resize2Split(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "isIsolated"    # Z

    .prologue
    .line 1276
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1277
    .local v0, "ass":Lcom/android/server/am/ActivityStackSupervisor;
    const/4 v3, 0x3

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1278
    .local v1, "stackA":Lcom/android/server/am/ActivityStack;
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1280
    .local v2, "stackB":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    iget v3, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IIIZ)V

    goto :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 2033
    return-void
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1308
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1309
    .local v4, "zoneBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v1

    .line 1311
    .local v1, "isIsolated":Z
    if-eqz v1, :cond_1

    .line 1312
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 1317
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1319
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1320
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 1321
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1322
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v5

    if-eq v5, p1, :cond_2

    .line 1320
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1314
    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->updateZoneRects(I)V

    goto :goto_0

    .line 1325
    .restart local v0    # "i":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 1326
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/am/MultiWindowPolicy;->updateIsolatedRects(IILandroid/graphics/Rect;)V

    .line 1330
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1331
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;Z)V

    goto :goto_2

    .line 1328
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v5

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;II)V

    goto :goto_3

    .line 1334
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    return-void
.end method

.method public setFloatingBounds(Lcom/android/server/am/ActivityRecord;F)V
    .locals 24
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "scale"    # F

    .prologue
    .line 1733
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    .line 1735
    .local v17, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-nez v21, :cond_1

    .line 1823
    :cond_0
    :goto_0
    return-void

    .line 1738
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    if-eqz v21, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1742
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    .line 1744
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1747
    .local v3, "ar":Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-nez v3, :cond_0

    .line 1752
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const/4 v7, 0x0

    .line 1753
    .local v7, "defWidth":I
    const/4 v5, 0x0

    .line 1755
    .local v5, "defHeight":I
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 1756
    .local v11, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v10

    .line 1757
    .local v10, "display":Landroid/view/Display;
    if-eqz v10, :cond_4

    invoke-virtual {v10, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1759
    :cond_4
    const/16 v21, 0x800

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v21

    if-nez v21, :cond_6

    .line 1760
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1761
    .local v14, "info":Landroid/content/pm/ActivityInfo;
    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 1763
    .local v16, "metaData":Landroid/os/Bundle;
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v18

    .line 1764
    .local v18, "res":Landroid/content/res/Resources;
    if-eqz v16, :cond_6

    .line 1765
    const-string v21, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1766
    .local v6, "defSizeId":I
    if-eqz v6, :cond_5

    .line 1767
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v7, v0

    .line 1769
    :cond_5
    const-string v21, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1770
    if-eqz v6, :cond_6

    .line 1771
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v21

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1781
    .end local v6    # "defSizeId":I
    .end local v14    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "metaData":Landroid/os/Bundle;
    .end local v18    # "res":Landroid/content/res/Resources;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10502b7

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v8, v0

    .line 1782
    .local v8, "defWindowGapOfLeft":I
    move v9, v8

    .line 1783
    .local v9, "defWindowGapOfTop":I
    move v15, v8

    .line 1784
    .local v15, "leftWindowGap":I
    move/from16 v20, v9

    .line 1786
    .local v20, "topWindowGap":I
    if-eqz v7, :cond_7

    if-nez v5, :cond_8

    .line 1788
    :cond_7
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v7, v0

    .line 1789
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1792
    :cond_8
    const/16 v21, 0x0

    cmpl-float v21, p2, v21

    if-eqz v21, :cond_a

    .line 1793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    move/from16 v21, v0

    cmpg-float v21, p2, v21

    if-gez v21, :cond_10

    .line 1794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    move/from16 p2, v0

    .line 1798
    :cond_9
    :goto_4
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    float-to-int v7, v0

    .line 1799
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, p2

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1803
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v13

    .line 1804
    .local v13, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1805
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 1806
    .local v19, "topFreeStyleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 1807
    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    .line 1808
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v15, v15, v21

    .line 1809
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    .line 1817
    .end local v19    # "topFreeStyleRect":Landroid/graphics/Rect;
    :cond_b
    :goto_5
    new-instance v4, Landroid/graphics/Rect;

    add-int v21, v15, v7

    add-int v22, v20, v5

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v4, v15, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1819
    .local v4, "bound":Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_c

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_c

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    if-ltz v21, :cond_c

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    if-gez v21, :cond_d

    .line 1820
    :cond_c
    add-int v21, v8, v7

    add-int v22, v9, v5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v8, v9, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1822
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1744
    .end local v4    # "bound":Landroid/graphics/Rect;
    .end local v5    # "defHeight":I
    .end local v7    # "defWidth":I
    .end local v8    # "defWindowGapOfLeft":I
    .end local v9    # "defWindowGapOfTop":I
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "displaySize":Landroid/graphics/Point;
    .end local v13    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "leftWindowGap":I
    .end local v20    # "topWindowGap":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    goto/16 :goto_1

    .line 1761
    .restart local v5    # "defHeight":I
    .restart local v7    # "defWidth":I
    .restart local v10    # "display":Landroid/view/Display;
    .restart local v11    # "displaySize":Landroid/graphics/Point;
    .restart local v14    # "info":Landroid/content/pm/ActivityInfo;
    :cond_f
    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto/16 :goto_2

    .line 1774
    .restart local v16    # "metaData":Landroid/os/Bundle;
    :catch_0
    move-exception v12

    .line 1775
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1776
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v12

    .line 1777
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v12}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 1795
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v14    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "metaData":Landroid/os/Bundle;
    .restart local v8    # "defWindowGapOfLeft":I
    .restart local v9    # "defWindowGapOfTop":I
    .restart local v15    # "leftWindowGap":I
    .restart local v20    # "topWindowGap":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    move/from16 v21, v0

    cmpl-float v21, p2, v21

    if-lez v21, :cond_9

    .line 1796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    move/from16 p2, v0

    goto/16 :goto_4

    .line 1813
    .restart local v13    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_11
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v21, v21, v7

    div-int/lit8 v15, v21, 0x2

    .line 1814
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sub-int v21, v21, v5

    div-int/lit8 v20, v21, 0x2

    goto/16 :goto_5
.end method

.method public setIsolatedPoint(ILandroid/graphics/Point;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1268
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    .line 1269
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1270
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IZ)V

    .line 1273
    :cond_0
    return-void
.end method

.method public setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 6
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v5, 0x1

    .line 1097
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1111
    :cond_0
    return-void

    .line 1100
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1101
    .local v0, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1103
    .local v2, "taskRecord":Lcom/android/server/am/TaskRecord;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1104
    .local v3, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    .line 1105
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1106
    invoke-virtual {p1, v2, p2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1107
    invoke-virtual {p1, v3, v5, v5}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1101
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public setStackBoundTab(Landroid/graphics/Rect;Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2036
    const/16 v1, 0x32

    .line 2037
    .local v1, "offset":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2038
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 2039
    .local v4, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2040
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2041
    .local v5, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v7, 0x800000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2046
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2047
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 2048
    iget-object v6, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 2050
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    .end local v5    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method public setTabFrontStack(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 1965
    iput p1, p0, Lcom/android/server/am/MultiWindowPolicy;->mTabFrontStack:I

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setTabFrontStack(I)V

    .line 1967
    return-void
.end method

.method startFreezingTaskToReturnToLocked()V
    .locals 1

    .prologue
    .line 2503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mUpdateTaskToReturnToFrozen:Z

    .line 2504
    return-void
.end method

.method stopFreezingTaskToReturnToLocked()V
    .locals 1

    .prologue
    .line 2507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mUpdateTaskToReturnToFrozen:Z

    .line 2508
    return-void
.end method

.method public systemReady()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, -0x1

    const/high16 v12, 0x447a0000    # 1000.0f

    const/4 v11, 0x0

    .line 282
    iget v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_0

    .line 283
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e010a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    iput v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mDefaultScale:F

    .line 285
    :cond_0
    iget v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_1

    .line 286
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0109

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    iput v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mMinScale:F

    .line 288
    :cond_1
    iget v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    cmpl-float v9, v9, v11

    if-nez v9, :cond_2

    .line 289
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e010b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    iput v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mMaxScale:F

    .line 291
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 292
    .local v4, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 293
    .local v3, "displays":[Landroid/view/Display;
    array-length v9, v3

    add-int/lit8 v2, v9, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 294
    aget-object v9, v3, v2

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 295
    .local v1, "displayId":I
    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition(I)Landroid/graphics/Point;

    .line 293
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 298
    .end local v1    # "displayId":I
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v9, :cond_4

    .line 299
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 301
    .local v7, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_4

    .line 303
    :try_start_0
    new-instance v9, Lcom/android/server/am/MultiWindowPolicy$1;

    invoke-direct {v9, p0}, Lcom/android/server/am/MultiWindowPolicy$1;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 320
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v10, 0x20

    invoke-virtual {v7, v9, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v7    # "phone":Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v9, :cond_5

    .line 327
    new-instance v5, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v5, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 328
    .local v5, "filter":Landroid/content/IntentFilter;
    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 329
    .local v8, "timerFilter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "com.android.settings.LaunchGlanceView"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "blackScreenFilter":Landroid/content/IntentFilter;
    new-instance v6, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 332
    .local v6, "minimizeAllFiter":Landroid/content/IntentFilter;
    new-instance v9, Lcom/android/server/am/MultiWindowPolicy$2;

    invoke-direct {v9, p0}, Lcom/android/server/am/MultiWindowPolicy$2;-><init>(Lcom/android/server/am/MultiWindowPolicy;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    .end local v0    # "blackScreenFilter":Landroid/content/IntentFilter;
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "minimizeAllFiter":Landroid/content/IntentFilter;
    .end local v8    # "timerFilter":Landroid/content/IntentFilter;
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "kids_home_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/MultiWindowPolicy;->mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v14, v11, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 352
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "car_mode_on"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/MultiWindowPolicy;->mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v14, v11, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 353
    iget-object v9, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "multi_window_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/MultiWindowPolicy;->mSettingContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v14, v11, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 355
    const-string v9, "boot"

    invoke-virtual {p0, v9}, Lcom/android/server/am/MultiWindowPolicy;->initMWSetting(Ljava/lang/String;)V

    .line 356
    return-void

    .line 321
    .restart local v7    # "phone":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 4
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 2331
    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowPolicy$TaskController;

    .line 2333
    .local v0, "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    if-eqz v0, :cond_0

    .line 2335
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mRegisteredTaskControllers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2336
    iget-object v1, v0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2338
    :cond_0
    monitor-exit v2

    .line 2339
    return-void

    .line 2338
    .end local v0    # "tc":Lcom/android/server/am/MultiWindowPolicy$TaskController;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCenterBarPosition(IF)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "weight"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1209
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1210
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1211
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1215
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_1

    .line 1216
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1217
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 1223
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 1225
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1226
    .local v2, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v3, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1227
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1228
    return-void

    .line 1219
    .end local v2    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1220
    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public updateConfigurationLockedLa(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy;->mIsolatedPoint:Landroid/graphics/Point;

    .line 1344
    .local v0, "oldPoint":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->setIsolatedPoint(ILandroid/graphics/Point;)V

    .line 1345
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "oldPoint":Landroid/graphics/Point;
    check-cast v0, Landroid/graphics/Point;

    .line 1346
    .restart local v0    # "oldPoint":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->updateZoneRects(I)V

    .line 1356
    :goto_0
    return-void

    .line 1349
    .end local v0    # "oldPoint":Landroid/graphics/Point;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 1350
    .restart local v0    # "oldPoint":Landroid/graphics/Point;
    if-eqz v0, :cond_1

    .line 1351
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/MultiWindowPolicy;->setCenterBarPoint(ILandroid/graphics/Point;)V

    goto :goto_0

    .line 1353
    :cond_1
    const-string v1, "MultiWindowPolicy"

    const-string/jumbo v2, "updateConfigurationLockedLa : oldPoint is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateZoneRects(I)V
    .locals 11
    .param p1, "displayId"    # I

    .prologue
    const/4 v9, 0x0

    .line 1366
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1367
    .local v2, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1368
    .local v1, "d":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 1369
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1372
    :cond_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mCenterBarPoints:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 1375
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    if-nez v0, :cond_1

    .line 1376
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowPolicy;->initCenterBarPosition(I)Landroid/graphics/Point;

    move-result-object v0

    .line 1379
    :cond_1
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 1380
    .local v4, "iDeviceWidth":I
    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 1381
    .local v3, "iDeviceHeight":I
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 1382
    .local v6, "iWidthBoundary":I
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 1383
    .local v5, "iHeightBoundary":I
    if-le v4, v3, :cond_3

    const/4 v7, 0x1

    .line 1386
    .local v7, "landscape":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .line 1387
    .local v8, "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    if-nez v8, :cond_2

    .line 1388
    new-instance v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;

    .end local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    const/4 v10, 0x0

    invoke-direct {v8, p0, v10}, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;-><init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/android/server/am/MultiWindowPolicy$1;)V

    .line 1389
    .restart local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    iget-object v10, p0, Lcom/android/server/am/MultiWindowPolicy;->mDisplayZoneRects:Landroid/util/SparseArray;

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1392
    :cond_2
    if-eqz v7, :cond_4

    .line 1393
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    .line 1394
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    .line 1395
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    .line 1396
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    .line 1403
    :goto_1
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    .line 1404
    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1405
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    .line 1406
    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1407
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->A:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    .line 1408
    iget-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->FULL:Landroid/graphics/Rect;

    iget-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->B:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1410
    return-void

    .end local v7    # "landscape":Z
    .end local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_3
    move v7, v9

    .line 1383
    goto :goto_0

    .line 1398
    .restart local v7    # "landscape":Z
    .restart local v8    # "zoneRects":Lcom/android/server/am/MultiWindowPolicy$ZoneRects;
    :cond_4
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v9, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->C:Landroid/graphics/Rect;

    .line 1399
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9, v5, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->E:Landroid/graphics/Rect;

    .line 1400
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->D:Landroid/graphics/Rect;

    .line 1401
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v6, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/server/am/MultiWindowPolicy$ZoneRects;->F:Landroid/graphics/Rect;

    goto :goto_1
.end method
