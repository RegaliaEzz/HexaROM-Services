.class public final Lmf/org/apache/xerces/stax/events/CommentImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "CommentImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/Comment;


# instance fields
.field private final fText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "location"    # Lmf/javax/xml/stream/Location;

    .prologue
    .line 46
    const/4 v0, 0x5

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    .line 47
    if-eqz p1, :cond_0

    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/CommentImpl;->fText:Ljava/lang/String;

    .line 48
    return-void

    .line 47
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/CommentImpl;->fText:Ljava/lang/String;

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    const-string v1, "<!--"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/CommentImpl;->fText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 61
    const-string v1, "-->"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
