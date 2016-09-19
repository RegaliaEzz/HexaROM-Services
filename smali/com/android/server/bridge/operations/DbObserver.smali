.class public Lcom/android/server/bridge/operations/DbObserver;
.super Ljava/lang/Object;
.source "DbObserver.java"


# static fields
.field public static final ACCOUNT_TYPE_KNOX_STR:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field public static final ACCOUNT_TYPE_STR:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field public static final CALENDAR_EVENT_URI:Landroid/net/Uri;

.field public static final CALENDAR_TASK_URI:Landroid/net/Uri;

.field private static final CON_RAW_CONTACTS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DELAY_IN_MILLISECONDS:J

.field calendarEventObserver:Landroid/database/ContentObserver;

.field calendarTaskObserver:Landroid/database/ContentObserver;

.field private contact_last_synced_timeStamp:J

.field mCalendarRunnable:Ljava/lang/Runnable;

.field mContactRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRCPManager:Landroid/os/RCPManager;

.field private mUserId:I

.field private no_of_contact_last_synced:I

.field rawContactObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CON_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 31
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_EVENT_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.android.calendar/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_TASK_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mUserId"    # I

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Landroid/os/RCPManager;

    .line 39
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->DELAY_IN_MILLISECONDS:J

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bridge/operations/DbObserver;->no_of_contact_last_synced:I

    .line 52
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/DbObserver$1;-><init>(Lcom/android/server/bridge/operations/DbObserver;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/DbObserver$2;-><init>(Lcom/android/server/bridge/operations/DbObserver;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$3;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    .line 112
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$4;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    .line 133
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$5;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    .line 46
    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    .line 49
    const-string/jumbo v0, "rcp"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Landroid/os/RCPManager;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/bridge/operations/DbObserver;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getRecentlyUpdateRawContactIDList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getNoOfRawContacts()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/server/bridge/operations/DbObserver;->no_of_contact_last_synced:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/bridge/operations/DbObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/android/server/bridge/operations/DbObserver;->no_of_contact_last_synced:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/bridge/operations/DbObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/RCPManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Landroid/os/RCPManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/bridge/operations/DbObserver;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/server/bridge/operations/DbObserver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/bridge/operations/DbObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->startCalendarSync()V

    return-void
.end method

.method private getNoOfRawContacts()I
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 276
    const/4 v7, 0x0

    .line 277
    .local v7, "mCount":I
    const/4 v9, 0x0

    .line 278
    .local v9, "mCursor":Landroid/database/Cursor;
    const-string v3, "account_type<> ? AND account_type NOT LIKE ? AND deleted=?"

    .line 281
    .local v3, "mSelection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    aput-object v0, v4, v1

    const-string/jumbo v0, "vnd.sec.contact.phone_knox%"

    aput-object v0, v4, v2

    const/4 v0, 0x2

    const-string v1, "0"

    aput-object v1, v4, v0

    .line 286
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CON_RAW_CONTACTS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "_id"

    aput-object v10, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 291
    if-eqz v9, :cond_0

    .line 292
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Of Raw Contacts  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , in User : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 299
    :cond_0
    if-eqz v9, :cond_1

    .line 300
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    move v8, v7

    .line 301
    .end local v7    # "mCount":I
    .local v8, "mCount":I
    :goto_0
    return v8

    .line 296
    .end local v8    # "mCount":I
    .restart local v7    # "mCount":I
    :catch_0
    move-exception v6

    .line 297
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-eqz v9, :cond_2

    .line 300
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v7

    .line 301
    .end local v7    # "mCount":I
    .restart local v8    # "mCount":I
    goto :goto_0

    .line 299
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "mCount":I
    .restart local v7    # "mCount":I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 300
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v7

    .line 301
    .end local v7    # "mCount":I
    .restart local v8    # "mCount":I
    goto :goto_0
.end method

.method private getRecentlyUpdateRawContactIDList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRecentlyUpdateRawContactIDList() from User :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , contact_last_synced_timeStamp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v12, p0, Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v8, 0x0

    .line 236
    .local v8, "mCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 239
    .local v9, "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    const-string v3, "account_type<>? AND account_type NOT LIKE ? AND contact_id IN (SELECT _id FROM contacts WHERE contact_last_updated_timestamp > ? )"

    .line 243
    .local v3, "mSelection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "vnd.sec.contact.phone_personal"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "vnd.sec.contact.phone_knox%"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget-wide v12, p0, Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 247
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRecentlyUpdateRawContactIDList() from User :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , current time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "_id"

    aput-object v11, v2, v5

    const-string v5, "_id ASC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 255
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCursor.getCount()  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 259
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 258
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 262
    :cond_0
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRawContactIDList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v10

    .line 267
    .end local v7    # "i":I
    .end local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v8, :cond_2

    .line 268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v10, v9

    .line 270
    .end local v3    # "mSelection":Ljava/lang/String;
    .end local v4    # "mSelectionArgs":[Ljava/lang/String;
    .end local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    return-object v10

    .line 264
    .end local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    .line 265
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    if-eqz v8, :cond_3

    .line 268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v9

    .line 270
    .end local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 267
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_4

    .line 268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v9

    .line 270
    .end local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 267
    .restart local v3    # "mSelection":Ljava/lang/String;
    .restart local v4    # "mSelectionArgs":[Ljava/lang/String;
    .restart local v7    # "i":I
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_3

    .line 264
    .end local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v6

    move-object v9, v10

    .end local v10    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "mRawContactIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method private registerCalendarObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 217
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCalendarObserver, mUserID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_EVENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 222
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_TASK_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 224
    return-void
.end method

.method private registerContactObserver()V
    .locals 5

    .prologue
    .line 203
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerContactObserver, mUserID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CON_RAW_CONTACTS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J

    .line 207
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerContactObserver, contact_last_synced_timeStamp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/bridge/operations/DbObserver;->contact_last_synced_timeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->getNoOfRawContacts()I

    move-result v0

    iput v0, p0, Lcom/android/server/bridge/operations/DbObserver;->no_of_contact_last_synced:I

    .line 209
    return-void
.end method

.method private startCalendarSync()V
    .locals 6

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unRegisterCalendarObserver()V
    .locals 3

    .prologue
    .line 227
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterCalendarObserver, mUserID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 231
    return-void
.end method

.method private unRegisterContactObserver()V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterContactObserver, mUserID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 214
    return-void
.end method


# virtual methods
.method public registerObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "mSyncerName"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "Contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->registerContactObserver()V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v0, "Calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->registerCalendarObserver()V

    goto :goto_0
.end method

.method public unRegisterObserver(Ljava/lang/String;)V
    .locals 1
    .param p1, "mSyncerName"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v0, "Contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterContactObserver()V

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v0, "Calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterCalendarObserver()V

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterContactObserver()V

    .line 198
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterCalendarObserver()V

    goto :goto_0
.end method
