.class Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;
.super Ljava/lang/Object;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_CARRET:B = 0x3t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x5t

.field private static final CHARTYPE_COLON:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0x9t

.field private static final CHARTYPE_EQUAL:B = 0xbt

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0xct

.field private static final CHARTYPE_MINUS:B = 0x6t

.field private static final CHARTYPE_NONASCII:B = 0xet

.field private static final CHARTYPE_OPEN_PAREN:B = 0x4t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x7t

.field private static final CHARTYPE_SLASH:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0xdt

.field private static final CHARTYPE_WHITESPACE:B = 0x2t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7
    .param p2, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x2

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/16 v3, 0xc

    .line 668
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    const/16 v0, 0x80

    new-array v0, v0, [B

    aput-byte v2, v0, v5

    aput-byte v2, v0, v6

    const/16 v1, 0xd

    .line 649
    aput-byte v2, v0, v1

    const/16 v1, 0x20

    .line 650
    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v4, v0, v1

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    aput-byte v4, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v4, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v4, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x30

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

    .line 651
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

    aput-byte v6, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

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

    .line 652
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

    .line 653
    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x60

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

    .line 654
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

    .line 655
    aput-byte v3, v0, v1

    const/16 v1, 0x79

    aput-byte v3, v0, v1

    const/16 v1, 0x7a

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    .line 670
    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 672
    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;)V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "schemeData"    # Ljava/lang/StringBuffer;
    .param p3, "endOffset"    # I
    .param p4, "currentOffset"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/16 v5, 0x80

    const/16 v2, 0xe

    const/4 v4, 0x5

    .line 916
    :goto_0
    if-ne p4, p3, :cond_2

    :cond_0
    move p3, p4

    .line 965
    .end local p3    # "endOffset":I
    :cond_1
    :goto_1
    return p3

    .line 920
    .restart local p3    # "endOffset":I
    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 921
    .local v0, "ch":I
    if-lt v0, v5, :cond_3

    move v1, v2

    .line 924
    .local v1, "chartype":B
    :goto_2
    if-ne v1, v7, :cond_6

    .line 925
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 928
    add-int/lit8 p4, p4, 0x1

    .line 927
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result p4

    .line 929
    if-ne p4, p3, :cond_4

    move p3, p4

    .line 930
    goto :goto_1

    .line 922
    .end local v1    # "chartype":B
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    goto :goto_2

    .line 933
    .restart local v1    # "chartype":B
    :cond_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 934
    if-lt v0, v5, :cond_5

    move v1, v2

    .line 937
    :goto_3
    if-ne v1, v4, :cond_1

    .line 940
    int-to-char v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 941
    add-int/lit8 p4, p4, 0x1

    .line 943
    goto :goto_0

    .line 935
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    goto :goto_3

    .line 943
    :cond_6
    if-ne v1, v4, :cond_7

    move p3, p4

    .line 944
    goto :goto_1

    .line 946
    :cond_7
    if-ne v1, v6, :cond_a

    .line 947
    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 948
    if-lt v0, v5, :cond_9

    move v1, v2

    .line 951
    :goto_4
    if-eq v1, v6, :cond_8

    .line 952
    if-eq v1, v7, :cond_8

    .line 953
    if-ne v1, v4, :cond_0

    .line 956
    :cond_8
    int-to-char v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 957
    add-int/lit8 p4, p4, 0x1

    .line 959
    goto :goto_0

    .line 949
    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    goto :goto_4

    .line 960
    :cond_a
    int-to-char v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 961
    add-int/lit8 p4, p4, 0x1

    .line 914
    goto :goto_0
.end method

.method private scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 19
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "tokens"    # Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "currentOffset"    # I
    .param p5, "endOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 683
    const/4 v11, 0x0

    .line 684
    .local v11, "openParen":I
    const/4 v6, 0x0

    .line 686
    .local v6, "closeParen":I
    const/4 v8, 0x0

    .line 687
    .local v8, "isQName":Z
    const/4 v9, 0x0

    .line 688
    .local v9, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 689
    .local v12, "prefix":Ljava/lang/String;
    const/4 v13, 0x0

    .line 690
    .local v13, "schemeData":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 694
    .local v14, "schemeDataBuff":Ljava/lang/StringBuffer;
    :goto_0
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_1

    .line 856
    :cond_0
    const/4 v15, 0x1

    :goto_1
    return v15

    .line 697
    :cond_1
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 700
    .local v4, "ch":I
    :goto_2
    const/16 v15, 0x20

    if-eq v4, v15, :cond_3

    const/16 v15, 0xa

    if-eq v4, v15, :cond_3

    const/16 v15, 0x9

    if-eq v4, v15, :cond_3

    const/16 v15, 0xd

    if-eq v4, v15, :cond_3

    .line 706
    :cond_2
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_0

    .line 726
    const/16 v15, 0x80

    if-lt v4, v15, :cond_4

    const/16 v5, 0xe

    .line 729
    .local v5, "chartype":B
    :goto_3
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 756
    :pswitch_0
    if-nez v11, :cond_d

    .line 757
    move/from16 v10, p4

    .line 758
    .local v10, "nameOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    .line 761
    move/from16 v0, p4

    if-ne v0, v10, :cond_5

    .line 762
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v16, "InvalidShortHandPointer"

    .line 763
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p3, v17, v18

    .line 762
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    const/4 v15, 0x0

    goto :goto_1

    .line 701
    .end local v5    # "chartype":B
    .end local v10    # "nameOffset":I
    :cond_3
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_2

    .line 704
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    .line 727
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v5, v15, v4

    goto :goto_3

    .line 732
    .restart local v5    # "chartype":B
    :pswitch_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 733
    add-int/lit8 v11, v11, 0x1

    .line 734
    add-int/lit8 p4, p4, 0x1

    .line 735
    goto :goto_0

    .line 738
    :pswitch_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 739
    add-int/lit8 v6, v6, 0x1

    .line 740
    add-int/lit8 p4, p4, 0x1

    .line 741
    goto/16 :goto_0

    .line 767
    .restart local v10    # "nameOffset":I
    :cond_5
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_6

    .line 768
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 773
    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 775
    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 778
    const/16 v15, 0x3a

    if-ne v4, v15, :cond_9

    .line 779
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_7

    .line 780
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 770
    :cond_6
    const/4 v4, -0x1

    goto :goto_4

    .line 783
    :cond_7
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 784
    move-object v12, v9

    .line 785
    move/from16 v10, p4

    .line 786
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    .line 789
    move/from16 v0, p4

    if-ne v0, v10, :cond_8

    .line 790
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 793
    :cond_8
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_b

    .line 794
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 799
    :goto_5
    const/4 v8, 0x1

    .line 800
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 805
    :cond_9
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_c

    .line 806
    const/4 v15, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 807
    move-object/from16 v0, p2

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V
    invoke-static {v0, v12}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, p2

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V
    invoke-static {v0, v9}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    .line 809
    const/4 v8, 0x0

    .line 818
    :cond_a
    :goto_6
    const/4 v6, 0x0

    .line 820
    goto/16 :goto_0

    .line 796
    :cond_b
    const/4 v4, -0x1

    goto :goto_5

    .line 810
    :cond_c
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_a

    .line 812
    const/4 v15, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 813
    move-object/from16 v0, p2

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V
    invoke-static {v0, v9}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    .line 814
    const/4 v8, 0x0

    goto :goto_6

    .line 822
    .end local v10    # "nameOffset":I
    :cond_d
    if-lez v11, :cond_10

    if-nez v6, :cond_10

    if-eqz v9, :cond_10

    .line 824
    move/from16 v7, p4

    .line 825
    .local v7, "dataOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-direct {v0, v1, v14, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result p4

    .line 828
    move/from16 v0, p4

    if-ne v0, v7, :cond_e

    .line 829
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string v16, "InvalidSchemeDataInXPointer"

    .line 830
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p3, v17, v18

    .line 829
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 834
    :cond_e
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_f

    .line 835
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 841
    :goto_7
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 840
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 842
    const/4 v15, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 843
    move-object/from16 v0, p2

    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(Ljava/lang/String;)V
    invoke-static {v0, v13}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    .line 846
    const/4 v11, 0x0

    .line 847
    const/4 v15, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 837
    :cond_f
    const/4 v4, -0x1

    goto :goto_7

    .line 852
    .end local v7    # "dataOffset":I
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scanNCName(Ljava/lang/String;II)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "endOffset"    # I
    .param p3, "currentOffset"    # I

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0xd

    const/16 v4, 0xc

    .line 870
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 871
    .local v0, "ch":I
    if-lt v0, v6, :cond_0

    .line 872
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, p3

    .line 901
    .end local p3    # "currentOffset":I
    .local v2, "currentOffset":I
    :goto_0
    return v2

    .line 876
    .end local v2    # "currentOffset":I
    .restart local p3    # "currentOffset":I
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    .line 877
    .local v1, "chartype":B
    if-eq v1, v4, :cond_4

    .line 878
    if-eq v1, v5, :cond_4

    move v2, p3

    .line 879
    .end local p3    # "currentOffset":I
    .restart local v2    # "currentOffset":I
    goto :goto_0

    .line 885
    .end local v1    # "chartype":B
    .end local v2    # "currentOffset":I
    .restart local p3    # "currentOffset":I
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 886
    if-lt v0, v6, :cond_3

    .line 887
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    :goto_1
    move v2, p3

    .line 901
    .end local p3    # "currentOffset":I
    .restart local v2    # "currentOffset":I
    goto :goto_0

    .line 891
    .end local v2    # "currentOffset":I
    .restart local p3    # "currentOffset":I
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    .line 892
    .restart local v1    # "chartype":B
    if-eq v1, v4, :cond_4

    .line 893
    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    .line 894
    const/4 v3, 0x7

    if-eq v1, v3, :cond_4

    .line 895
    const/4 v3, 0x6

    if-eq v1, v3, :cond_4

    .line 896
    if-ne v1, v5, :cond_2

    .line 884
    .end local v1    # "chartype":B
    :cond_4
    add-int/lit8 p3, p3, 0x1

    if-lt p3, p2, :cond_1

    goto :goto_1
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 0
    .param p1, "tokens"    # Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 981
    # invokes: Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->addToken(I)V
    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    .line 982
    return-void
.end method
