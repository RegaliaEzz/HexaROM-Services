.class Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DefaultValidationErrorHandler.java"


# static fields
.field private static ERROR_COUNT_LIMIT:I


# instance fields
.field private errorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xa

    sput v0, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;->ERROR_COUNT_LIMIT:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    .line 28
    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 34
    iget v2, p0, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    sget v3, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;->ERROR_COUNT_LIMIT:I

    if-lt v2, v3, :cond_0

    .line 55
    :goto_0
    return-void

    .line 37
    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    if-nez v2, :cond_1

    .line 39
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Warning: validation was turned on but an org.xml.sax.ErrorHandler was not"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "set, which is probably not what is desired.  Parser will use a default"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ErrorHandler to print the first "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    sget v4, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;->ERROR_COUNT_LIMIT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errors.  Please call"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "the \'setErrorHandler\' method to fix this."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "systemId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 48
    const-string v1, "null"

    .line 50
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: URI="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    const-string v3, " Line="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    iget v2, p0, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;->errorCount:I

    goto :goto_0
.end method
