.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4642
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 4643
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4644
    const-string v0, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Ljava/lang/String;)I

    .line 4646
    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/pm/PersonaManagerService$PersonaHandler;I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .param p1, "x1"    # I

    .prologue
    .line 4633
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    return-object v0
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    .line 5911
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5912
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->parseEnterprisedataXml()V

    .line 5915
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 5916
    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .line 5917
    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5918
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 5923
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseEnterprisedataXml()V
    .locals 9

    .prologue
    .line 5879
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5880
    const/4 v3, 0x0

    .line 5882
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    const-string v6, "PersonaManagerService"

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5883
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5885
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5886
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5887
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 5888
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5889
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5890
    .local v1, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 5891
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4402(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    .line 5892
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4202(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 5900
    .end local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 5902
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5908
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-void

    .line 5894
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    const-string v6, "PersonaManagerService"

    const-string v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 5896
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 5897
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5898
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5900
    if-eqz v3, :cond_0

    .line 5902
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 5903
    :catch_1
    move-exception v6

    goto :goto_1

    .line 5900
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 5902
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 5904
    :cond_2
    :goto_4
    throw v6

    .line 5903
    .restart local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v2    # "file":Ljava/io/File;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 5900
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 5896
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 119
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4649
    const-string v4, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Ljava/lang/String;)I

    .line 4650
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 5857
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    and-int/lit16 v4, v4, 0x1388

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_1

    .line 5859
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    add-int/lit16 v10, v4, -0x1388

    .line 5864
    .local v10, "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->propagateOnSessionExpired(I)V

    .line 5866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v84

    .line 5867
    .local v84, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v84, :cond_1

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_1

    .line 5868
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 5869
    .local v28, "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5870
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to session expiry."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 5872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 5876
    .end local v10    # "personaId":I
    .end local v28    # "currentUser":Ljava/lang/Integer;
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_1
    return-void

    .line 4653
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    .line 4654
    .local v40, "event":I
    if-eqz v40, :cond_0

    .line 4655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v83

    .line 4656
    .local v83, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .local v48, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 4657
    .local v72, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v72, :cond_2

    .line 4658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v72

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Long;

    .line 4659
    .local v47, "i":Ljava/lang/Long;
    if-eqz v47, :cond_2

    .line 4660
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_2

    .line 4669
    .end local v40    # "event":I
    .end local v47    # "i":Ljava/lang/Long;
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_2
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CALL_KNOX_HELP_POPUP called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4671
    .restart local v10    # "personaId":I
    new-instance v55, Landroid/content/Intent;

    invoke-direct/range {v55 .. v55}, Landroid/content/Intent;-><init>()V

    .line 4672
    .local v55, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.knox.containeragent2"

    const-string v6, "com.sec.knox.containeragent2.ui.help.KnoxHelpLauncher"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4674
    const/high16 v4, 0x10000000

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4676
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4677
    :catch_0
    move-exception v31

    .line 4678
    .local v31, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaHandler > MSG_CALL_KNOX_HELP_POPUP Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4683
    .end local v10    # "personaId":I
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v55    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4685
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .line 4689
    .end local v10    # "personaId":I
    :pswitch_4
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_STOP_TIMER called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4691
    .restart local v10    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v45, v0

    .line 4692
    .local v45, "force":I
    const/4 v4, 0x1

    move/from16 v0, v45

    if-eq v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4693
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 4698
    .end local v10    # "personaId":I
    .end local v45    # "force":I
    :pswitch_5
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4700
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 4701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 4707
    .end local v10    # "personaId":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    .line 4708
    .local v21, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .line 4709
    .local v112, "type":Z
    const-string/jumbo v4, "flag"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v44

    .line 4710
    .local v44, "flag":I
    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v113

    .line 4711
    .local v113, "uid":I
    const-string/jumbo v4, "pid"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v85

    .line 4712
    .local v85, "pid":I
    invoke-static/range {v113 .. v113}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v115

    .line 4713
    .local v115, "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v112

    move/from16 v1, v44

    move/from16 v2, v113

    move/from16 v3, v115

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_0

    .line 4717
    .end local v21    # "b":Landroid/os/Bundle;
    .end local v44    # "flag":I
    .end local v85    # "pid":I
    .end local v112    # "type":Z
    .end local v113    # "uid":I
    .end local v115    # "userId":I
    :pswitch_7
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_OFF called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 4720
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 4721
    new-instance v55, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.screenOff"

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4722
    .restart local v55    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.samsung.knox.kss"

    const-string v7, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4723
    const-string/jumbo v4, "screenOff"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v83

    .line 4727
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 4728
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v72, :cond_4

    .line 4729
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v115

    .line 4731
    .restart local v115    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v115

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v6, :cond_5

    .line 4732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4734
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v104

    .line 4735
    .local v104, "sessionLength":J
    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4736
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 4737
    const-string v4, "PersonaManagerServiceHandler"

    const-string v6, "Screen Off Reason Check, OFF_BECAUSE_OF_PROX_SENSOR!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4759
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v104    # "sessionLength":J
    .end local v115    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 4739
    .restart local v48    # "i$":Ljava/util/Iterator;
    .restart local v55    # "intent":Landroid/content/Intent;
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v104    # "sessionLength":J
    .restart local v115    # "userId":I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_3

    .line 4741
    :cond_7
    move-object/from16 v0, v72

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_8

    .line 4743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "knox.power_button_instantly_locks"

    const/4 v7, 0x0

    move-object/from16 v0, v72

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v63

    .line 4746
    .local v63, "lockinstantly":I
    if-lez v63, :cond_4

    .line 4747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_3

    .line 4748
    .end local v63    # "lockinstantly":I
    :cond_8
    move-object/from16 v0, v72

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-lez v4, :cond_4

    .line 4750
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 4751
    .restart local v28    # "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v6, :cond_4

    .line 4752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v6, 0x16

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 4753
    .local v64, "message":Landroid/os/Message;
    move-object/from16 v0, v72

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v64

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 4754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 4759
    .end local v28    # "currentUser":Ljava/lang/Integer;
    .end local v64    # "message":Landroid/os/Message;
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v104    # "sessionLength":J
    .end local v115    # "userId":I
    :cond_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4763
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_8
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_ON called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    new-instance v55, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.screenOn"

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4765
    .restart local v55    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.knox.kss"

    const-string v6, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4766
    const-string/jumbo v4, "screenOn"

    const/4 v5, 0x1

    move-object/from16 v0, v55

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 4768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 4769
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v83

    .line 4770
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 4771
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v72, :cond_a

    .line 4772
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v115

    .line 4774
    .restart local v115    # "userId":I
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v115

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v115

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move-object/from16 v0, v72

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v6, :cond_b

    .line 4776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v115

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v115

    invoke-virtual {v4, v6, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4779
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "when screen on, dismiss keyguard for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v115

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v115

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    .line 4784
    :cond_b
    move-object/from16 v0, v72

    iget v10, v0, Landroid/content/pm/PersonaInfo;->id:I

    .line 4785
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v104

    .line 4786
    .restart local v104    # "sessionLength":J
    move-object/from16 v0, v72

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v72

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v6, 0x2648

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v6}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 4790
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isSessionExpired(I)Z

    move-result v4

    if-nez v4, :cond_a

    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-lez v4, :cond_a

    .line 4791
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v70

    .line 4792
    .local v70, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v58

    .line 4793
    .local v58, "lastTime":J
    sub-long v32, v70, v58

    .line 4795
    .local v32, "duration":J
    sub-long v110, v104, v32

    .line 4796
    .local v110, "timeRemaining":J
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timeRemaining: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v110

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    or-int/lit16 v6, v10, 0x1388

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 4799
    .restart local v64    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    or-int/lit16 v6, v10, 0x1388

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    .line 4800
    const-wide/16 v6, 0x1

    cmp-long v4, v110, v6

    if-gez v4, :cond_d

    const-wide/16 v110, 0x0

    .line 4801
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v64

    move-wide/from16 v1, v110

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 4806
    .end local v10    # "personaId":I
    .end local v32    # "duration":J
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v58    # "lastTime":J
    .end local v64    # "message":Landroid/os/Message;
    .end local v70    # "now":J
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v104    # "sessionLength":J
    .end local v110    # "timeRemaining":J
    .end local v115    # "userId":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v48    # "i$":Ljava/util/Iterator;
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_e
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 4810
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_9
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 4812
    .restart local v28    # "currentUser":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v83

    .line 4813
    .restart local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 4814
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v72, :cond_f

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v72

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v5, :cond_f

    .line 4815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v72

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .line 4823
    .end local v28    # "currentUser":Ljava/lang/Integer;
    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v83    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_a
    :try_start_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v116, v0

    .line 4824
    .local v116, "userid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v116

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 4825
    .end local v116    # "userid":I
    :catch_1
    move-exception v31

    .line 4826
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot process DPM state change broadcast :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4831
    .end local v31    # "e":Ljava/lang/Exception;
    :pswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v114, v0

    .line 4832
    .local v114, "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v47

    .line 4833
    .local v47, "i":I
    :goto_5
    if-lez v47, :cond_10

    .line 4834
    add-int/lit8 v47, v47, -0x1

    .line 4836
    :try_start_6
    const-string v4, "PersonaManagerService"

    const-string v5, " sending remove persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    move/from16 v0, v114

    invoke-interface {v4, v0}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 4838
    :catch_2
    move-exception v34

    .line 4841
    .local v34, "e2":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Caught:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4844
    .end local v34    # "e2":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 4848
    .end local v47    # "i":I
    .end local v114    # "userHandle":I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 4849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadKnoxWallpaperSettings(I)V

    .line 4851
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOKnoxContainerLaunch(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4855
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOPersonaActive(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4859
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOResetPersona(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4863
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOStateChange(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 4867
    :pswitch_10
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_CHANGE_OBSERVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v114, v0

    .line 4869
    .restart local v114    # "userHandle":I
    new-instance v55, Landroid/content/Intent;

    const-string v4, "com.sec.knox.container.INTENT_KNOX_USER_CHANGED"

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4870
    .restart local v55    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v55

    move/from16 v1, v114

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v47

    .line 4873
    .restart local v47    # "i":I
    :goto_6
    if-lez v47, :cond_12

    .line 4874
    add-int/lit8 v47, v47, -0x1

    .line 4876
    :try_start_7
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sending onKnoxModeChange persona event to knox observers during switch #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IKnoxModeChangeObserver;

    move/from16 v0, v114

    invoke-interface {v4, v0}, Landroid/content/pm/IKnoxModeChangeObserver;->onKnoxModeChange(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    .line 4878
    :catch_3
    move-exception v41

    .line 4881
    .local v41, "exK":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Caught during onKnoxModeChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v41 .. v41}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4884
    .end local v41    # "exK":Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 4889
    .end local v47    # "i":I
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v114    # "userHandle":I
    :pswitch_11
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_PROCESS_FOCUSED_USER_CHANGE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4890
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4891
    .local v27, "currentFocusedUser":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->disableNonCoreServices:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getServiceEx()Lcom/android/server/clipboardex/ClipboardExService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/clipboardex/ClipboardExService;

    move-result-object v4

    const-string v5, "SWITCHED"

    move/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4898
    .end local v27    # "currentFocusedUser":I
    :pswitch_12
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_STATE_NOT_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v114, v0

    .line 4900
    .restart local v114    # "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v114

    # invokes: Lcom/android/server/pm/PersonaManagerService;->broadcastKnoxModeChangeIntent(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 4904
    .end local v114    # "userHandle":I
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$3400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePartialContainer(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3500(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 4908
    :pswitch_14
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 4909
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 4910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 4917
    .end local v10    # "personaId":I
    :pswitch_15
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3800(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/tima/ITimaService;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    # setter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3702(Z)Z

    .line 4918
    const-string v4, "PersonaManagerService.Tima"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check Tima 2.0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3902(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 4929
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v81

    .line 4930
    .local v81, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    :cond_13
    :goto_8
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/pm/PersonaInfo;

    .line 4932
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v84, :cond_13

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    if-eqz v4, :cond_13

    .line 4935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 4936
    move-object/from16 v0, v84

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object/from16 v0, v84

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4937
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4939
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 4940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4942
    const/4 v4, 0x1

    :try_start_9
    move-object/from16 v0, v84

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 4943
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; pi.upgradeInProgress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v84

    iget-boolean v7, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v84

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4945
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 4947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4948
    const/16 v52, 0x0

    .line 4950
    .local v52, "in":Ljava/io/InputStream;
    :try_start_a
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "reading from xml resource for fota"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4951
    new-instance v43, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "enterprisedata.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4953
    .local v43, "file":Ljava/io/File;
    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 4954
    new-instance v53, Ljava/io/FileInputStream;

    move-object/from16 v0, v53

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 4955
    .end local v52    # "in":Ljava/io/InputStream;
    .local v53, "in":Ljava/io/InputStream;
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v76

    .line 4956
    .local v76, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object/from16 v0, v76

    move-object/from16 v1, v53

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4957
    new-instance v39, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v39

    move-object/from16 v1, v76

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4958
    .local v39, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 4959
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4402(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    .line 4960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4202(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object/from16 v52, v53

    .line 4968
    .end local v39    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v53    # "in":Ljava/io/InputStream;
    .end local v76    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v52    # "in":Ljava/io/InputStream;
    :goto_9
    if-eqz v52, :cond_16

    .line 4970
    :try_start_c
    invoke-virtual/range {v52 .. v52}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_14

    .line 4977
    .end local v43    # "file":Ljava/io/File;
    .end local v52    # "in":Ljava/io/InputStream;
    :cond_16
    :goto_a
    const/16 v42, 0x1

    .line 4979
    .local v42, "exist":Z
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    const-string v5, "com.google.android.webview"

    const/4 v6, 0x0

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 4980
    .local v16, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v16, :cond_17

    .line 4981
    const/16 v42, 0x0

    .line 4983
    :cond_17
    const-string v4, "PersonaManagerService"

    const-string v5, "Webview package is in Knox container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 4988
    .end local v16    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_b
    if-nez v42, :cond_18

    .line 4989
    const-string v4, "PersonaManagerService"

    const-string v5, "Webview package is not in Knox container, hence install that package"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const-string v6, "com.google.android.webview"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    .line 4992
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleFOTAUpgrade(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 4995
    .end local v42    # "exist":Z
    :cond_19
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_1e

    .line 4997
    :try_start_e
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling SDP onBoot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 4999
    .local v50, "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-nez v4, :cond_24

    const/16 v22, 0x1

    .line 5000
    .local v22, "bootres":Z
    :goto_c
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5001
    if-nez v22, :cond_1a

    .line 5002
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP on-boot failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lcom/android/sdp/exception/SdpVersionException; {:try_start_e .. :try_end_e} :catch_8

    .line 5053
    .end local v22    # "bootres":Z
    .end local v50    # "ident":J
    :cond_1a
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 5055
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_1b

    .line 5056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5059
    :cond_1b
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 5061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 5062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 5064
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 5065
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5067
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 5068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5121
    :cond_1e
    :goto_e
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsAdminLock:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 5122
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetPersonaOnReboot:  resetting persona :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5600(Lcom/android/server/pm/PersonaManagerService;IZ)I

    .line 5126
    :cond_1f
    invoke-virtual/range {v84 .. v84}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 5127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_34

    .line 5129
    const/16 v65, 0x1

    .line 5130
    .local v65, "mountStatus":Z
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->isMounted(I)Z

    move-result v4

    if-nez v4, :cond_20

    .line 5131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual/range {v84 .. v84}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual/range {v84 .. v84}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v8

    move-object/from16 v0, v84

    iget-boolean v9, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    invoke-virtual/range {v4 .. v9}, Lcom/sec/knox/container/util/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZ)Z

    move-result v65

    .line 5134
    :cond_20
    if-nez v65, :cond_2f

    .line 5135
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system not mounted successfully for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 5193
    .end local v65    # "mountStatus":Z
    :cond_21
    :goto_f
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "systemReady: getDeviceFirmwareVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pi.fwversion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 5195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 5197
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pi.removePersona = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-boolean v6, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pi.state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 5200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    # invokes: Lcom/android/server/pm/PersonaManagerService;->upgradeContainer(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5800(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    goto/16 :goto_8

    .line 4924
    .end local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_4
    move-exception v31

    .line 4925
    .restart local v31    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    .line 4926
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get Tima instance - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 4945
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :catchall_2
    move-exception v4

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v4

    .line 4962
    .restart local v43    # "file":Ljava/io/File;
    .restart local v52    # "in":Ljava/io/InputStream;
    :cond_22
    :try_start_11
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to find enterprisedata.xml in system container"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_9

    .line 4964
    .end local v43    # "file":Ljava/io/File;
    :catch_5
    move-exception v31

    .line 4965
    .restart local v31    # "e":Ljava/lang/Exception;
    :goto_10
    :try_start_12
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    .line 4966
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 4968
    if-eqz v52, :cond_16

    .line 4970
    :try_start_13
    invoke-virtual/range {v52 .. v52}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_a

    .line 4971
    :catch_6
    move-exception v4

    goto/16 :goto_a

    .line 4968
    .end local v31    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    :goto_11
    if-eqz v52, :cond_23

    .line 4970
    :try_start_14
    invoke-virtual/range {v52 .. v52}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    .line 4972
    :cond_23
    :goto_12
    throw v4

    .line 4984
    .end local v52    # "in":Ljava/io/InputStream;
    .restart local v42    # "exist":Z
    :catch_7
    move-exception v31

    .line 4985
    .restart local v31    # "e":Ljava/lang/Exception;
    const/16 v42, 0x0

    goto/16 :goto_b

    .line 4999
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v42    # "exist":Z
    .restart local v50    # "ident":J
    :cond_24
    const/16 v22, 0x0

    goto/16 :goto_c

    .line 5004
    .end local v50    # "ident":J
    :catch_8
    move-exception v101

    .line 5005
    .local v101, "se":Lcom/android/sdp/exception/SdpVersionException;
    const-string v4, "PersonaManagerService"

    const-string v5, "SDP version mismatch. migration detected"

    move-object/from16 v0, v101

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5007
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_29

    .line 5011
    const/16 v100, 0x0

    .line 5013
    .local v100, "rstToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 5014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v100

    .line 5018
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x2

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v100

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v23

    .line 5020
    .local v23, "cmk":Ljava/lang/String;
    if-eqz v23, :cond_25

    .line 5021
    const/16 v29, 0x0

    .line 5022
    .local v29, "decodedCMK":[B
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_28

    .line 5023
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    .line 5027
    :goto_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5028
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    .line 5029
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5031
    .end local v29    # "decodedCMK":[B
    .end local v50    # "ident":J
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v100

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5043
    .end local v23    # "cmk":Ljava/lang/String;
    .end local v100    # "rstToken":Ljava/lang/String;
    :goto_15
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5044
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-eqz v4, :cond_26

    .line 5045
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP on-boot failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    :cond_26
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_d

    .line 5048
    .end local v50    # "ident":J
    :catch_9
    move-exception v31

    .line 5049
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    const-string v5, "SDP on-boot failed"

    move-object/from16 v0, v101

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 5016
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v100    # "rstToken":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v100

    goto/16 :goto_13

    .line 5025
    .restart local v23    # "cmk":Ljava/lang/String;
    .restart local v29    # "decodedCMK":[B
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    goto/16 :goto_14

    .line 5037
    .end local v23    # "cmk":Ljava/lang/String;
    .end local v29    # "decodedCMK":[B
    .end local v100    # "rstToken":Ljava/lang/String;
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5038
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    .line 5039
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .line 5072
    .end local v50    # "ident":J
    .end local v101    # "se":Lcom/android/sdp/exception/SdpVersionException;
    :cond_2a
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_1e

    .line 5081
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "inside systemReady keyguard is disabled sdp minor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5082
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5084
    const/16 v91, 0x0

    .line 5085
    .local v91, "pwdResetToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v91

    .line 5091
    :goto_16
    if-eqz v91, :cond_1e

    .line 5092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x2

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v91

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v26

    .line 5094
    .local v26, "containerMasterKey":Ljava/lang/String;
    if-eqz v26, :cond_2e

    .line 5096
    const/16 v29, 0x0

    .line 5097
    .restart local v29    # "decodedCMK":[B
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2d

    .line 5098
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    .line 5102
    :goto_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5103
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 5104
    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v5, "Failed to unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    :cond_2b
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut([B)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;[B)V

    .line 5108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 5088
    .end local v26    # "containerMasterKey":Ljava/lang/String;
    .end local v29    # "decodedCMK":[B
    .end local v50    # "ident":J
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v91

    goto :goto_16

    .line 5100
    .restart local v26    # "containerMasterKey":Ljava/lang/String;
    .restart local v29    # "decodedCMK":[B
    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    goto :goto_17

    .line 5114
    .end local v29    # "decodedCMK":[B
    :cond_2e
    const-string v4, "PersonaManagerService"

    const-string v5, "CMK is NULL : can\'t unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 5137
    .end local v26    # "containerMasterKey":Ljava/lang/String;
    .end local v91    # "pwdResetToken":Ljava/lang/String;
    .restart local v65    # "mountStatus":Z
    :cond_2f
    :try_start_16
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system successfully mounted for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_21

    .line 5140
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v25

    .line 5141
    .local v25, "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v25, :cond_21

    .line 5142
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v17

    .line 5143
    .local v17, "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v19

    .line 5144
    .local v19, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positive Delta for Knox upgrade : Before"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5145
    if-eqz v17, :cond_21

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    .line 5146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v74

    .line 5148
    .local v74, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App install list from PM for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v74

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    if-eqz v74, :cond_32

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    .line 5150
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App install list from PM for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    invoke-interface/range {v74 .. v74}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .local v49, "i$":Ljava/util/Iterator;
    :cond_30
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/pm/PackageInfo;

    .line 5152
    .local v78, "personaApp":Landroid/content/pm/PackageInfo;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App installed for persona"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v78

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5153
    :goto_18
    move-object/from16 v0, v78

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 5154
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App installed for persona"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v78

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "present in Ent Install List;Remove"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    move-object/from16 v0, v78

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_18

    .line 5184
    .end local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v74    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v78    # "personaApp":Landroid/content/pm/PackageInfo;
    :catch_a
    move-exception v31

    .line 5185
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to mount file system. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 5158
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v49    # "i$":Ljava/util/Iterator;
    .restart local v74    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_31
    :try_start_17
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positive Delta for Knox upgrade:After"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5160
    .end local v49    # "i$":Ljava/util/Iterator;
    :cond_32
    if-eqz v17, :cond_21

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    .line 5161
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona firmware version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 5163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 5165
    move-object/from16 v0, v84

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v4, :cond_33

    .line 5166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5169
    :cond_33
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    .line 5171
    .local v18, "appName":Ljava/lang/String;
    :try_start_18
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application upgrade-Add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_19

    .line 5173
    :catch_b
    move-exception v31

    .line 5174
    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_19
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for Persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a

    goto :goto_19

    .line 5188
    .end local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "appName":Ljava/lang/String;
    .end local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v65    # "mountStatus":Z
    .end local v74    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_34
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not mount file system for superLocked persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or due to container state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 5209
    .end local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_16
    :try_start_1a
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguardUpdateMonitor:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 5213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguardUpdateMonitor:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;->onBootComplete()V

    .line 5216
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/PersonaManager;

    .line 5219
    .local v82, "personaManager":Landroid/os/PersonaManager;
    if-eqz v82, :cond_0

    .line 5220
    const/4 v4, 0x0

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v81

    .line 5222
    .restart local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v81, :cond_0

    invoke-interface/range {v81 .. v81}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 5223
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v79, v0

    .line 5224
    .local v79, "personaIds":[I
    const/16 v67, 0x0

    .line 5225
    .local v67, "n":I
    invoke-interface/range {v81 .. v81}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48    # "i$":Ljava/util/Iterator;
    move/from16 v68, v67

    .end local v48    # "i$":Ljava/util/Iterator;
    .end local v67    # "n":I
    .local v68, "n":I
    :cond_36
    :goto_1a
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/pm/PersonaInfo;

    .line 5226
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v84, :cond_36

    .line 5228
    add-int/lit8 v67, v68, 0x1

    .end local v68    # "n":I
    .restart local v67    # "n":I
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    aput v4, v79, v68

    .line 5230
    new-instance v35, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5231
    .local v35, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v69

    .line 5233
    .local v69, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v36

    .line 5234
    .local v36, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v0, v69

    invoke-direct {v5, v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v57

    .line 5235
    .local v57, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 5236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 5237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isVoiceCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 5238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5242
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSMSCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 5243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 5248
    :goto_1c
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona firmware version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5249
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v25

    .line 5250
    .restart local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v57, :cond_3c

    if-eqz v25, :cond_3c

    .line 5251
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v11

    .line 5252
    .local v11, "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_3a

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 5253
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    .line 5254
    .local v89, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    .line 5255
    .local v54, "info":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    move-object/from16 v0, v89

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_1d

    .line 5326
    .end local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v36    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v54    # "info":Ljava/lang/String;
    .end local v57    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v67    # "n":I
    .end local v69    # "ownerUid":I
    .end local v79    # "personaIds":[I
    .end local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v82    # "personaManager":Landroid/os/PersonaManager;
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v89    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_c
    move-exception v31

    .line 5327
    .restart local v31    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5240
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v36    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v57    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v67    # "n":I
    .restart local v69    # "ownerUid":I
    .restart local v79    # "personaIds":[I
    .restart local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v82    # "personaManager":Landroid/os/PersonaManager;
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_37
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1b

    .line 5245
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1c

    .line 5258
    .restart local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v49    # "i$":Ljava/util/Iterator;
    .restart local v89    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_39
    invoke-interface/range {v89 .. v89}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v89

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/String;

    .line 5259
    .local v30, "disablePackages":[Ljava/lang/String;
    invoke-virtual/range {v57 .. v57}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 5262
    .end local v30    # "disablePackages":[Ljava/lang/String;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v89    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v12

    .line 5263
    .local v12, "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    const-string v5, "FOTA Boot receiver re_enable: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    if-eqz v12, :cond_3c

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 5265
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver re_enable:Size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 5267
    .local v38, "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Ljava/lang/String;

    .line 5268
    .local v86, "pkgInfo":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo for re_enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v86

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    move-object/from16 v0, v38

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 5271
    .end local v86    # "pkgInfo":Ljava/lang/String;
    :cond_3b
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo for re_enable:Enable pks size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5272
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Ljava/lang/String;

    .line 5273
    .local v37, "enablePackages":[Ljava/lang/String;
    invoke-virtual/range {v57 .. v57}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 5277
    .end local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "enablePackages":[Ljava/lang/String;
    .end local v38    # "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v49    # "i$":Ljava/util/Iterator;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    .line 5278
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v84

    iput-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 5279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 5280
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 5284
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3d
    :try_start_1d
    invoke-virtual/range {v84 .. v84}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 5285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 5288
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v14

    .line 5289
    .local v14, "adminuid":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT_COMPLETE - adminuid - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and personaId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5290
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_41

    .line 5291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v84

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v99

    .line 5292
    .local v99, "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT_COMPLETE - persona is in SUPER_LOCKED state, hence unmounting the filesystem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v99

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    .end local v14    # "adminuid":I
    .end local v99    # "retVal":Z
    :cond_3f
    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_40

    .line 5300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.knox.action.CONTAINER_UPGRADE_COMPLETE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    :cond_40
    move/from16 v68, v67

    .line 5302
    .end local v67    # "n":I
    .restart local v68    # "n":I
    goto/16 :goto_1a

    .line 5280
    .end local v68    # "n":I
    .restart local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v67    # "n":I
    :catchall_4
    move-exception v4

    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :try_start_1f
    throw v4

    .line 5294
    .end local v25    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v14    # "adminuid":I
    :cond_41
    const-string v4, "PersonaManagerService"

    const-string v5, "BOOT_COMPLETE - BYOD admin. Ignoring unmounting...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 5304
    .end local v14    # "adminuid":I
    .end local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v36    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v57    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v67    # "n":I
    .end local v69    # "ownerUid":I
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v68    # "n":I
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    move-result v4

    if-nez v4, :cond_45

    .line 5305
    const/16 v47, 0x0

    .line 5307
    .restart local v47    # "i":I
    const/16 v47, 0x0

    :goto_20
    move/from16 v0, v47

    move/from16 v1, v68

    if-ge v0, v1, :cond_44

    .line 5308
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    aget v5, v79, v47

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    .line 5309
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$6300()Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting contaienr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v79, v47

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in background after reboot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    .line 5307
    :cond_43
    add-int/lit8 v47, v47, 0x1

    goto :goto_20

    .line 5311
    :catch_d
    move-exception v31

    .line 5312
    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_21
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$6300()Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v79, v47

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in background after reboot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v47    # "i":I
    :cond_44
    :goto_21
    const-string v4, "PersonaManagerService"

    const-string v5, "BOOT_COMPLETE - Sending broadcast to start Knox Apps Update Process"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5319
    new-instance v103, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.appsupdateagent.intent.action.START_KNOX_APPS_UPDATE"

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5320
    .local v103, "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.knox.appsupdateagent"

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5321
    const/16 v4, 0x20

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v6, "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

    move-object/from16 v0, v103

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5315
    .end local v103    # "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSettingsValueforCOM()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    goto :goto_21

    .line 5336
    .end local v68    # "n":I
    .end local v79    # "personaIds":[I
    .end local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v82    # "personaManager":Landroid/os/PersonaManager;
    :pswitch_17
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    :try_start_22
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5340
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/PersonaInfo;

    .line 5341
    .local v80, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v80, :cond_46

    .line 5342
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e

    goto/16 :goto_1

    .line 5366
    .end local v10    # "personaId":I
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_e
    move-exception v31

    .line 5367
    .restart local v31    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 5346
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v10    # "personaId":I
    .restart local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_46
    :try_start_23
    invoke-virtual/range {v80 .. v80}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v75

    .line 5348
    .local v75, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 5350
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v4, :cond_47

    .line 5351
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "isKnoxKioskMode"

    const-string/jumbo v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5356
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v75

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    move-result v97

    .line 5357
    .local v97, "result":Z
    if-eqz v97, :cond_48

    .line 5358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v24

    .line 5359
    .local v24, "code":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRemovingPersona return code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5362
    .end local v24    # "code":I
    :cond_48
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Failed to switch persona. Aborted removing of persona..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e

    goto/16 :goto_0

    .line 5373
    .end local v10    # "personaId":I
    .end local v75    # "parentUserId":I
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v97    # "result":Z
    :pswitch_18
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5374
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v54

    .line 5377
    .local v54, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_49

    move-object/from16 v0, v54

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsAdminLock:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 5378
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPartition is skipped. It\'s already done in AMS.SystemReady"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5382
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->cleanPartition(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6400(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v98

    .line 5383
    .local v98, "ret":Z
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5397
    .end local v10    # "personaId":I
    .end local v54    # "info":Landroid/content/pm/PersonaInfo;
    .end local v98    # "ret":Z
    :pswitch_19
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPerson is not called from anywhere now. So disalbed. Please contacts container team!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5402
    :pswitch_1a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5403
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v106

    .line 5404
    .local v106, "state":Landroid/content/pm/PersonaState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v13

    .line 5405
    .local v13, "adminUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v28

    .line 5406
    .local v28, "currentUser":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyKeyguardShow(false) on MSG_SUPER_LOCK_PERSONA for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    .line 5408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/PersonaInfo;

    .line 5409
    .restart local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v80, :cond_4a

    .line 5410
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5414
    :cond_4a
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current user from AMS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adminUid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5415
    const/16 v97, 0x1

    .line 5417
    .restart local v97    # "result":Z
    move/from16 v0, v28

    if-ne v10, v0, :cond_4b

    .line 5418
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: current user from AMS is the one being super-locked, not stopping persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    const/16 v97, 0x0

    .line 5422
    :cond_4b
    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-nez v4, :cond_4c

    .line 5423
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5424
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5427
    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 5428
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, v10, :cond_4d

    .line 5429
    const/16 v97, 0x0

    .line 5430
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    :cond_4d
    const/16 v96, -0x1

    .line 5434
    .local v96, "res":I
    if-eqz v97, :cond_4f

    .line 5435
    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v4, :cond_4e

    .line 5436
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopping persona for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    move-result v96

    .line 5439
    :cond_4e
    if-eqz v96, :cond_4f

    .line 5440
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityManagerNative.getDefault().stopUser failed to execure with error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5444
    :cond_4f
    if-nez v97, :cond_50

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_51

    :cond_50
    if-eqz v96, :cond_54

    .line 5447
    :cond_51
    new-instance v35, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5448
    .restart local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v69

    .line 5449
    .restart local v69    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v88

    .line 5450
    .local v88, "pkgNames":[Ljava/lang/String;
    if-eqz v88, :cond_52

    .line 5451
    move-object/from16 v20, v88

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v62, v0

    .local v62, "len$":I
    const/16 v48, 0x0

    .local v48, "i$":I
    :goto_22
    move/from16 v0, v48

    move/from16 v1, v62

    if-ge v0, v1, :cond_53

    aget-object v87, v20, v48

    .line 5452
    .local v87, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v87

    move/from16 v1, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5451
    add-int/lit8 v48, v48, 0x1

    goto :goto_22

    .line 5455
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v48    # "i$":I
    .end local v62    # "len$":I
    .end local v87    # "pkgName":Ljava/lang/String;
    :cond_52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5457
    :cond_53
    const/4 v4, 0x0

    move-object/from16 v0, v80

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 5461
    .end local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v69    # "ownerUid":I
    .end local v88    # "pkgNames":[Ljava/lang/String;
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_0

    .line 5463
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5465
    .restart local v50    # "ident":J
    :try_start_24
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v90

    .line 5466
    .local v90, "pm":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    const-string v5, "com.sec.knox.home.crossprofilefilter"

    move-object/from16 v0, v90

    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    .line 5470
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5473
    .end local v90    # "pm":Landroid/content/pm/IPackageManager;
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v80 .. v80}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityAdminLocked(III)V
    invoke-static {v4, v5, v10, v6}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;III)V

    goto/16 :goto_0

    .line 5467
    :catch_f
    move-exception v93

    .line 5468
    .local v93, "re":Landroid/os/RemoteException;
    :try_start_25
    invoke-virtual/range {v93 .. v93}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    .line 5470
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .end local v93    # "re":Landroid/os/RemoteException;
    :catchall_5
    move-exception v4

    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5479
    .end local v10    # "personaId":I
    .end local v13    # "adminUid":I
    .end local v28    # "currentUser":I
    .end local v50    # "ident":J
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v96    # "res":I
    .end local v97    # "result":Z
    .end local v106    # "state":Landroid/content/pm/PersonaState;
    :pswitch_1b
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5484
    .restart local v10    # "personaId":I
    :try_start_26
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v4, v10, v5}, Landroid/app/IActivityManager;->updateKnoxContainerRuntimeState(II)V

    .line 5485
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityManagerService;

    .line 5486
    .local v15, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v15, :cond_55

    .line 5487
    invoke-virtual {v15, v10}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_10

    .line 5494
    .end local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_55
    :goto_24
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_57

    const/16 v94, 0x1

    .line 5495
    .local v94, "removePersona":Z
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/PersonaInfo;

    .line 5496
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v94, :cond_58

    .line 5497
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "userStopped triggered removal process..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v73

    .line 5500
    .local v73, "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v73, :cond_56

    invoke-interface/range {v73 .. v73}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_56

    .line 5501
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5504
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "handleMessage(MSG_PERSONA_STOPPED) no more Containers, M-Permission roll back on critical apps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, -0x11

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->applyPermissionStatesAndFlags(IIII)Z
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6700(Lcom/android/server/pm/PersonaManagerService;IIII)Z

    .line 5511
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5489
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v73    # "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v94    # "removePersona":Z
    :catch_10
    move-exception v93

    .line 5490
    .restart local v93    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "handleMessage() MSG_PERSONA_STOPPED remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 5494
    .end local v93    # "re":Landroid/os/RemoteException;
    :cond_57
    const/16 v94, 0x0

    goto :goto_25

    .line 5512
    .restart local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v94    # "removePersona":Z
    :cond_58
    if-eqz v72, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v72 .. v72}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5514
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v99

    .line 5515
    .restart local v99    # "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unmounting file system due to super lock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v99

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5517
    new-instance v35, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5518
    .restart local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v69

    .line 5519
    .restart local v69    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v88

    .line 5520
    .restart local v88    # "pkgNames":[Ljava/lang/String;
    if-eqz v88, :cond_59

    .line 5521
    move-object/from16 v20, v88

    .restart local v20    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v62, v0

    .restart local v62    # "len$":I
    const/16 v48, 0x0

    .restart local v48    # "i$":I
    :goto_26
    move/from16 v0, v48

    move/from16 v1, v62

    if-ge v0, v1, :cond_5a

    aget-object v87, v20, v48

    .line 5522
    .restart local v87    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v87

    move/from16 v1, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5521
    add-int/lit8 v48, v48, 0x1

    goto :goto_26

    .line 5525
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v48    # "i$":I
    .end local v62    # "len$":I
    .end local v87    # "pkgName":Ljava/lang/String;
    :cond_59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v69

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_11
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    .line 5530
    :cond_5a
    const/4 v4, 0x0

    move-object/from16 v0, v72

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .line 5527
    .end local v35    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v69    # "ownerUid":I
    .end local v88    # "pkgNames":[Ljava/lang/String;
    .end local v99    # "retVal":Z
    :catch_11
    move-exception v93

    .line 5528
    .restart local v93    # "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to unmount file system on super lock."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    .line 5530
    const/4 v4, 0x0

    move-object/from16 v0, v72

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .end local v93    # "re":Landroid/os/RemoteException;
    :catchall_6
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v72

    iput-boolean v5, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    throw v4

    .line 5537
    .end local v10    # "personaId":I
    .end local v72    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v94    # "removePersona":Z
    :pswitch_1c
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Start lock timer: persona is in background."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5538
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5539
    .restart local v10    # "personaId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v70

    .line 5540
    .restart local v70    # "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v60

    .line 5541
    .local v60, "lastTimeToBackground":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v108

    .line 5542
    .local v108, "timeOutValue":J
    sub-long v4, v70, v60

    sub-long v110, v108, v4

    .line 5543
    .restart local v110    # "timeRemaining":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    move-wide/from16 v0, v110

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IIJ)V
    invoke-static {v4, v10, v5, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6900(Lcom/android/server/pm/PersonaManagerService;IIJ)V

    goto/16 :goto_0

    .line 5548
    .end local v10    # "personaId":I
    .end local v60    # "lastTimeToBackground":J
    .end local v70    # "now":J
    .end local v108    # "timeOutValue":J
    .end local v110    # "timeRemaining":J
    :pswitch_1d
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5549
    .restart local v10    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v95, v0

    .line 5550
    .local v95, "requestId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop timer with request id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v95

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " persona Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v95

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_0

    .line 5556
    .end local v10    # "personaId":I
    .end local v95    # "requestId":I
    :pswitch_1e
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5557
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v54

    .line 5558
    .restart local v54    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5559
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to lock timeout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->lockPersona(I)V

    goto/16 :goto_0

    .line 5566
    .end local v10    # "personaId":I
    .end local v54    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_1f
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "locking persona due to reset timeout.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5568
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7000(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v54

    .line 5570
    .restart local v54    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v54

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 5573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 5574
    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v10}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 5575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(I)V

    goto/16 :goto_0

    .line 5593
    .end local v10    # "personaId":I
    .end local v54    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_20
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "received MSG_ACTIVATE_SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5595
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5596
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7100(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v54

    .line 5599
    .restart local v54    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v54, :cond_5d

    move-object/from16 v0, v54

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_5d

    .line 5600
    const-string v4, "PersonaManagerService"

    const-string v5, "activating sdp.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5603
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/server/SdpManagerService;->onDeviceLocked(I)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 5604
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to lock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5605
    :cond_5c
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5609
    .end local v50    # "ident":J
    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5621
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityManagerService;

    .line 5622
    .restart local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    const-string v4, "com.android.settings"

    invoke-virtual {v15, v4, v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5628
    .end local v10    # "personaId":I
    .end local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v54    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_21
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5629
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received MSG_CALM_SDP... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v84

    .line 5632
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7100(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5633
    if-nez v84, :cond_5e

    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5634
    :cond_5e
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_5f

    .line 5635
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sdp not-active (skip calming)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5640
    :cond_5f
    const/16 v26, 0x0

    .line 5642
    .restart local v26    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mEncodedPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 5646
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside MSG_CALM_SDP 1 found encoded pwd. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    new-instance v26, Ljava/lang/String;

    .end local v26    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mEncodedPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5684
    .restart local v26    # "containerMasterKey":Ljava/lang/String;
    :cond_60
    :goto_27
    if-eqz v26, :cond_67

    .line 5685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 5688
    const/16 v29, 0x0

    .line 5689
    .restart local v29    # "decodedCMK":[B
    move-object/from16 v0, v84

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_66

    .line 5690
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    .line 5694
    :goto_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 5695
    .restart local v50    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v10, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_61

    .line 5696
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to SDP unlock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5698
    :cond_61
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut([B)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;[B)V

    .line 5700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .line 5706
    .end local v29    # "decodedCMK":[B
    .end local v50    # "ident":J
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7000(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5648
    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 5649
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside MSG_CALM_SDP 2 found pwd. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5650
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v84

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v5, v10, v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_27

    .line 5652
    :cond_63
    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_60

    move-object/from16 v0, v84

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_60

    .line 5653
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(SDP-MINOR) check if finger print"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5655
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v102

    check-cast v102, Lcom/android/server/LockSettingsService;

    .line 5656
    .local v102, "service":Lcom/android/server/LockSettingsService;
    if-eqz v102, :cond_60

    .line 5657
    const/16 v107, 0x0

    .line 5659
    .local v107, "token":Ljava/lang/String;
    :try_start_29
    const-string/jumbo v4, "lockscreen.password_type"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v92, v0

    .line 5661
    .local v92, "quality":I
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "password is not present in map CMK generating form pwd token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v92

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v10}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5664
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 5665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v107

    .line 5668
    :goto_2a
    if-eqz v107, :cond_65

    .line 5669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x2

    move-object/from16 v0, v84

    iget v6, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v107

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v10, v0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_27

    .line 5667
    :cond_64
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v107

    goto :goto_2a

    .line 5672
    :cond_65
    const-string v4, "PersonaManagerService"

    const-string v5, "No token from TIMA"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_12

    goto/16 :goto_27

    .line 5675
    .end local v92    # "quality":I
    :catch_12
    move-exception v93

    .line 5676
    .restart local v93    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "error in MSG_CALM_SDP while getting password quality"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 5692
    .end local v93    # "re":Landroid/os/RemoteException;
    .end local v102    # "service":Lcom/android/server/LockSettingsService;
    .end local v107    # "token":Ljava/lang/String;
    .restart local v29    # "decodedCMK":[B
    :cond_66
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    goto/16 :goto_28

    .line 5702
    .end local v29    # "decodedCMK":[B
    :cond_67
    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v5, "In CALM_SDP: Container master key is NULL!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 5713
    .end local v10    # "personaId":I
    .end local v26    # "containerMasterKey":Ljava/lang/String;
    .end local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleRestart(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7500(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5719
    :pswitch_23
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5720
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE is called for personaId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 5724
    const/16 v4, 0x64

    if-lt v10, v4, :cond_6b

    .line 5725
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v117

    .line 5726
    .local v117, "value":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE Owner accessability value->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v117

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5727
    const/4 v4, 0x1

    move/from16 v0, v117

    if-ne v0, v4, :cond_68

    .line 5728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSamsunAccessibilityServiceRunning()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7600(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 5729
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7702(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 5737
    :cond_68
    :goto_2b
    new-instance v55, Landroid/content/Intent;

    invoke-direct/range {v55 .. v55}, Landroid/content/Intent;-><init>()V

    .line 5738
    .restart local v55    # "intent":Landroid/content/Intent;
    const-string v4, "com.sec.app.accesscontrol.ACTION_STOP_SELF"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_13

    .line 5752
    .end local v55    # "intent":Landroid/content/Intent;
    .end local v117    # "value":I
    :cond_69
    :goto_2c
    if-eqz v10, :cond_0

    .line 5753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v66

    .line 5754
    .local v66, "msg1":Landroid/os/Message;
    move-object/from16 v0, v66

    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 5755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5733
    .end local v66    # "msg1":Landroid/os/Message;
    .restart local v117    # "value":I
    :cond_6a
    :try_start_2b
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE not stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_13

    goto :goto_2b

    .line 5748
    .end local v117    # "value":I
    :catch_13
    move-exception v31

    .line 5749
    .restart local v31    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .line 5741
    .end local v31    # "e":Ljava/lang/Exception;
    :cond_6b
    :try_start_2c
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE restartAccessibilityServiceForOwner -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$7700(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7700(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 5743
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE starting owner accessibility"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7702(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_13

    goto :goto_2c

    .line 5762
    .end local v10    # "personaId":I
    :pswitch_24
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_NOTIFY_EXT_SDCARD_UPDATE is called for persona - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    const/16 v80, 0x0

    .line 5764
    .restart local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5765
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v80

    .line 5766
    if-eqz v80, :cond_6d

    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v4, :cond_6d

    .line 5767
    const/16 v56, 0x0

    .line 5768
    .local v56, "isSdcardAlertAlreadyShown":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 5769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v56

    .line 5771
    :cond_6c
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v10}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and needsRestart-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v80

    iget-boolean v6, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and isSdcardAlertAlreadyShown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v56, :cond_0

    move-object/from16 v0, v80

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-nez v4, :cond_0

    .line 5773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->notifyNeedRestartMsg(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5776
    .end local v56    # "isSdcardAlertAlreadyShown":Z
    :cond_6d
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Sdcard policy has not been updated..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5782
    .end local v10    # "personaId":I
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_25
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5783
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    const-string v5, "PersonaManagerService$PersonaHandler.handleMessage() launchPersonaHome for kioskModeEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 5787
    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v46

    .line 5788
    .local v46, "forceUpdateMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 5793
    .end local v10    # "personaId":I
    .end local v46    # "forceUpdateMsg":Landroid/os/Message;
    :pswitch_26
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5794
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "force update wallpaper for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v10, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    goto/16 :goto_0

    .line 5801
    .end local v10    # "personaId":I
    :pswitch_27
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5802
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyKeyguardShow(false) on MSG_DELETING_PERSONA for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 5804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    const-string v6, "container_adminlock"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V
    invoke-static {v4, v10, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$7900(Lcom/android/server/pm/PersonaManagerService;IZLjava/lang/String;)V

    .line 5805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->blockIncomingCall(Z)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$8000(Lcom/android/server/pm/PersonaManagerService;Z)V

    .line 5807
    :cond_6e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    goto/16 :goto_0

    .line 5814
    .end local v10    # "personaId":I
    :pswitch_28
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5815
    .restart local v10    # "personaId":I
    const/16 v80, 0x0

    .line 5816
    .restart local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v80

    .line 5817
    if-eqz v80, :cond_1

    .line 5818
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona is in Urgent Update State, So not switching from Recent tasks to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v80 .. v80}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityKnoxAppsUpdate(IIIZ)V
    invoke-static {v4, v5, v10, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$8100(Lcom/android/server/pm/PersonaManagerService;IIIZ)V

    goto/16 :goto_1

    .line 5827
    .end local v10    # "personaId":I
    .end local v80    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_29
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5828
    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup completed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 5831
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/content/pm/PersonaInfo;

    .line 5832
    .local v77, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz v77, :cond_6f

    .line 5833
    const/4 v4, 0x1

    move-object/from16 v0, v77

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    .line 5834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 5835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8200(Lcom/android/server/pm/PersonaManagerService;)V

    .line 5837
    :cond_6f
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    .line 5838
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v118, "Admin "

    move-object/from16 v0, v118

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v118, v0

    move-object/from16 v0, v118

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/pm/PersonaManagerService;->access$8300(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v118

    move-object/from16 v0, v118

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v118, " has successfully created container "

    move-object/from16 v0, v118

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5837
    .end local v77    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_7
    move-exception v4

    :try_start_2e
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    throw v4

    .line 5846
    .end local v10    # "personaId":I
    :pswitch_2a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 5847
    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->drawKnoxbadge(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$8400(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .line 5853
    .end local v10    # "personaId":I
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge()V
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8500(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_0

    .line 4971
    .restart local v43    # "file":Ljava/io/File;
    .restart local v52    # "in":Ljava/io/InputStream;
    .restart local v81    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v84    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_14
    move-exception v4

    goto/16 :goto_a

    .end local v43    # "file":Ljava/io/File;
    :catch_15
    move-exception v5

    goto/16 :goto_12

    .line 4968
    .end local v52    # "in":Ljava/io/InputStream;
    .restart local v43    # "file":Ljava/io/File;
    .restart local v53    # "in":Ljava/io/InputStream;
    :catchall_8
    move-exception v4

    move-object/from16 v52, v53

    .end local v53    # "in":Ljava/io/InputStream;
    .restart local v52    # "in":Ljava/io/InputStream;
    goto/16 :goto_11

    .line 4964
    .end local v52    # "in":Ljava/io/InputStream;
    .restart local v53    # "in":Ljava/io/InputStream;
    :catch_16
    move-exception v31

    move-object/from16 v52, v53

    .end local v53    # "in":Ljava/io/InputStream;
    .restart local v52    # "in":Ljava/io/InputStream;
    goto/16 :goto_10

    .line 4650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_a
        :pswitch_b
        :pswitch_1b
        :pswitch_8
        :pswitch_20
        :pswitch_21
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_22
        :pswitch_10
        :pswitch_24
        :pswitch_12
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_11
        :pswitch_2
        :pswitch_29
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_14
    .end packed-switch
.end method
