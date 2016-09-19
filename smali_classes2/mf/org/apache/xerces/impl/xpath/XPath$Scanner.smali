.class Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_ATSIGN:B = 0x13t

.field private static final CHARTYPE_CLOSE_BRACKET:B = 0x16t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x7t

.field private static final CHARTYPE_COLON:B = 0xft

.field private static final CHARTYPE_COMMA:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0xet

.field private static final CHARTYPE_DOLLAR:B = 0x5t

.field private static final CHARTYPE_EQUAL:B = 0x11t

.field private static final CHARTYPE_EXCLAMATION:B = 0x3t

.field private static final CHARTYPE_GREATER:B = 0x12t

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LESS:B = 0x10t

.field private static final CHARTYPE_LETTER:B = 0x14t

.field private static final CHARTYPE_MINUS:B = 0xbt

.field private static final CHARTYPE_NONASCII:B = 0x19t

.field private static final CHARTYPE_OPEN_BRACKET:B = 0x15t

.field private static final CHARTYPE_OPEN_PAREN:B = 0x6t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0xct

.field private static final CHARTYPE_PLUS:B = 0x9t

.field private static final CHARTYPE_QUOTE:B = 0x4t

.field private static final CHARTYPE_SLASH:B = 0xdt

.field private static final CHARTYPE_STAR:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0x17t

.field private static final CHARTYPE_UNION:B = 0x18t

.field private static final CHARTYPE_WHITESPACE:B = 0x2t

.field private static final fASCIICharMap:[B

.field private static final fAncestorOrSelfSymbol:Ljava/lang/String;

.field private static final fAncestorSymbol:Ljava/lang/String;

.field private static final fAndSymbol:Ljava/lang/String;

.field private static final fAttributeSymbol:Ljava/lang/String;

.field private static final fChildSymbol:Ljava/lang/String;

.field private static final fCommentSymbol:Ljava/lang/String;

.field private static final fDescendantOrSelfSymbol:Ljava/lang/String;

.field private static final fDescendantSymbol:Ljava/lang/String;

.field private static final fDivSymbol:Ljava/lang/String;

.field private static final fFollowingSiblingSymbol:Ljava/lang/String;

.field private static final fFollowingSymbol:Ljava/lang/String;

.field private static final fModSymbol:Ljava/lang/String;

.field private static final fNamespaceSymbol:Ljava/lang/String;

.field private static final fNodeSymbol:Ljava/lang/String;

.field private static final fOrSymbol:Ljava/lang/String;

.field private static final fPISymbol:Ljava/lang/String;

.field private static final fParentSymbol:Ljava/lang/String;

.field private static final fPrecedingSiblingSymbol:Ljava/lang/String;

.field private static final fPrecedingSymbol:Ljava/lang/String;

.field private static final fSelfSymbol:Ljava/lang/String;

.field private static final fTextSymbol:Ljava/lang/String;


# instance fields
.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x2

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/16 v3, 0x14

    .line 1263
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x9

    .line 1264
    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    .line 1266
    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v6, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v6, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 1267
    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    aput-byte v5, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v5, v0, v1

    const/16 v1, 0x38

    aput-byte v5, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    .line 1268
    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x43

    aput-byte v3, v0, v1

    const/16 v1, 0x44

    aput-byte v3, v0, v1

    const/16 v1, 0x45

    aput-byte v3, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    aput-byte v3, v0, v1

    const/16 v1, 0x49

    aput-byte v3, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    .line 1269
    aput-byte v3, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    aput-byte v3, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 1270
    aput-byte v4, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    aput-byte v3, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x64

    aput-byte v3, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    aput-byte v3, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    aput-byte v3, v0, v1

    const/16 v1, 0x6a

    aput-byte v3, v0, v1

    const/16 v1, 0x6b

    aput-byte v3, v0, v1

    const/16 v1, 0x6c

    aput-byte v3, v0, v1

    const/16 v1, 0x6d

    aput-byte v3, v0, v1

    const/16 v1, 0x6e

    aput-byte v3, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    .line 1271
    aput-byte v3, v0, v1

    const/16 v1, 0x71

    aput-byte v3, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0x76

    aput-byte v3, v0, v1

    const/16 v1, 0x77

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v3, v0, v1

    const/16 v1, 0x79

    aput-byte v3, v0, v1

    const/16 v1, 0x7a

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    .line 1263
    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    .line 1287
    const-string v0, "and"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    .line 1288
    const-string v0, "or"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    .line 1289
    const-string v0, "mod"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    .line 1290
    const-string v0, "div"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    .line 1292
    const-string v0, "comment"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    .line 1293
    const-string v0, "text"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    .line 1294
    const-string v0, "processing-instruction"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    .line 1295
    const-string v0, "node"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    .line 1297
    const-string v0, "ancestor"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    .line 1298
    const-string v0, "ancestor-or-self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    .line 1299
    const-string v0, "attribute"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    .line 1300
    const-string v0, "child"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    .line 1301
    const-string v0, "descendant"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    .line 1302
    const-string v0, "descendant-or-self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    .line 1303
    const-string v0, "following"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    .line 1304
    const-string v0, "following-sibling"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    .line 1305
    const-string v0, "namespace"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    .line 1306
    const-string v0, "parent"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    .line 1307
    const-string v0, "preceding"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    .line 1308
    const-string v0, "preceding-sibling"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    .line 1309
    const-string v0, "self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 1316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 1321
    return-void
.end method

.method private scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I
    .locals 7
    .param p1, "tokens"    # Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "endOffset"    # I
    .param p4, "currentOffset"    # I

    .prologue
    const/16 v6, 0x39

    const/16 v5, 0x30

    .line 1947
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1948
    .local v0, "ch":I
    const/4 v2, 0x0

    .line 1949
    .local v2, "whole":I
    const/4 v1, 0x0

    .line 1950
    .local v1, "part":I
    :goto_0
    if-lt v0, v5, :cond_0

    if-le v0, v6, :cond_2

    .line 1957
    :cond_0
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_4

    .line 1958
    add-int/lit8 p4, p4, 0x1

    if-ge p4, p3, :cond_4

    .line 1960
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1961
    :goto_1
    if-lt v0, v5, :cond_1

    if-le v0, v6, :cond_3

    .line 1968
    :cond_1
    if-eqz v1, :cond_4

    .line 1972
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "find a solution!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1951
    :cond_2
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v4, v0, -0x30

    add-int v2, v3, v4

    .line 1952
    add-int/lit8 p4, p4, 0x1

    if-eq p4, p3, :cond_0

    .line 1955
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 1962
    :cond_3
    mul-int/lit8 v3, v1, 0xa

    add-int/lit8 v4, v0, -0x30

    add-int v1, v3, v4

    .line 1963
    add-int/lit8 p4, p4, 0x1

    if-eq p4, p3, :cond_1

    .line 1966
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 1978
    :cond_4
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    .line 1979
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    .line 1980
    return p4
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V
    .locals 0
    .param p1, "tokens"    # Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 1997
    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    .line 1998
    return-void
.end method

.method public scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z
    .locals 18
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "tokens"    # Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "currentOffset"    # I
    .param p5, "endOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    .line 1333
    const/4 v15, 0x0

    .line 1337
    .local v15, "starIsMultiplyOperator":Z
    :cond_0
    :goto_0
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    .line 1894
    :cond_1
    const/16 v16, 0x1

    :goto_1
    return v16

    .line 1340
    :cond_2
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1344
    .local v5, "ch":I
    :goto_2
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v5, v0, :cond_4

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v5, v0, :cond_4

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v5, v0, :cond_4

    const/16 v16, 0xd

    move/from16 v0, v16

    if-eq v5, v0, :cond_4

    .line 1350
    :cond_3
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_1

    .line 1358
    const/16 v16, 0x80

    move/from16 v0, v16

    if-lt v5, v0, :cond_5

    const/16 v6, 0x19

    .line 1359
    .local v6, "chartype":B
    :goto_3
    packed-switch v6, :pswitch_data_0

    .line 1888
    const/16 v16, 0x0

    goto :goto_1

    .line 1345
    .end local v6    # "chartype":B
    :cond_4
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_3

    .line 1348
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    .line 1358
    :cond_5
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v6, v16, v5

    goto :goto_3

    .line 1361
    .restart local v6    # "chartype":B
    :pswitch_0
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1362
    const/4 v15, 0x0

    .line 1363
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1368
    :pswitch_1
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1369
    const/4 v15, 0x1

    .line 1370
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1375
    :pswitch_2
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1376
    const/4 v15, 0x0

    .line 1377
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1382
    :pswitch_3
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1383
    const/4 v15, 0x1

    .line 1384
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1393
    :pswitch_4
    add-int/lit8 v16, p4, 0x1

    move/from16 v0, v16

    move/from16 v1, p5

    if-ne v0, v1, :cond_6

    .line 1394
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1395
    const/4 v15, 0x1

    .line 1396
    add-int/lit8 p4, p4, 0x1

    .line 1397
    goto/16 :goto_0

    .line 1399
    :cond_6
    add-int/lit8 v16, p4, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1400
    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v5, v0, :cond_7

    .line 1401
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1402
    const/4 v15, 0x1

    .line 1403
    add-int/lit8 p4, p4, 0x2

    .line 1434
    :goto_4
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1404
    :cond_7
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v5, v0, :cond_8

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v5, v0, :cond_8

    .line 1405
    const/16 v16, 0x2f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1406
    const/4 v15, 0x1

    .line 1407
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result p4

    .line 1408
    goto :goto_4

    :cond_8
    const/16 v16, 0x2f

    move/from16 v0, v16

    if-ne v5, v0, :cond_9

    .line 1409
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1410
    const/4 v15, 0x1

    .line 1411
    add-int/lit8 p4, p4, 0x1

    .line 1412
    goto :goto_4

    :cond_9
    const/16 v16, 0x7c

    move/from16 v0, v16

    if-ne v5, v0, :cond_a

    .line 1413
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1414
    const/4 v15, 0x1

    .line 1415
    add-int/lit8 p4, p4, 0x1

    .line 1416
    goto/16 :goto_0

    .line 1417
    :cond_a
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v5, v0, :cond_f

    .line 1420
    :cond_b
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_d

    .line 1425
    :goto_5
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_c

    const/16 v16, 0x7c

    move/from16 v0, v16

    if-ne v5, v0, :cond_e

    .line 1426
    :cond_c
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1427
    const/4 v15, 0x1

    .line 1428
    goto/16 :goto_0

    .line 1423
    :cond_d
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1424
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0xd

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    goto :goto_5

    .line 1430
    :cond_e
    new-instance v16, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v17, "c-general-xpath"

    invoke-direct/range {v16 .. v17}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1432
    :cond_f
    new-instance v16, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v17, "c-general-xpath"

    invoke-direct/range {v16 .. v17}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1439
    :pswitch_5
    const/16 v16, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1440
    const/4 v15, 0x0

    .line 1441
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1446
    :pswitch_6
    const/16 v16, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1447
    const/4 v15, 0x0

    .line 1448
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1453
    :pswitch_7
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_10

    .line 1455
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1457
    :cond_10
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1458
    const/16 v16, 0x3a

    move/from16 v0, v16

    if-eq v5, v0, :cond_11

    .line 1460
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1462
    :cond_11
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1463
    const/4 v15, 0x0

    .line 1464
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1469
    :pswitch_8
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_12

    .line 1470
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1471
    const/4 v15, 0x0

    .line 1472
    goto/16 :goto_0

    .line 1474
    :cond_12
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1475
    const/16 v16, 0x2f

    move/from16 v0, v16

    if-ne v5, v0, :cond_13

    .line 1476
    const/16 v16, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1477
    const/4 v15, 0x0

    .line 1478
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1482
    :cond_13
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1483
    const/4 v15, 0x0

    .line 1485
    goto/16 :goto_0

    .line 1487
    :pswitch_9
    const/16 v16, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1488
    const/4 v15, 0x0

    .line 1489
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1494
    :pswitch_a
    const/16 v16, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1495
    const/4 v15, 0x0

    .line 1496
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1501
    :pswitch_b
    const/16 v16, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1502
    const/4 v15, 0x0

    .line 1503
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1508
    :pswitch_c
    const/16 v16, 0x1a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1509
    const/4 v15, 0x0

    .line 1510
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1515
    :pswitch_d
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_14

    .line 1517
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1519
    :cond_14
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1520
    const/16 v16, 0x3d

    move/from16 v0, v16

    if-eq v5, v0, :cond_15

    .line 1522
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1524
    :cond_15
    const/16 v16, 0x1b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1525
    const/4 v15, 0x0

    .line 1526
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1531
    :pswitch_e
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_16

    .line 1532
    const/16 v16, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1533
    const/4 v15, 0x0

    .line 1534
    goto/16 :goto_0

    .line 1536
    :cond_16
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1537
    const/16 v16, 0x3d

    move/from16 v0, v16

    if-ne v5, v0, :cond_17

    .line 1538
    const/16 v16, 0x1d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1539
    const/4 v15, 0x0

    .line 1540
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1544
    :cond_17
    const/16 v16, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1545
    const/4 v15, 0x0

    .line 1547
    goto/16 :goto_0

    .line 1549
    :pswitch_f
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_18

    .line 1550
    const/16 v16, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1551
    const/4 v15, 0x0

    .line 1552
    goto/16 :goto_0

    .line 1554
    :cond_18
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1555
    const/16 v16, 0x3d

    move/from16 v0, v16

    if-ne v5, v0, :cond_19

    .line 1556
    const/16 v16, 0x1f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1557
    const/4 v15, 0x0

    .line 1558
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1562
    :cond_19
    const/16 v16, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1563
    const/4 v15, 0x0

    .line 1565
    goto/16 :goto_0

    .line 1570
    :pswitch_10
    move v14, v5

    .line 1571
    .local v14, "qchar":I
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_1a

    .line 1573
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1575
    :cond_1a
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1576
    move/from16 v10, p4

    .line 1577
    .local v10, "litOffset":I
    :goto_6
    if-ne v5, v14, :cond_1b

    .line 1584
    sub-int v9, p4, v10

    .line 1585
    .local v9, "litLength":I
    const/16 v16, 0x2e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1586
    const/4 v15, 0x1

    .line 1587
    add-int v16, v10, v9

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    .line 1588
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1578
    .end local v9    # "litLength":I
    :cond_1b
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_1c

    .line 1580
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1582
    :cond_1c
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_6

    .line 1597
    .end local v10    # "litOffset":I
    .end local v14    # "qchar":I
    :pswitch_11
    const/16 v16, 0x2f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1598
    const/4 v15, 0x1

    .line 1599
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result p4

    .line 1600
    goto/16 :goto_0

    .line 1605
    :pswitch_12
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_1d

    .line 1607
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1609
    :cond_1d
    move/from16 v12, p4

    .line 1610
    .local v12, "nameOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    .line 1611
    move/from16 v0, p4

    if-ne v0, v12, :cond_1e

    .line 1613
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1615
    :cond_1e
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_1f

    .line 1616
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1621
    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1622
    .local v11, "nameHandle":Ljava/lang/String;
    const/16 v16, 0x3a

    move/from16 v0, v16

    if-eq v5, v0, :cond_20

    .line 1623
    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 1644
    .local v13, "prefixHandle":Ljava/lang/String;
    :goto_8
    const/16 v16, 0x30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1645
    const/4 v15, 0x1

    .line 1646
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    .line 1647
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1619
    .end local v11    # "nameHandle":Ljava/lang/String;
    .end local v13    # "prefixHandle":Ljava/lang/String;
    :cond_1f
    const/4 v5, -0x1

    goto :goto_7

    .line 1625
    .restart local v11    # "nameHandle":Ljava/lang/String;
    :cond_20
    move-object v13, v11

    .line 1626
    .restart local v13    # "prefixHandle":Ljava/lang/String;
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_21

    .line 1628
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1630
    :cond_21
    move/from16 v12, p4

    .line 1631
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    .line 1632
    move/from16 v0, p4

    if-ne v0, v12, :cond_22

    .line 1634
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1636
    :cond_22
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_23

    .line 1637
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1642
    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    .line 1640
    :cond_23
    const/4 v5, -0x1

    goto :goto_9

    .line 1662
    .end local v11    # "nameHandle":Ljava/lang/String;
    .end local v12    # "nameOffset":I
    .end local v13    # "prefixHandle":Ljava/lang/String;
    :pswitch_13
    if-eqz v15, :cond_24

    .line 1663
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1664
    const/4 v15, 0x0

    .line 1669
    :goto_a
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1666
    :cond_24
    const/16 v16, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1667
    const/4 v15, 0x1

    goto :goto_a

    .line 1706
    :pswitch_14
    move/from16 v12, p4

    .line 1707
    .restart local v12    # "nameOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    .line 1708
    move/from16 v0, p4

    if-ne v0, v12, :cond_25

    .line 1710
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1712
    :cond_25
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_26

    .line 1713
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1718
    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1719
    .restart local v11    # "nameHandle":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1720
    .local v8, "isNameTestNCName":Z
    const/4 v7, 0x0

    .line 1721
    .local v7, "isAxisName":Z
    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 1722
    .restart local v13    # "prefixHandle":Ljava/lang/String;
    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v5, v0, :cond_29

    .line 1723
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_27

    .line 1725
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1716
    .end local v7    # "isAxisName":Z
    .end local v8    # "isNameTestNCName":Z
    .end local v11    # "nameHandle":Ljava/lang/String;
    .end local v13    # "prefixHandle":Ljava/lang/String;
    :cond_26
    const/4 v5, -0x1

    goto :goto_b

    .line 1727
    .restart local v7    # "isAxisName":Z
    .restart local v8    # "isNameTestNCName":Z
    .restart local v11    # "nameHandle":Ljava/lang/String;
    .restart local v13    # "prefixHandle":Ljava/lang/String;
    :cond_27
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1728
    const/16 v16, 0x2a

    move/from16 v0, v16

    if-ne v5, v0, :cond_2b

    .line 1729
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_28

    .line 1730
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1732
    :cond_28
    const/4 v8, 0x1

    .line 1758
    :cond_29
    :goto_c
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v5, v0, :cond_30

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v5, v0, :cond_30

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v5, v0, :cond_30

    const/16 v16, 0xd

    move/from16 v0, v16

    if-eq v5, v0, :cond_30

    .line 1768
    :cond_2a
    if-eqz v15, :cond_36

    .line 1769
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_31

    .line 1770
    const/16 v16, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1771
    const/4 v15, 0x0

    .line 1785
    :goto_d
    if-eqz v8, :cond_35

    .line 1787
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1733
    :cond_2b
    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v5, v0, :cond_2d

    .line 1734
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_2c

    .line 1735
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1737
    :cond_2c
    const/4 v7, 0x1

    .line 1738
    goto :goto_c

    .line 1739
    :cond_2d
    move-object v13, v11

    .line 1740
    move/from16 v12, p4

    .line 1741
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    .line 1742
    move/from16 v0, p4

    if-ne v0, v12, :cond_2e

    .line 1744
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1746
    :cond_2e
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_2f

    .line 1747
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1752
    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1758
    goto :goto_c

    .line 1750
    :cond_2f
    const/4 v5, -0x1

    goto :goto_e

    .line 1759
    :cond_30
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_2a

    .line 1762
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto/16 :goto_c

    .line 1772
    :cond_31
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_32

    .line 1773
    const/16 v16, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1774
    const/4 v15, 0x0

    .line 1775
    goto :goto_d

    :cond_32
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_33

    .line 1776
    const/16 v16, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1777
    const/4 v15, 0x0

    .line 1778
    goto/16 :goto_d

    :cond_33
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_34

    .line 1779
    const/16 v16, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1780
    const/4 v15, 0x0

    .line 1781
    goto/16 :goto_d

    .line 1783
    :cond_34
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1788
    :cond_35
    if-eqz v7, :cond_0

    .line 1790
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1798
    :cond_36
    const/16 v16, 0x28

    move/from16 v0, v16

    if-ne v5, v0, :cond_3b

    if-nez v8, :cond_3b

    if-nez v7, :cond_3b

    .line 1799
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_37

    .line 1800
    const/16 v16, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1812
    :goto_f
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1813
    const/4 v15, 0x0

    .line 1814
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1801
    :cond_37
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_38

    .line 1802
    const/16 v16, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_f

    .line 1803
    :cond_38
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_39

    .line 1804
    const/16 v16, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_f

    .line 1805
    :cond_39
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_3a

    .line 1806
    const/16 v16, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_f

    .line 1808
    :cond_3a
    const/16 v16, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1809
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    .line 1810
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    goto :goto_f

    .line 1823
    :cond_3b
    if-nez v7, :cond_3c

    .line 1824
    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v5, v0, :cond_4b

    add-int/lit8 v16, p4, 0x1

    move/from16 v0, v16

    move/from16 v1, p5

    if-ge v0, v1, :cond_4b

    .line 1825
    add-int/lit8 v16, p4, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3a

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4b

    .line 1826
    :cond_3c
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_3d

    .line 1827
    const/16 v16, 0x21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1856
    :goto_10
    if-eqz v8, :cond_4a

    .line 1858
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1828
    :cond_3d
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_3e

    .line 1829
    const/16 v16, 0x22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    .line 1830
    :cond_3e
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_3f

    .line 1831
    const/16 v16, 0x23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    .line 1832
    :cond_3f
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_40

    .line 1833
    const/16 v16, 0x24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    .line 1834
    :cond_40
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_41

    .line 1835
    const/16 v16, 0x25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    .line 1836
    :cond_41
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_42

    .line 1837
    const/16 v16, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    .line 1838
    :cond_42
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_43

    .line 1839
    const/16 v16, 0x27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    .line 1840
    :cond_43
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_44

    .line 1841
    const/16 v16, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    .line 1842
    :cond_44
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_45

    .line 1843
    const/16 v16, 0x29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    .line 1844
    :cond_45
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_46

    .line 1845
    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    .line 1846
    :cond_46
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_47

    .line 1847
    const/16 v16, 0x2b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    .line 1848
    :cond_47
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_48

    .line 1849
    const/16 v16, 0x2c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    .line 1850
    :cond_48
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_49

    .line 1851
    const/16 v16, 0x2d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    .line 1854
    :cond_49
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1860
    :cond_4a
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1861
    const/4 v15, 0x0

    .line 1862
    if-nez v7, :cond_0

    .line 1863
    add-int/lit8 p4, p4, 0x1

    .line 1864
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1874
    :cond_4b
    if-eqz v8, :cond_4c

    .line 1875
    const/16 v16, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1876
    const/4 v15, 0x1

    .line 1877
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1879
    :cond_4c
    const/16 v16, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 1880
    const/4 v15, 0x1

    .line 1881
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    .line 1882
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1359
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_1
        :pswitch_13
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_5
        :pswitch_14
        :pswitch_2
        :pswitch_3
        :pswitch_14
        :pswitch_9
        :pswitch_14
    .end packed-switch
.end method

.method scanNCName(Ljava/lang/String;II)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "endOffset"    # I
    .param p3, "currentOffset"    # I

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x17

    const/16 v4, 0x14

    .line 1901
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1902
    .local v0, "ch":I
    if-lt v0, v6, :cond_0

    .line 1903
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, p3

    .line 1940
    .end local p3    # "currentOffset":I
    .local v2, "currentOffset":I
    :goto_0
    return v2

    .line 1913
    .end local v2    # "currentOffset":I
    .restart local p3    # "currentOffset":I
    :cond_0
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    .line 1914
    .local v1, "chartype":B
    if-eq v1, v4, :cond_4

    if-eq v1, v5, :cond_4

    move v2, p3

    .line 1915
    .end local p3    # "currentOffset":I
    .restart local v2    # "currentOffset":I
    goto :goto_0

    .line 1919
    .end local v1    # "chartype":B
    .end local v2    # "currentOffset":I
    .restart local p3    # "currentOffset":I
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1920
    if-lt v0, v6, :cond_3

    .line 1921
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    :goto_1
    move v2, p3

    .line 1940
    .end local p3    # "currentOffset":I
    .restart local v2    # "currentOffset":I
    goto :goto_0

    .line 1931
    .end local v2    # "currentOffset":I
    .restart local p3    # "currentOffset":I
    :cond_3
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    .line 1932
    .restart local v1    # "chartype":B
    if-eq v1, v4, :cond_4

    const/16 v3, 0xe

    if-eq v1, v3, :cond_4

    .line 1933
    const/16 v3, 0xc

    if-eq v1, v3, :cond_4

    const/16 v3, 0xb

    if-eq v1, v3, :cond_4

    .line 1934
    if-ne v1, v5, :cond_2

    .line 1918
    .end local v1    # "chartype":B
    :cond_4
    add-int/lit8 p3, p3, 0x1

    if-lt p3, p2, :cond_1

    goto :goto_1
.end method
