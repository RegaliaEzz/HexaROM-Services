.class Lcom/android/server/power/ShutdownThread$Slog;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Slog"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static delayDumpRaunnable:Ljava/lang/Runnable;

.field private static delayLogLooper:Landroid/os/HandlerThread;

.field private static handler:Lcom/android/server/power/ShutdownThread$Slog;

.field private static handlerLock:Ljava/lang/Object;

.field private static lastLog:Ljava/lang/String;

.field private static logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

.field private static queuePoint:I

.field private static queueState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1970
    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    .line 1971
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    .line 1973
    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    .line 1974
    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "l"    # Landroid/os/Looper;

    .prologue
    .line 1981
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1982
    return-void
.end method

.method static synthetic access$1802(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 1968
    sput-object p0, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static cancelHandler()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2055
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->stopState()V

    .line 2056
    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    .line 2057
    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    .line 2058
    return-void
.end method

.method public static closeLogFileWriter()V
    .locals 3

    .prologue
    .line 2112
    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v0, :cond_0

    .line 2116
    const-string v0, "ShutdownDelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logFileWriter saveAndClose logFileWriter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "logFileWriter saveAndClose"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->saveAndClose()V

    .line 2119
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    goto :goto_0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2209
    const/4 v1, -0x1

    .line 2211
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2212
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2216
    :goto_0
    return v1

    .line 2213
    :catch_0
    move-exception v0

    .line 2214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2154
    const/4 v1, -0x1

    .line 2156
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2157
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    :goto_0
    return v1

    .line 2158
    :catch_0
    move-exception v0

    .line 2159
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2165
    const/4 v1, -0x1

    .line 2167
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 2168
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :goto_0
    return v1

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2176
    const/4 v1, -0x1

    .line 2178
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2179
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2183
    :goto_0
    return v1

    .line 2180
    :catch_0
    move-exception v0

    .line 2181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static onview(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    .line 2124
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2125
    .local v1, "returnValue":I
    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2200()Lcom/android/server/power/ShutdownDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2139
    :cond_0
    :goto_0
    return v1

    .line 2128
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2129
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2130
    .local v0, "oCalendar":Ljava/util/Calendar;
    const-string v3, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x6

    aput-object p0, v4, v5

    const/4 v5, 0x7

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    # getter for: Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2200()Lcom/android/server/power/ShutdownDialog;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/ShutdownDialog;->appendTextLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openLogFileWriter()V
    .locals 4

    .prologue
    .line 2101
    const-string/jumbo v1, "sys.shutdownprofiler"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2102
    .local v0, "enabled":Ljava/lang/String;
    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2109
    :cond_0
    :goto_0
    return-void

    .line 2105
    :cond_1
    const-string v1, "ShutdownDelay"

    const-string v2, "Shutdown logFileWriter start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-nez v1, :cond_0

    .line 2107
    new-instance v1, Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v2, "/data/log/"

    const-string/jumbo v3, "shutdown_profile"

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/ShutdownThread$LogFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    goto :goto_0
.end method

.method private static setMessage(Ljava/lang/String;)V
    .locals 11
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 2002
    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2003
    :try_start_0
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v8, :cond_1

    .line 2004
    :cond_0
    monitor-exit v3

    .line 2041
    :goto_0
    return-void

    .line 2006
    :cond_1
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->removeMessages(I)V

    .line 2007
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v4, 0x1

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->sendEmptyMessageDelayed(IJ)Z

    .line 2008
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2010
    const-string v2, "ShutdownDelay"

    const-string/jumbo v3, "duplicate log string."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2008
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2014
    :cond_2
    sput-object p0, Lcom/android/server/power/ShutdownThread$Slog;->lastLog:Ljava/lang/String;

    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@delay, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2020
    .local v0, "oCalendar":Ljava/util/Calendar;
    const-string v2, "%02d-%02d %02d:%02d:%02d : "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    if-eqz v2, :cond_3

    .line 2028
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->logFileWriter:Lcom/android/server/power/ShutdownThread$LogFileWriter;

    const-string v3, "ShutdownThread"

    invoke-virtual {v2, v3, p0}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_4

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    .line 2032
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    :goto_1
    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    monitor-enter v3

    .line 2038
    :try_start_2
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v4, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2039
    sget v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/lit8 v2, v2, 0x1

    sget-object v4, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v2, v4

    sput v2, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    .line 2040
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 2034
    :cond_4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static startState()V
    .locals 4

    .prologue
    .line 2061
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2062
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ShutdownDelay"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    .line 2063
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2065
    :cond_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-nez v0, :cond_1

    .line 2066
    const-string v0, "ShutdownDelay"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    new-instance v0, Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayLogLooper:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    .line 2068
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    .line 2069
    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    .line 2073
    :goto_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->sendEmptyMessage(I)Z

    .line 2074
    new-instance v0, Lcom/android/server/power/ShutdownThread$Slog$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$Slog$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    .line 2093
    const-string/jumbo v0, "recovery"

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2094
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2098
    :goto_1
    return-void

    .line 2071
    :cond_1
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "startstate again"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2096
    :cond_2
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public static stopState()V
    .locals 3

    .prologue
    .line 2044
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 2047
    :cond_1
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "no more delay message"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2049
    :try_start_0
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->removeMessages(I)V

    .line 2050
    sget-object v0, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->removeMessages(I)V

    .line 2051
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2143
    const/4 v1, -0x1

    .line 2145
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2146
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2150
    :goto_0
    return v1

    .line 2147
    :catch_0
    move-exception v0

    .line 2148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2187
    const/4 v1, -0x1

    .line 2189
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2190
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2194
    :goto_0
    return v1

    .line 2191
    :catch_0
    move-exception v0

    .line 2192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2198
    const/4 v1, -0x1

    .line 2200
    .local v1, "rtn":I
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 2201
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread$Slog;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2205
    :goto_0
    return v1

    .line 2202
    :catch_0
    move-exception v0

    .line 2203
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1986
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->handler:Lcom/android/server/power/ShutdownThread$Slog;

    if-nez v1, :cond_1

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    sget-object v2, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    monitor-enter v2

    .line 1990
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1991
    sget-object v1, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v3, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    .line 1992
    const-string v1, "ShutdownDelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    sget v5, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_2
    sget v1, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    add-int/lit8 v1, v1, 0x1

    sget-object v3, Lcom/android/server/power/ShutdownThread$Slog;->queueState:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v1, v3

    sput v1, Lcom/android/server/power/ShutdownThread$Slog;->queuePoint:I

    .line 1990
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1996
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1996
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
