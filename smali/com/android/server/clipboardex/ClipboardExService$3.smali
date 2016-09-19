.class Lcom/android/server/clipboardex/ClipboardExService$3;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/clipboardex/ClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;

.field final synthetic val$addItem:Landroid/sec/clipboard/data/ClipboardData;

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;

.field final synthetic val$format:I


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;ILandroid/sec/clipboard/data/ClipboardData;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$addItem:Landroid/sec/clipboard/data/ClipboardData;

    iput p3, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$format:I

    iput-object p4, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 1301
    const/4 v7, 0x0

    .line 1302
    .local v7, "thumFullPath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$addItem:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$addItem:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_1

    .line 1303
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$addItem:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1304
    .local v3, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v2

    .line 1305
    .local v2, "firstImagePath":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1306
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$1200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1307
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->access$1200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12, v3}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;

    move-result-object v7

    .line 1308
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;
    invoke-static {v10, v13}, Lcom/android/server/clipboardex/ClipboardExService;->access$1202(Lcom/android/server/clipboardex/ClipboardExService;Landroid/content/Context;)Landroid/content/Context;

    .line 1312
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 1313
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$addItem:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v10, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    invoke-virtual {v10, v7}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setFirstImgPath(Ljava/lang/String;)Z

    .line 1318
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_1
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$addItem:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v10, v12}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1319
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v12

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    invoke-static {v10, v12}, Lcom/android/server/clipboardex/ClipboardExService;->access$1400(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;)V

    .line 1320
    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v10}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    # setter for: Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    invoke-static {v12, v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    .line 1321
    const-string v10, "ClipboardExService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add success && KNOX_PASTE_FLAG is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z
    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->access$400(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_2
    :goto_2
    iget v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$format:I

    packed-switch v10, :pswitch_data_0

    .line 1351
    :goto_3
    if-eqz v7, :cond_3

    .line 1352
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1353
    .local v0, "deleteFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/clipboard/temp/"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v5, "pasteFile":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1356
    const-string v10, "ClipboardExService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No target file...thumFullPath : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    .end local v0    # "deleteFile":Ljava/io/File;
    .end local v5    # "pasteFile":Ljava/io/File;
    :cond_3
    :goto_4
    return-void

    .line 1309
    .restart local v2    # "firstImagePath":Ljava/lang/String;
    .restart local v3    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_4
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1310
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # getter for: Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/clipboardex/ClipboardExService;->access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12, v3}, Landroid/sec/clipboard/util/FileHelper;->createThumnailFromData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_5
    move v10, v11

    .line 1320
    goto :goto_1

    .line 1323
    :cond_6
    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 1324
    const-string v10, "ClipboardExService"

    const-string v11, "Failed to add data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1331
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1332
    .local v8, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1333
    .local v4, "imagePath":Ljava/lang/String;
    const-string v1, ""

    .line 1334
    .local v1, "extraFilePath":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1335
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1337
    :cond_7
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v4, v1}, Lcom/android/server/clipboardex/ClipboardExService;->access$1500(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1340
    .end local v1    # "extraFilePath":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v8    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1341
    .local v9, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v6

    .line 1342
    .local v6, "previewImagePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v6, v13}, Lcom/android/server/clipboardex/ClipboardExService;->access$1500(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1345
    .end local v6    # "previewImagePath":Ljava/lang/String;
    .end local v9    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1346
    .restart local v3    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v2

    .line 1347
    .restart local v2    # "firstImagePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/clipboardex/ClipboardExService$3;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    # invokes: Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v2, v13}, Lcom/android/server/clipboardex/ClipboardExService;->access$1500(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1358
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    .restart local v0    # "deleteFile":Ljava/io/File;
    .restart local v5    # "pasteFile":Ljava/io/File;
    :cond_8
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1359
    const-string v10, "ClipboardExService"

    const-string v11, "Temp preview file of html item will be deleted"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    goto/16 :goto_4

    .line 1329
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
