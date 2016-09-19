.class public final Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .locals 11
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 91
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "packages-compat.xml"

    invoke-direct {v9, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 92
    new-instance v8, Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    .line 94
    const/4 v2, 0x0

    .line 96
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 97
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 98
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 100
    .local v1, "eventType":I
    :goto_0
    const/4 v8, 0x2

    if-eq v1, v8, :cond_0

    const/4 v8, 0x1

    if-eq v1, v8, :cond_0

    .line 102
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    .line 139
    if-eqz v2, :cond_1

    .line 141
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 146
    .end local v1    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_1
    return-void

    .line 108
    .restart local v1    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 110
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 112
    :cond_3
    const/4 v8, 0x2

    if-ne v1, v8, :cond_5

    .line 113
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 115
    const-string/jumbo v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 116
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "pkg":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 118
    const/4 v8, 0x0

    const-string/jumbo v9, "mode"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 119
    .local v3, "mode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 120
    .local v4, "modeInt":I
    if-eqz v3, :cond_4

    .line 122
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    .line 126
    :cond_4
    :goto_2
    :try_start_4
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "modeInt":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    .line 132
    const/4 v8, 0x1

    if-ne v1, v8, :cond_3

    .line 139
    :cond_6
    if-eqz v2, :cond_1

    .line 141
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v8

    goto :goto_1

    .line 134
    .end local v1    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    if-eqz v2, :cond_1

    .line 141
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 142
    :catch_2
    move-exception v8

    goto :goto_1

    .line 136
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_7

    :try_start_8
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 139
    :cond_7
    if-eqz v2, :cond_1

    .line 141
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 142
    :catch_4
    move-exception v8

    goto :goto_1

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_8

    .line 141
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 143
    :cond_8
    :goto_3
    throw v8

    .line 142
    .restart local v1    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v8

    goto/16 :goto_1

    .line 123
    .restart local v3    # "mode":Ljava/lang/String;
    .restart local v4    # "modeInt":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "tagName":Ljava/lang/String;
    :catch_6
    move-exception v8

    goto :goto_2

    .line 142
    .end local v1    # "eventType":I
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "modeInt":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_7
    move-exception v9

    goto :goto_3
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 154
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 16
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    .line 300
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 302
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    .line 305
    .local v4, "curFlags":I
    packed-switch p2, :pswitch_data_0

    .line 316
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown screen compat mode req #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; ignoring"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 307
    :pswitch_0
    const/4 v5, 0x0

    .line 320
    .local v5, "enable":Z
    :goto_1
    move v8, v4

    .line 321
    .local v8, "newFlags":I
    if-eqz v5, :cond_5

    .line 322
    or-int/lit8 v8, v8, 0x2

    .line 327
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 328
    .local v3, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 329
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring compat mode change of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; compatibility never needed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v8, 0x0

    .line 333
    :cond_1
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 334
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring compat mode change of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; compatibility always needed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v8, 0x0

    .line 339
    :cond_2
    if-eq v8, v4, :cond_0

    .line 340
    if-eqz v8, :cond_6

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v13, 0x12c

    invoke-virtual {v12, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v13, 0x12c

    invoke-virtual {v12, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 351
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v14, 0x2710

    invoke-virtual {v12, v7, v14, v15}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 354
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 357
    .local v11, "starting":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_4
    if-ltz v6, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 359
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 357
    :cond_3
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 310
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v5    # "enable":Z
    .end local v6    # "i":I
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "newFlags":I
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "starting":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    const/4 v5, 0x1

    .line 311
    .restart local v5    # "enable":Z
    goto/16 :goto_1

    .line 313
    .end local v5    # "enable":Z
    :pswitch_2
    and-int/lit8 v12, v4, 0x2

    if-nez v12, :cond_4

    const/4 v5, 0x1

    .line 314
    .restart local v5    # "enable":Z
    :goto_6
    goto/16 :goto_1

    .line 313
    .end local v5    # "enable":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_6

    .line 324
    .restart local v5    # "enable":Z
    .restart local v8    # "newFlags":I
    :cond_5
    and-int/lit8 v8, v8, -0x3

    goto/16 :goto_2

    .line 343
    .restart local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 363
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "i":I
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v11    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_7
    :try_start_0
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_3

    .line 366
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v12, v9, v3}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 368
    :catch_0
    move-exception v12

    goto :goto_5

    .line 372
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_8
    if-eqz v11, :cond_0

    .line 373
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 378
    iget-object v12, v10, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 4
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 190
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, p1, v2, v3, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 196
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    return-object v0

    .line 190
    .end local v0    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .locals 6
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v0, v2

    .line 208
    .local v0, "enabled":Z
    :goto_0
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, p1, v4, v5, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 213
    .local v1, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    const/4 v2, -0x2

    .line 219
    :cond_0
    :goto_1
    return v2

    .end local v0    # "enabled":Z
    .end local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_1
    move v0, v3

    .line 200
    goto :goto_0

    .line 216
    .restart local v0    # "enabled":Z
    .restart local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    const/4 v2, -0x1

    goto :goto_1

    .line 219
    :cond_3
    if-nez v0, :cond_0

    move v2, v3

    goto :goto_1
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 225
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 228
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 259
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 260
    const/4 v1, -0x3

    .line 262
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :goto_0
    if-nez v0, :cond_0

    .line 281
    const/4 v1, -0x3

    .line 283
    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_1

    .line 278
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .prologue
    const/16 v7, 0x12c

    const/4 v2, 0x0

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_1
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 167
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 170
    .local v2, "mayCompat":Z
    :cond_2
    if-eqz p2, :cond_0

    .line 173
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 176
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 177
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 161
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "mayCompat":Z
    .end local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method saveCompatModes()V
    .locals 17

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 390
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v10, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 391
    .local v10, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    const/4 v4, 0x0

    .line 396
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 397
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 398
    .local v8, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 399
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 400
    const-string/jumbo v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 401
    const/4 v14, 0x0

    const-string v15, "compat-packages"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 411
    .local v11, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v14, Landroid/content/res/Configuration;->screenLayout:I

    .line 412
    .local v12, "screenLayout":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 415
    .local v13, "smallestScreenWidthDp":I
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 416
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 417
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 418
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 419
    .local v9, "pkg":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 420
    .local v7, "mode":I
    if-eqz v7, :cond_0

    .line 423
    const/4 v1, 0x0

    .line 425
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_2
    invoke-interface {v11, v9, v14, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 428
    :goto_1
    if-eqz v1, :cond_0

    .line 431
    :try_start_3
    new-instance v5, Landroid/content/res/CompatibilityInfo;

    const/4 v14, 0x0

    invoke-direct {v5, v1, v12, v13, v14}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 433
    .local v5, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v14

    if-nez v14, :cond_0

    .line 436
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v14

    if-nez v14, :cond_0

    .line 439
    const/4 v14, 0x0

    const-string/jumbo v15, "pkg"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v8, v14, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const/4 v14, 0x0

    const-string/jumbo v15, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const/4 v14, 0x0

    const-string/jumbo v15, "pkg"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 449
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "info":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "mode":I
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/IPackageManager;
    .end local v12    # "screenLayout":I
    .end local v13    # "smallestScreenWidthDp":I
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e1":Ljava/io/IOException;
    const-string v14, "ActivityManager"

    const-string v15, "Error writing compat packages"

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    if-eqz v4, :cond_1

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 455
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 391
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v14

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 445
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v12    # "screenLayout":I
    .restart local v13    # "smallestScreenWidthDp":I
    :cond_2
    const/4 v14, 0x0

    :try_start_5
    const-string v15, "compat-packages"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 426
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "mode":I
    .restart local v9    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_1
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .locals 3
    .param p1, "ask"    # Z

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 237
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 238
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 267
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 268
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_0
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    const/16 v5, 0x12c

    .line 243
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "curFlags":I
    if-eqz p2, :cond_1

    and-int/lit8 v2, v0, -0x2

    .line 245
    .local v2, "newFlags":I
    :goto_0
    if-eq v0, v2, :cond_0

    .line 246
    if-eqz v2, :cond_2

    .line 247
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 252
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 253
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 244
    .end local v2    # "newFlags":I
    :cond_1
    or-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 249
    .restart local v2    # "newFlags":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 292
    :goto_0
    if-nez v0, :cond_0

    .line 293
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_1
    return-void

    .line 296
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_1

    .line 290
    :catch_0
    move-exception v1

    goto :goto_0
.end method
