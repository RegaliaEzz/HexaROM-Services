.class public Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLScanner;
.source "XMLDTDScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/XMLEntityHandler;


# static fields
.field private static final DEBUG_SCANNER_STATE:Z = false

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x0

.field protected static final SCANNER_STATE_MARKUP_DECL:I = 0x2

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x1


# instance fields
.field private fContentDepth:I

.field private fContentStack:[I

.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field private fEnumeration:[Ljava/lang/String;

.field private fEnumerationCount:I

.field private fExtEntityDepth:I

.field private final fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fIncludeSectDepth:I

.field private final fLiteral:Lmf/org/apache/xerces/xni/XMLString;

.field private final fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

.field private fMarkUpDepth:I

.field private fPEDepth:I

.field private fPEReport:[Z

.field private fPEStack:[I

.field protected fScannerState:I

.field protected fSeenExternalDTD:Z

.field protected fSeenPEReferences:Z

.field protected fStandalone:Z

.field private fStartDTDCalled:Z

.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 87
    new-array v0, v3, [Ljava/lang/String;

    .line 88
    const-string v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v4

    .line 89
    const-string v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v1, v0, v2

    .line 87
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    .line 93
    new-array v0, v3, [Ljava/lang/Boolean;

    .line 95
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 93
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    .line 99
    new-array v0, v5, [Ljava/lang/String;

    .line 100
    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    .line 101
    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v2

    .line 102
    const-string v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v3

    .line 99
    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    .line 106
    new-array v0, v5, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 210
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    .line 152
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    .line 158
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    .line 162
    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 182
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 185
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 188
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 191
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    .line 194
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    .line 197
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 203
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 210
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 2
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "errorReporter"    # Lmf/org/apache/xerces/impl/XMLErrorReporter;
    .param p3, "entityManager"    # Lmf/org/apache/xerces/impl/XMLEntityManager;

    .prologue
    const/4 v1, 0x5

    .line 213
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    .line 152
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    .line 158
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    .line 162
    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 182
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 185
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 188
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 191
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    .line 194
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    .line 197
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 203
    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 215
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 216
    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 217
    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 218
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p3, v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method private final ensureEnumerationSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 2093
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, p1, :cond_0

    .line 2094
    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 2095
    .local v0, "newEnum":[Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2096
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    .line 2098
    .end local v0    # "newEnum":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static getScannerStateName(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "??? ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2103
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 2104
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 2105
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 2106
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 2107
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    .line 2109
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    .line 2110
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    .line 2111
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    .line 2114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    .line 2115
    return-void
.end method

.method private final peekReportEntity()Z
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method private final popContentStack()I
    .locals 2

    .prologue
    .line 2056
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final popPEStack()I
    .locals 2

    .prologue
    .line 2080
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final pushContentStack(I)V
    .locals 4
    .param p1, "c"    # I

    .prologue
    const/4 v3, 0x0

    .line 2047
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    array-length v1, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    if-ne v1, v2, :cond_0

    .line 2048
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 2049
    .local v0, "newStack":[I
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2050
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    .line 2052
    .end local v0    # "newStack":[I
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    aput p1, v1, v2

    .line 2053
    return-void
.end method

.method private final pushPEStack(IZ)V
    .locals 5
    .param p1, "depth"    # I
    .param p2, "report"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2064
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    array-length v2, v2

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v2, v3, :cond_0

    .line 2065
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    .line 2066
    .local v1, "newIntStack":[I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2067
    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    .line 2069
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Z

    .line 2070
    .local v0, "newBooleanStack":[Z
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2071
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    .line 2074
    .end local v0    # "newBooleanStack":[Z
    .end local v1    # "newIntStack":[I
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aput-boolean p2, v2, v3

    .line 2075
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aput p1, v2, v3

    .line 2076
    return-void
.end method

.method private final scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "elName"    # Ljava/lang/String;
    .param p2, "atName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x28

    const/16 v10, 0x7c

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1223
    const/4 v3, 0x0

    .line 1224
    .local v3, "type":Ljava/lang/String;
    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    .line 1230
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "CDATA"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1231
    const-string v3, "CDATA"

    .line 1324
    :goto_0
    return-object v3

    .line 1233
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "IDREFS"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1234
    const-string v3, "IDREFS"

    .line 1235
    goto :goto_0

    .line 1236
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "IDREF"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1237
    const-string v3, "IDREF"

    .line 1238
    goto :goto_0

    .line 1239
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "ID"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1240
    const-string v3, "ID"

    .line 1241
    goto :goto_0

    .line 1242
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "ENTITY"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1243
    const-string v3, "ENTITY"

    .line 1244
    goto :goto_0

    .line 1245
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "ENTITIES"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1246
    const-string v3, "ENTITIES"

    .line 1247
    goto :goto_0

    .line 1248
    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "NMTOKENS"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1249
    const-string v3, "NMTOKENS"

    .line 1250
    goto :goto_0

    .line 1251
    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "NMTOKEN"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1252
    const-string v3, "NMTOKEN"

    .line 1253
    goto :goto_0

    .line 1254
    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "NOTATION"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1255
    const-string v3, "NOTATION"

    .line 1257
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    :goto_1
    invoke-direct {p0, v6, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1258
    const-string v4, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    .line 1259
    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    .line 1258
    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1262
    :cond_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    .line 1263
    .local v1, "c":I
    if-eq v1, v8, :cond_9

    .line 1264
    const-string v4, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    .line 1265
    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    .line 1264
    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1267
    :cond_9
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1269
    :cond_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v5

    :goto_2
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1270
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 1271
    .local v0, "aName":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 1272
    const-string v4, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    .line 1273
    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    .line 1272
    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipInvalidEnumerationValue()I

    move-result v1

    .line 1275
    if-ne v1, v10, :cond_b

    .line 1284
    :goto_3
    if-eq v1, v10, :cond_a

    .line 1285
    :cond_b
    const/16 v4, 0x29

    if-eq v1, v4, :cond_c

    .line 1286
    const-string v4, "NotationTypeUnterminated"

    .line 1287
    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    .line 1286
    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1289
    :cond_c
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_0

    .end local v0    # "aName":Ljava/lang/String;
    .end local v1    # "c":I
    :cond_d
    move v4, v6

    .line 1257
    goto :goto_1

    .restart local v1    # "c":I
    :cond_e
    move v4, v6

    .line 1269
    goto :goto_2

    .line 1280
    .restart local v0    # "aName":Ljava/lang/String;
    :cond_f
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 1281
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v0, v4, v7

    .line 1282
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    :goto_4
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1283
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    goto :goto_3

    :cond_10
    move v4, v6

    .line 1282
    goto :goto_4

    .line 1292
    .end local v0    # "aName":Ljava/lang/String;
    .end local v1    # "c":I
    :cond_11
    const-string v3, "ENUMERATION"

    .line 1294
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    .line 1295
    .restart local v1    # "c":I
    if-eq v1, v8, :cond_12

    .line 1297
    const-string v4, "AttTypeRequiredInAttDef"

    .line 1298
    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    .line 1297
    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    :cond_12
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1302
    :cond_13
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v5

    :goto_5
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1303
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNmtoken()Ljava/lang/String;

    move-result-object v2

    .line 1304
    .local v2, "token":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 1305
    const-string v4, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    .line 1306
    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    .line 1305
    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipInvalidEnumerationValue()I

    move-result v1

    .line 1308
    if-ne v1, v10, :cond_14

    .line 1317
    :goto_6
    if-eq v1, v10, :cond_13

    .line 1318
    :cond_14
    const/16 v4, 0x29

    if-eq v1, v4, :cond_15

    .line 1319
    const-string v4, "EnumerationUnterminated"

    .line 1320
    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    .line 1319
    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1322
    :cond_15
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_0

    .end local v2    # "token":Ljava/lang/String;
    :cond_16
    move v4, v6

    .line 1302
    goto :goto_5

    .line 1313
    .restart local v2    # "token":Ljava/lang/String;
    :cond_17
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 1314
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v2, v4, v7

    .line 1315
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v5

    :goto_7
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1316
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    goto :goto_6

    :cond_18
    move v4, v6

    .line 1315
    goto :goto_7
.end method

.method private final scanChildren(Ljava/lang/String;)V
    .locals 11
    .param p1, "elName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x7c

    const/16 v9, 0x2c

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 959
    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    .line 960
    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushContentStack(I)V

    .line 961
    const/4 v2, 0x0

    .line 964
    .local v2, "currentOp":I
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v7, 0x28

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 965
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 966
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x28

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 968
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_0

    .line 969
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 972
    :cond_0
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushContentStack(I)V

    .line 973
    const/4 v2, 0x0

    .line 974
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    .line 977
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 978
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "childName":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 980
    const-string v4, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    .line 981
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    .line 980
    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    :goto_3
    return-void

    .end local v1    # "childName":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 977
    goto :goto_2

    .line 985
    .restart local v1    # "childName":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_5

    .line 986
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v1, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 988
    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 989
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 990
    .local v0, "c":I
    const/16 v4, 0x3f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_8

    .line 992
    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_7

    .line 994
    const/16 v4, 0x3f

    if-ne v0, v4, :cond_a

    .line 995
    const/4 v3, 0x2

    .line 1003
    .local v3, "oc":S
    :goto_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1005
    .end local v3    # "oc":S
    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1006
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v7, v0

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1009
    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_5
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1010
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 1011
    if-ne v0, v9, :cond_d

    if-eq v2, v10, :cond_d

    .line 1012
    move v2, v0

    .line 1014
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_9

    .line 1015
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v6, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1018
    :cond_9
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1019
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1083
    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v5

    :goto_7
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_0

    .line 997
    :cond_a
    const/16 v4, 0x2a

    if-ne v0, v4, :cond_b

    .line 998
    const/4 v3, 0x3

    .line 999
    .restart local v3    # "oc":S
    goto :goto_4

    .line 1001
    .end local v3    # "oc":S
    :cond_b
    const/4 v3, 0x4

    .restart local v3    # "oc":S
    goto :goto_4

    .end local v3    # "oc":S
    :cond_c
    move v4, v6

    .line 1009
    goto :goto_5

    .line 1022
    :cond_d
    if-ne v0, v10, :cond_f

    if-eq v2, v9, :cond_f

    .line 1023
    move v2, v0

    .line 1025
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_e

    .line 1026
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v5, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1029
    :cond_e
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1030
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_6

    .line 1033
    :cond_f
    const/16 v4, 0x29

    if-eq v0, v4, :cond_10

    .line 1034
    const-string v4, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    .line 1035
    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, v5

    .line 1034
    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    :cond_10
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_11

    .line 1039
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1042
    :cond_11
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->popContentStack()I

    move-result v2

    .line 1049
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, ")?"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1050
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")?"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1052
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    .line 1053
    const/4 v3, 0x2

    .line 1054
    .restart local v3    # "oc":S
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1078
    .end local v3    # "oc":S
    :cond_12
    :goto_8
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1079
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    if-nez v4, :cond_8

    goto/16 :goto_3

    .line 1057
    :cond_13
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, ")+"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1058
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")+"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1060
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    .line 1061
    const/4 v3, 0x4

    .line 1062
    .restart local v3    # "oc":S
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    .line 1065
    .end local v3    # "oc":S
    :cond_14
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, ")*"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1066
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")*"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1068
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    .line 1069
    const/4 v3, 0x3

    .line 1070
    .restart local v3    # "oc":S
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    .line 1075
    .end local v3    # "oc":S
    :cond_15
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1076
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x29

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_8

    :cond_16
    move v4, v6

    .line 1083
    goto/16 :goto_7
.end method

.method private final scanConditionalSect(I)V
    .locals 12
    .param p1, "currPEDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5b

    const/16 v10, 0x5d

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1782
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1783
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1785
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "INCLUDE"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1786
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1787
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_0

    .line 1788
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1789
    const-string v6, "INVALID_PE_IN_CONDITIONAL"

    .line 1790
    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v8, v7, v3

    .line 1788
    invoke-virtual {v2, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1794
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1795
    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1798
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_2

    .line 1799
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v3, v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1802
    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1804
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1899
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v4

    .line 1783
    goto :goto_0

    :cond_5
    move v2, v4

    .line 1786
    goto :goto_1

    .line 1806
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "IGNORE"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1807
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_3
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1808
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-eq p1, v2, :cond_7

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_7

    .line 1809
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 1810
    const-string v6, "INVALID_PE_IN_CONDITIONAL"

    .line 1811
    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v8, v7, v3

    .line 1809
    invoke-virtual {v2, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 1815
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_8

    .line 1816
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v4, v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 1819
    :cond_8
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1820
    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1822
    :cond_9
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1823
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1824
    .local v1, "initialDepth":I
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    .line 1825
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1828
    :cond_a
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1829
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_b

    .line 1830
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1836
    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x21

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1837
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1838
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_c

    .line 1839
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v4, "!["

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1841
    :cond_c
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    goto :goto_4

    .end local v1    # "initialDepth":I
    :cond_d
    move v2, v4

    .line 1807
    goto :goto_3

    .line 1843
    .restart local v1    # "initialDepth":I
    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    .line 1844
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v4, "!"

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    .line 1849
    :cond_f
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1850
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_10

    .line 1851
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1856
    :cond_10
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1857
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_11

    .line 1858
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1860
    :cond_11
    :goto_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1866
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1867
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-ne v2, v1, :cond_13

    .line 1868
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1870
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_3

    .line 1871
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    .line 1872
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v5, v5, -0x2

    .line 1871
    invoke-virtual {v2, v4, v3, v5}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 1873
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v2, v3, v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1874
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    .line 1862
    :cond_12
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_11

    .line 1863
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    .line 1877
    :cond_13
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    .line 1878
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    .line 1884
    :cond_14
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    .line 1885
    .local v0, "c":I
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v2, :cond_15

    .line 1886
    const-string v2, "IgnoreSectUnterminated"

    invoke-virtual {p0, v2, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1889
    :cond_15
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    .line 1890
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v4, v0

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    .line 1896
    .end local v0    # "c":I
    .end local v1    # "initialDepth":I
    :cond_16
    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private final scanEntityDecl()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1392
    const/4 v7, 0x0

    .line 1393
    .local v7, "isPEDecl":Z
    const/4 v9, 0x0

    .line 1394
    .local v9, "sawPERef":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1395
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1396
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1397
    const/4 v7, 0x0

    .line 1432
    :goto_0
    if-eqz v9, :cond_1

    .line 1434
    :cond_0
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v8

    .line 1435
    .local v8, "peName":Ljava/lang/String;
    if-nez v8, :cond_16

    .line 1436
    const-string v0, "NameRequiredInPEReference"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1445
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 1446
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1459
    .end local v8    # "peName":Ljava/lang/String;
    :cond_1
    :goto_3
    const/4 v1, 0x0

    .line 1460
    .local v1, "name":Ljava/lang/String;
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v0, :cond_1b

    .line 1461
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v1

    .line 1465
    :goto_4
    if-nez v1, :cond_2

    .line 1466
    const-string v0, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1469
    :cond_2
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1470
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    const/16 v12, 0x3a

    if-ne v0, v12, :cond_1e

    .line 1471
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1472
    new-instance v6, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v6, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    .line 1473
    .local v6, "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    const/16 v0, 0x3a

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1474
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v11

    .line 1475
    .local v11, "str":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 1476
    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1477
    :cond_3
    const-string v0, "ColonNotLegalWithNS"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1479
    const-string v0, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    .line 1480
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    .line 1479
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1489
    .end local v6    # "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    .end local v11    # "str":Ljava/lang/String;
    :cond_4
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 1490
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v3, v0, v12

    .line 1491
    .local v3, "systemId":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v2, v0, v12

    .line 1493
    .local v2, "publicId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1495
    .local v5, "notation":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v10

    .line 1496
    .local v10, "sawSpace":Z
    if-nez v7, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v12, "NDATA"

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1498
    if-nez v10, :cond_5

    .line 1499
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    .line 1500
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    .line 1499
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1504
    :cond_5
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1505
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    .line 1506
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    .line 1505
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1508
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    .line 1509
    if-nez v5, :cond_7

    .line 1510
    const-string v0, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    .line 1511
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    .line 1510
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1516
    :cond_7
    if-nez v3, :cond_8

    .line 1517
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1520
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1521
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1522
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v13, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget v13, v13, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget v14, v14, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v12, v13, v14}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1523
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v13, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget v13, v13, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget v14, v14, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v12, v13, v14}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1527
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1530
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3e

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1531
    const-string v0, "EntityDeclUnterminated"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1533
    :cond_9
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1536
    if-eqz v7, :cond_a

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "%"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1539
    :cond_a
    if-eqz v3, :cond_24

    .line 1540
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    .line 1541
    .local v4, "baseSystemId":Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 1542
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :goto_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_b

    .line 1549
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v12, 0x0

    invoke-static {v3, v4, v12}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v3, v4, v12}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    if-eqz v5, :cond_23

    .line 1551
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    .line 1552
    const/4 v13, 0x0

    .line 1551
    invoke-interface {v0, v1, v12, v5, v13}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1565
    .end local v4    # "baseSystemId":Ljava/lang/String;
    :cond_b
    :goto_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1567
    return-void

    .line 1399
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "publicId":Ljava/lang/String;
    .end local v3    # "systemId":Ljava/lang/String;
    .end local v5    # "notation":Ljava/lang/String;
    .end local v10    # "sawSpace":Z
    :cond_c
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1401
    const/4 v7, 0x1

    .line 1402
    goto/16 :goto_0

    .line 1399
    :cond_d
    const/4 v0, 0x1

    goto :goto_d

    .line 1403
    :cond_e
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1404
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    .line 1405
    const/4 v12, 0x0

    .line 1404
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    const/4 v7, 0x1

    .line 1407
    goto/16 :goto_0

    .line 1408
    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    const/16 v12, 0x25

    if-ne v0, v12, :cond_11

    .line 1410
    const/4 v12, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_e
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1411
    const/4 v7, 0x1

    .line 1412
    goto/16 :goto_0

    .line 1410
    :cond_10
    const/4 v0, 0x1

    goto :goto_e

    .line 1414
    :cond_11
    const/4 v9, 0x1

    .line 1416
    goto/16 :goto_0

    .line 1417
    :cond_12
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1419
    :cond_13
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    .line 1420
    const/4 v12, 0x0

    .line 1419
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1421
    const/4 v7, 0x0

    .line 1422
    goto/16 :goto_0

    .line 1423
    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1425
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    .line 1426
    const/4 v12, 0x0

    .line 1425
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    const/4 v7, 0x0

    .line 1428
    goto/16 :goto_0

    .line 1430
    :cond_15
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1438
    .restart local v8    # "peName":Ljava/lang/String;
    :cond_16
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3b

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1439
    const-string v0, "SemicolonRequiredInPEReference"

    .line 1440
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    .line 1439
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1443
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1448
    :cond_18
    if-nez v7, :cond_0

    .line 1449
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    :goto_f
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1450
    const/4 v7, 0x1

    .line 1451
    goto/16 :goto_3

    .line 1449
    :cond_19
    const/4 v0, 0x1

    goto :goto_f

    .line 1453
    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    .line 1433
    goto/16 :goto_1

    .line 1463
    .end local v8    # "peName":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 1469
    :cond_1c
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1478
    .restart local v6    # "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    .restart local v11    # "str":Ljava/lang/String;
    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 1483
    .end local v6    # "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    .end local v11    # "str":Ljava/lang/String;
    :cond_1e
    const-string v0, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    .line 1484
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    .line 1483
    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1495
    .restart local v2    # "publicId":Ljava/lang/String;
    .restart local v3    # "systemId":Ljava/lang/String;
    .restart local v5    # "notation":Ljava/lang/String;
    :cond_1f
    const/4 v0, 0x1

    goto/16 :goto_8

    .line 1504
    .restart local v10    # "sawSpace":Z
    :cond_20
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1527
    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 1545
    .restart local v4    # "baseSystemId":Ljava/lang/String;
    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1555
    :cond_23
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v13, 0x0

    invoke-interface {v0, v1, v12, v13}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c

    .line 1560
    .end local v4    # "baseSystemId":Ljava/lang/String;
    :cond_24
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v12}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_b

    .line 1562
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v13, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v14, 0x0

    invoke-interface {v0, v1, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c
.end method

.method private final scanMixed(Ljava/lang/String;)V
    .locals 8
    .param p1, "elName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7c

    const/16 v6, 0x29

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 880
    const/4 v0, 0x0

    .line 882
    .local v0, "childName":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v4, "#PCDATA"

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 887
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v2, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 888
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 913
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v4, ")*"

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 914
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v2, ")*"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 916
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_1

    .line 917
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 918
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 937
    :cond_1
    :goto_2
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 939
    return-void

    :cond_2
    move v1, v3

    .line 887
    goto :goto_0

    .line 889
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 891
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_4

    .line 892
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v2, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    .line 895
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-direct {p0, v2, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 897
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    .line 898
    if-nez v0, :cond_5

    .line 899
    const-string v1, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    .line 900
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 899
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_6

    .line 905
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v0, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 907
    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_4
    invoke-direct {p0, v2, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_1

    :cond_7
    move v1, v3

    .line 895
    goto :goto_3

    :cond_8
    move v1, v3

    .line 907
    goto :goto_4

    .line 922
    :cond_9
    if-eqz v0, :cond_a

    .line 923
    const-string v1, "MixedContentUnterminated"

    .line 924
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 923
    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 926
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 927
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 929
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    .line 934
    :cond_b
    const-string v1, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    .line 935
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 934
    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private final scanNotationDecl()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1700
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1701
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    invoke-direct {p0, v7, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1702
    const-string v5, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-virtual {p0, v5, v10}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1707
    :cond_0
    const/4 v2, 0x0

    .line 1708
    .local v2, "name":Ljava/lang/String;
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v5, :cond_7

    .line 1709
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v2

    .line 1713
    :goto_1
    if-nez v2, :cond_1

    .line 1714
    const-string v5, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-virtual {p0, v5, v10}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1719
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_2
    invoke-direct {p0, v7, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1721
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    if-ne v5, v8, :cond_a

    .line 1722
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1723
    new-instance v1, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    .line 1724
    .local v1, "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1725
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1726
    const-string v5, "ColonNotLegalWithNS"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1727
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_3
    invoke-direct {p0, v7, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1735
    .end local v1    # "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    :cond_2
    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    .line 1736
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v4, v5, v6

    .line 1737
    .local v4, "systemId":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v3, v5, v7

    .line 1738
    .local v3, "publicId":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    .line 1740
    .local v0, "baseSystemId":Ljava/lang/String;
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 1741
    const-string v5, "ExternalIDorPublicIDRequired"

    .line 1742
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v6

    .line 1741
    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1746
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    :goto_5
    invoke-direct {p0, v6, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1749
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3e

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1750
    const-string v5, "NotationDeclUnterminated"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1752
    :cond_4
    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1755
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_5

    .line 1756
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v4, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v0, v6}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v5, v2, v6, v10}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1759
    :cond_5
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1761
    return-void

    .end local v0    # "baseSystemId":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "publicId":Ljava/lang/String;
    .end local v4    # "systemId":Ljava/lang/String;
    :cond_6
    move v5, v7

    .line 1701
    goto/16 :goto_0

    .line 1711
    .restart local v2    # "name":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    move v5, v7

    .line 1719
    goto/16 :goto_2

    .restart local v1    # "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    :cond_9
    move v5, v7

    .line 1727
    goto :goto_3

    .line 1729
    .end local v1    # "colonName":Lmf/org/apache/xerces/util/XMLStringBuffer;
    :cond_a
    const-string v5, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    .line 1730
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v6

    .line 1729
    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .restart local v0    # "baseSystemId":Ljava/lang/String;
    .restart local v3    # "publicId":Ljava/lang/String;
    .restart local v4    # "systemId":Ljava/lang/String;
    :cond_b
    move v5, v7

    .line 1746
    goto :goto_5
.end method

.method private skipInvalidEnumerationValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2120
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    .line 2122
    .local v0, "c":I
    const/16 v1, 0x7c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 2123
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    .line 2124
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2125
    return v0
.end method

.method private skipSeparator(ZZ)Z
    .locals 8
    .param p1, "spaceRequired"    # Z
    .param p2, "lookForPERefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x25

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2021
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    .line 2022
    .local v0, "depth":I
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v2

    .line 2023
    .local v2, "sawSpace":Z
    if-eqz p2, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2024
    :cond_0
    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v0, v5, :cond_1

    move v3, v4

    .line 2038
    :cond_1
    :goto_0
    return v3

    .line 2027
    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 2028
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2029
    const-string v5, "NameRequiredInPEReference"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2035
    :cond_3
    :goto_1
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    .line 2036
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 2037
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 2031
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2032
    const-string v5, "SemicolonRequiredInPEReference"

    .line 2033
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v4

    .line 2032
    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 530
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 534
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 539
    .local v0, "reportEntity":Z
    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 540
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->peekReportEntity()Z

    move-result v0

    .line 542
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->popPEStack()I

    move-result v1

    .line 545
    .local v1, "startMarkUpDepth":I
    if-nez v1, :cond_2

    .line 546
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-ge v1, v2, :cond_2

    .line 547
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 548
    const-string v4, "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL"

    .line 549
    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 550
    const/4 v6, 0x2

    .line 547
    invoke-virtual {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 552
    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-eq v1, v2, :cond_3

    .line 553
    const/4 v0, 0x0

    .line 554
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_3

    .line 557
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 558
    const-string v4, "ImproperDeclarationNesting"

    .line 559
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    .line 557
    invoke-virtual {v2, v3, v4, v5, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 563
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 564
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 567
    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 568
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 572
    .end local v1    # "startMarkUpDepth":I
    :cond_5
    const-string v2, "[dtd]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-eqz v2, :cond_6

    .line 574
    const-string v2, "IncludeSectUnterminated"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    :cond_6
    iput v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    .line 578
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->endExternalSubset()V

    .line 579
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_7

    .line 580
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 581
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 583
    :cond_7
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto/16 :goto_0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;

    .prologue
    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 399
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 395
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    .line 394
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 417
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 413
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    .line 412
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 362
    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLScanner;->reset()V

    .line 363
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->init()V

    .line 364
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0
    .param p1, "componentManager"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 356
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->init()V

    .line 358
    return-void
.end method

.method protected final scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 7
    .param p1, "elName"    # Ljava/lang/String;
    .param p2, "atName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "defaultVal"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p5, "nonNormalizedDefaultVal"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1348
    const/4 v6, 0x0

    .line 1349
    .local v6, "defaultType":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    .line 1350
    invoke-virtual {p4}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    .line 1351
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "#REQUIRED"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    const-string v6, "#REQUIRED"

    .line 1370
    :goto_0
    return-object v6

    .line 1354
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "#IMPLIED"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1355
    const-string v6, "#IMPLIED"

    .line 1356
    goto :goto_0

    .line 1358
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "#FIXED"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1359
    const-string v6, "#FIXED"

    .line 1361
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1362
    const-string v0, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    .line 1363
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    .line 1362
    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1367
    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-eqz v0, :cond_5

    :cond_3
    move v4, v2

    .local v4, "isVC":Z
    :goto_2
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v5, p1

    .line 1368
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    goto :goto_0

    .end local v4    # "isVC":Z
    :cond_4
    move v0, v2

    .line 1361
    goto :goto_1

    :cond_5
    move v4, v1

    .line 1367
    goto :goto_2
.end method

.method protected final scanAttlistDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 1101
    const/4 v6, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    .line 1103
    const/4 v6, 0x0

    .line 1102
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "elName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1109
    const-string v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    .line 1110
    const/4 v6, 0x0

    .line 1109
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    .line 1115
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1119
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1121
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x3e

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1124
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    .line 1125
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1127
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1195
    :goto_2
    return-void

    .line 1101
    .end local v1    # "elName":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1119
    .restart local v1    # "elName":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1131
    :cond_6
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    .line 1132
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 1131
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    :cond_7
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x3e

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1189
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_8

    .line 1190
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1192
    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    goto :goto_2

    .line 1138
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    .line 1139
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_a

    .line 1140
    const-string v0, "AttNameRequiredInAttDef"

    .line 1141
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 1140
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    :cond_a
    const/4 v6, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1145
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    .line 1146
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 1145
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    :cond_b
    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1152
    .local v3, "type":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1153
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    .line 1154
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 1153
    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    :cond_c
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    move-object v0, p0

    .line 1158
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v5

    .line 1166
    .local v5, "defaultType":Ljava/lang/String;
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_f

    .line 1167
    const/4 v4, 0x0

    .line 1168
    .local v4, "enumeration":[Ljava/lang/String;
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    if-eqz v0, :cond_d

    .line 1169
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    new-array v4, v0, [Ljava/lang/String;

    .line 1170
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    const/4 v6, 0x0

    .line 1171
    const/4 v7, 0x0

    iget v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    .line 1170
    invoke-static {v0, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1175
    :cond_d
    if-eqz v5, :cond_12

    const-string v0, "#REQUIRED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1176
    const-string v0, "#IMPLIED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1177
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 1178
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1177
    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1185
    .end local v4    # "enumeration":[Ljava/lang/String;
    :cond_f
    :goto_6
    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_3

    .line 1144
    .end local v3    # "type":Ljava/lang/String;
    .end local v5    # "defaultType":Ljava/lang/String;
    :cond_10
    const/4 v0, 0x1

    goto :goto_4

    .line 1152
    .restart local v3    # "type":Ljava/lang/String;
    :cond_11
    const/4 v0, 0x1

    goto :goto_5

    .line 1181
    .restart local v4    # "enumeration":[Ljava/lang/String;
    .restart local v5    # "defaultType":Ljava/lang/String;
    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 1182
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    .line 1181
    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_6

    .line 1185
    .end local v4    # "enumeration":[Ljava/lang/String;
    :cond_13
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected final scanComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 757
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanComment(Lmf/org/apache/xerces/util/XMLStringBuffer;)V

    .line 758
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 761
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 764
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 766
    return-void
.end method

.method public scanDTDExternalSubset(Z)Z
    .locals 4
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 261
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 262
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-ne v3, v2, :cond_2

    .line 263
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    .line 264
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    move-result v0

    .line 265
    .local v0, "textDecl":Z
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v3, :cond_1

    .line 285
    .end local v0    # "textDecl":Z
    :cond_0
    :goto_0
    return v1

    .line 271
    .restart local v0    # "textDecl":Z
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    .line 272
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    .line 273
    goto :goto_0

    .line 279
    .end local v0    # "textDecl":Z
    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    if-nez p1, :cond_2

    move v1, v2

    .line 285
    goto :goto_0
.end method

.method public scanDTDInternalSubset(ZZZ)Z
    .locals 4
    .param p1, "complete"    # Z
    .param p2, "standalone"    # Z
    .param p3, "hasExternalSubset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 313
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    .line 314
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 315
    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    .line 316
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-ne v1, v0, :cond_1

    .line 318
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 320
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    .line 323
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    .line 327
    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 329
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 330
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 333
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    .line 334
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    .line 336
    :cond_3
    if-nez p1, :cond_1

    goto :goto_0
.end method

.method protected final scanDecls(Z)Z
    .locals 9
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2d

    const/16 v7, 0x5d

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1916
    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1917
    const/4 v0, 0x1

    .line 1918
    .local v0, "again":Z
    :goto_0
    if-eqz v0, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 1999
    :cond_0
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 1919
    :cond_2
    move v0, p1

    .line 1920
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1921
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1922
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1923
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanPI()V

    .line 1997
    :cond_3
    :goto_1
    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_0

    .line 1925
    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1926
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1927
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1928
    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1931
    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanComment()V

    goto :goto_1

    .line 1934
    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ELEMENT"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1935
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanElementDecl()V

    goto :goto_1

    .line 1937
    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ATTLIST"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1938
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttlistDecl()V

    goto :goto_1

    .line 1940
    :cond_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ENTITY"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1941
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityDecl()V

    goto :goto_1

    .line 1943
    :cond_9
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "NOTATION"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1944
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanNotationDecl()V

    goto :goto_1

    .line 1946
    :cond_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1947
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1948
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanConditionalSect(I)V

    goto :goto_1

    .line 1951
    :cond_b
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1952
    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1957
    :cond_c
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 1958
    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1961
    :cond_d
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-lez v4, :cond_11

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1963
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1964
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1965
    :cond_e
    const-string v4, "IncludeSectUnterminated"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1968
    :cond_f
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_10

    .line 1969
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 1972
    :cond_10
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    .line 1973
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_1

    .line 1975
    :cond_11
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1976
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 1980
    :cond_12
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1984
    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1989
    :cond_13
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    .line 1991
    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 1994
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    .line 1995
    .local v1, "ch":I
    const/16 v4, 0x3c

    if-eq v1, v4, :cond_3

    if-eq v1, v7, :cond_3

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_1
.end method

.method protected final scanElementDecl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x28

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 781
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 782
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_0
    invoke-direct {p0, v4, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 783
    const-string v2, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-virtual {p0, v2, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 790
    const-string v2, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-virtual {p0, v2, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_1
    invoke-direct {p0, v4, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 796
    const-string v2, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    .line 797
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    .line 796
    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_3

    .line 802
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v1, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 804
    :cond_3
    const/4 v0, 0x0

    .line 805
    .local v0, "contentModel":Ljava/lang/String;
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 806
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "EMPTY"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 807
    const-string v0, "EMPTY"

    .line 809
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_4

    .line 810
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->empty(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 844
    :cond_4
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_5

    .line 845
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 848
    :cond_5
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 849
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    :goto_3
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 851
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3e

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 852
    const-string v2, "ElementDeclUnterminated"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    :cond_6
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    .line 855
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 858
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_7

    .line 859
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v1, v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 862
    :cond_7
    return-void

    .end local v0    # "contentModel":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_8
    move v2, v4

    .line 782
    goto/16 :goto_0

    .restart local v1    # "name":Ljava/lang/String;
    :cond_9
    move v2, v4

    .line 795
    goto :goto_1

    .line 813
    .restart local v0    # "contentModel":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ANY"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 814
    const-string v0, "ANY"

    .line 816
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_4

    .line 817
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->any(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    .line 821
    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 822
    const-string v2, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    .line 823
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    .line 822
    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    :cond_c
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_d

    .line 826
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 828
    :cond_d
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 829
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 830
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 831
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_4
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    .line 834
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "#PCDATA"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 835
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanMixed(Ljava/lang/String;)V

    .line 840
    :goto_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    move v2, v4

    .line 831
    goto :goto_4

    .line 838
    :cond_f
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanChildren(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    move v2, v4

    .line 849
    goto/16 :goto_3
.end method

.method protected final scanEntityValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 11
    .param p1, "value"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "nonNormalizedValue"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1584
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v6

    .line 1585
    .local v6, "quote":I
    const/16 v7, 0x27

    if-eq v6, v7, :cond_0

    const/16 v7, 0x22

    if-eq v6, v7, :cond_0

    .line 1586
    const-string v7, "OpenQuoteMissingInDecl"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1589
    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityDepth:I

    .line 1591
    .local v2, "entityDepth":I
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 1592
    .local v3, "literal":Lmf/org/apache/xerces/xni/XMLString;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    .line 1593
    .local v4, "literal2":Lmf/org/apache/xerces/xni/XMLString;
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v6, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 1594
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1595
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 1597
    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1598
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1599
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1600
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1601
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v8, "&#"

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1602
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    .line 1674
    :cond_2
    :goto_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v6, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 1675
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1676
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1677
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 1678
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    .line 1680
    :cond_3
    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1681
    invoke-virtual {p2, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    .line 1682
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1683
    const-string v7, "CloseQuoteMissingInDecl"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1685
    :cond_4
    return-void

    .line 1605
    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1606
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1607
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    .line 1608
    .local v1, "eName":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 1609
    const-string v7, "NameRequiredInReference"

    .line 1610
    const/4 v8, 0x0

    .line 1609
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1616
    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1617
    const-string v7, "SemicolonRequiredInReference"

    .line 1618
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 1617
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1613
    :cond_6
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1614
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 1621
    :cond_7
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1622
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    .line 1626
    .end local v1    # "eName":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1628
    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1629
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    .line 1630
    .local v5, "peName":Ljava/lang/String;
    if-nez v5, :cond_a

    .line 1631
    const-string v7, "NameRequiredInPEReference"

    .line 1632
    const/4 v8, 0x0

    .line 1631
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1646
    :goto_2
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    .line 1650
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    .line 1651
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_0

    .line 1634
    :cond_a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1635
    const-string v7, "SemicolonRequiredInPEReference"

    .line 1636
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 1635
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1639
    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1640
    const-string v7, "PEReferenceWithinMarkup"

    .line 1641
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 1640
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1643
    :cond_c
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 1644
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_2

    .line 1656
    .end local v5    # "peName":Ljava/lang/String;
    :cond_d
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    .line 1657
    .local v0, "c":I
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1658
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    goto/16 :goto_0

    .line 1660
    :cond_e
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isInvalidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1661
    const-string v7, "InvalidCharInLiteral"

    .line 1662
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1661
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1663
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_0

    .line 1668
    :cond_f
    if-ne v0, v6, :cond_10

    iget v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityDepth:I

    if-eq v2, v7, :cond_2

    .line 1669
    :cond_10
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1670
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 1671
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_0
.end method

.method protected final scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    .line 736
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 739
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 743
    :cond_0
    return-void
.end method

.method protected final scanTextDecl()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 669
    const/4 v2, 0x0

    .line 670
    .local v2, "textDecl":Z
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 671
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 674
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 675
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 676
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v5, "xml"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 677
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v4, :cond_3

    .line 678
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNCName(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 688
    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    .line 689
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v6, v6, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    .line 690
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    .line 688
    invoke-virtual {v4, v5, v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "target":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    .line 718
    .end local v1    # "target":Ljava/lang/String;
    :cond_0
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-boolean v8, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    .line 720
    return v2

    .line 679
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 683
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 697
    :cond_4
    const/4 v3, 0x0

    .line 698
    .local v3, "version":Ljava/lang/String;
    const/4 v0, 0x0

    .line 700
    .local v0, "encoding":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v8, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    .line 701
    const/4 v2, 0x1

    .line 702
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    .line 704
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 705
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v0, v4, v8

    .line 707
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    .line 708
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result v4

    if-nez v4, :cond_5

    .line 709
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    .line 713
    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    .line 714
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v0, v5}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2
.end method

.method protected final scanningInternalSubset()Z
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0
    .param p1, "dtdContentModelHandler"    # Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .prologue
    .line 453
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .line 454
    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    .line 430
    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .line 431
    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 2
    .param p1, "inputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 233
    if-nez p1, :cond_1

    .line 235
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 237
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    .line 242
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startDTDEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    goto :goto_0
.end method

.method protected final setScannerState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 597
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    .line 604
    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 489
    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLScanner;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 491
    const-string v1, "[dtd]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 492
    .local v0, "dtdEntity":Z
    if-eqz v0, :cond_4

    .line 494
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    if-nez v1, :cond_0

    .line 495
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 497
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 500
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startExternalSubset()V

    .line 501
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    .line 511
    :cond_2
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    if-eqz v1, :cond_3

    .line 512
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 515
    :cond_3
    return-void

    .line 503
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    .line 504
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushPEStack(IZ)V

    .line 505
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0
.end method

.method protected startPE(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "literal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 637
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    .line 638
    .local v0, "depth":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "pName":Ljava/lang/String;
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-nez v2, :cond_0

    .line 640
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    .line 641
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->notifyHasPEReferences()V

    .line 643
    :cond_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 644
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "EntityNotDeclared"

    .line 645
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 644
    invoke-virtual {v2, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 647
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    .line 651
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 652
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    .line 654
    :cond_2
    return-void
.end method
