.class public Lmf/org/apache/xml/resolver/apps/XParseError;
.super Ljava/lang/Object;
.source "XParseError.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# instance fields
.field private baseURI:Ljava/lang/String;

.field private errorCount:I

.field private fatalCount:I

.field private maxMessages:I

.field private showErrors:Z

.field private showWarnings:Z

.field private warningCount:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 3
    .param p1, "errors"    # Z
    .param p2, "warnings"    # Z

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->showErrors:Z

    .line 48
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->showWarnings:Z

    .line 51
    const/16 v1, 0xa

    iput v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->maxMessages:I

    .line 54
    iput v2, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->fatalCount:I

    .line 57
    iput v2, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    .line 60
    iput v2, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->warningCount:I

    .line 63
    const-string v1, ""

    iput-object v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->baseURI:Ljava/lang/String;

    .line 67
    iput-boolean p1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->showErrors:Z

    .line 68
    iput-boolean p2, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->showWarnings:Z

    .line 71
    :try_start_0
    const-string v1, "basename"

    invoke-static {v1}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 72
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->baseURI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private message(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 130
    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->baseURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->baseURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    if-lez v1, :cond_1

    .line 142
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 145
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 105
    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    .line 106
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->showErrors:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    iget v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->warningCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->maxMessages:I

    if-ge v0, v1, :cond_0

    .line 107
    const-string v0, "Error"

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xml/resolver/apps/XParseError;->message(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 109
    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 113
    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    .line 114
    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->fatalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->fatalCount:I

    .line 115
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->showErrors:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    iget v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->warningCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->maxMessages:I

    if-ge v0, v1, :cond_0

    .line 116
    const-string v0, "Fatal error"

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xml/resolver/apps/XParseError;->message(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 118
    :cond_0
    return-void
.end method

.method public getErrorCount()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    return v0
.end method

.method public getFatalCount()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->fatalCount:I

    return v0
.end method

.method public getMaxMessages()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->maxMessages:I

    return v0
.end method

.method public getWarningCount()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->warningCount:I

    return v0
.end method

.method public setMaxMessages(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 100
    iput p1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->maxMessages:I

    .line 101
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "exception"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 122
    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->warningCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->warningCount:I

    .line 123
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->showWarnings:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->errorCount:I

    iget v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->warningCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xml/resolver/apps/XParseError;->maxMessages:I

    if-ge v0, v1, :cond_0

    .line 124
    const-string v0, "Warning"

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xml/resolver/apps/XParseError;->message(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 126
    :cond_0
    return-void
.end method
