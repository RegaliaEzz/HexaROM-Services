.class public Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.super Ljava/lang/Object;
.source "RegularExpression.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;
    }
.end annotation


# static fields
.field static final CARRIAGE_RETURN:I = 0xd

.field static final DEBUG:Z = false

.field static final EXTENDED_COMMENT:I = 0x10

.field static final IGNORE_CASE:I = 0x2

.field static final LINE_FEED:I = 0xa

.field static final LINE_SEPARATOR:I = 0x2028

.field static final MULTIPLE_LINES:I = 0x8

.field static final PARAGRAPH_SEPARATOR:I = 0x2029

.field static final PROHIBIT_FIXED_STRING_OPTIMIZATION:I = 0x100

.field static final PROHIBIT_HEAD_CHARACTER_OPTIMIZATION:I = 0x80

.field static final SINGLE_LINE:I = 0x4

.field static final SPECIAL_COMMA:I = 0x400

.field static final UNICODE_WORD_BOUNDARY:I = 0x40

.field static final USE_UNICODE_CATEGORY:I = 0x20

.field private static final WT_IGNORE:I = 0x0

.field private static final WT_LETTER:I = 0x1

.field private static final WT_OTHER:I = 0x2

.field static final XMLSCHEMA_MODE:I = 0x200

.field private static final serialVersionUID:J = 0x56a1d011fd4e4bc1L


# instance fields
.field transient context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

.field transient firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field transient fixedString:Ljava/lang/String;

.field transient fixedStringOnly:Z

.field transient fixedStringOptions:I

.field transient fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

.field hasBackReferences:Z

.field transient minlength:I

.field nofparen:I

.field transient numberOfClosures:I

.field transient operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

.field options:I

.field regex:Ljava/lang/String;

.field tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "options"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 1738
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1740
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 1741
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1743
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 1745
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    .line 1746
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    .line 2252
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "options"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 1738
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1740
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 1741
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1743
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 1745
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    .line 1746
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    .line 2263
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2264
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Token;IZI)V
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .param p3, "parens"    # I
    .param p4, "hasBackReferences"    # Z
    .param p5, "options"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1735
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 1738
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1740
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 1741
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1743
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 1745
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    .line 1746
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    .line 2267
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    .line 2268
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 2269
    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    .line 2270
    iput p5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    .line 2271
    iput-boolean p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 2272
    return-void
.end method

.method private compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 21
    .param p1, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .param p2, "next"    # Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .param p3, "reverse"    # Z

    .prologue
    .line 509
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 654
    :pswitch_0
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Unknown token type: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 511
    :pswitch_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createDot()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    .line 512
    .local v14, "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 656
    .end local p1    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_0
    :goto_0
    return-object v14

    .line 516
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .restart local p1    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    .line 517
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto :goto_0

    .line 521
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    .line 522
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto :goto_0

    .line 527
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;

    move-result-object v14

    .line 528
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto :goto_0

    .line 532
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_5
    move-object/from16 v14, p2

    .line 533
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    if-nez p3, :cond_1

    .line 534
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_0

    .line 535
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    .line 534
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 538
    .end local v7    # "i":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 539
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    .line 538
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 545
    .end local v7    # "i":I
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createUnion(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;

    move-result-object v15

    .line 546
    .local v15, "uni":Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    .line 549
    move-object v14, v15

    .line 550
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto :goto_0

    .line 547
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;->addElement(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    .line 546
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 554
    .end local v7    # "i":I
    .end local v15    # "uni":Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;
    :pswitch_7
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v4

    .line 555
    .local v4, "child":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMin()I

    move-result v9

    .line 556
    .local v9, "min":I
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMax()I

    move-result v8

    .line 557
    .local v8, "max":I
    if-ltz v9, :cond_3

    if-ne v9, v8, :cond_3

    .line 558
    move-object/from16 v14, p2

    .line 559
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v9, :cond_0

    .line 560
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    .line 559
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 564
    .end local v7    # "i":I
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :cond_3
    if-lez v9, :cond_4

    if-lez v8, :cond_4

    .line 565
    sub-int/2addr v8, v9

    .line 566
    :cond_4
    if-lez v8, :cond_7

    .line 568
    move-object/from16 v14, p2

    .line 569
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-lt v7, v8, :cond_5

    .line 586
    .end local v7    # "i":I
    :goto_6
    if-lez v9, :cond_0

    .line 587
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    if-ge v7, v9, :cond_0

    .line 588
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    .line 587
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 570
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    :goto_8
    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createQuestion(Z)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v12

    .line 571
    .local v12, "q":Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    move-object/from16 v0, p2

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 572
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    .line 573
    move-object v14, v12

    .line 569
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 570
    .end local v12    # "q":Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    :cond_6
    const/16 v17, 0x0

    goto :goto_8

    .line 577
    .end local v7    # "i":I
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 578
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createNonGreedyClosure()Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v11

    .line 582
    .local v11, "op":Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    :goto_9
    move-object/from16 v0, p2

    iput-object v0, v11, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 583
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v11, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    .line 584
    move-object v14, v11

    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto :goto_6

    .line 580
    .end local v11    # "op":Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createClosure(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v11

    .restart local v11    # "op":Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    goto :goto_9

    .line 594
    .end local v4    # "child":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .end local v8    # "max":I
    .end local v9    # "min":I
    .end local v11    # "op":Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
    :pswitch_8
    move-object/from16 v14, p2

    .line 595
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 598
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Op$StringOp;

    move-result-object v14

    .line 599
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto/16 :goto_0

    .line 603
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getReferenceNumber()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    .line 604
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto/16 :goto_0

    .line 608
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    if-nez v17, :cond_9

    .line 609
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    .line 610
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :cond_9
    if-eqz p3, :cond_a

    .line 611
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    .line 612
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 613
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    .line 614
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 615
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    .line 616
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 617
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    .line 619
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 622
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_c
    const/16 v17, 0x14

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    .line 623
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 625
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_d
    const/16 v17, 0x15

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    .line 626
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 628
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_e
    const/16 v17, 0x16

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    .line 629
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 631
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_f
    const/16 v17, 0x17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    .line 632
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 635
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_10
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createIndependent(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    .line 636
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 639
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :pswitch_11
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move-object/from16 v17, p1

    .line 640
    check-cast v17, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptions()I

    move-result v17

    .line 641
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    .end local p1    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptionsMask()I

    move-result v19

    .line 639
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createModifier(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;II)Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;

    move-result-object v14

    .line 642
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .restart local p1    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :pswitch_12
    move-object/from16 v6, p1

    .line 645
    check-cast v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    .line 646
    .local v6, "ctok":Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;
    iget v13, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    .line 647
    .local v13, "ref":I
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    const/4 v5, 0x0

    .line 648
    .local v5, "condition":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :goto_a
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v16

    .line 649
    .local v16, "yes":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    const/4 v10, 0x0

    .line 650
    .local v10, "no":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :goto_b
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v13, v5, v1, v10}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCondition(Lmf/org/apache/xerces/impl/xpath/regex/Op;ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    move-result-object v14

    .line 651
    .restart local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    goto/16 :goto_0

    .line 647
    .end local v5    # "condition":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .end local v10    # "no":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .end local v14    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .end local v16    # "yes":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :cond_b
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v5

    goto :goto_a

    .line 649
    .restart local v5    # "condition":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .restart local v16    # "yes":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :cond_c
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v10

    goto :goto_b

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private declared-synchronized compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2
    .param p1, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    monitor-exit p0

    return-void

    .line 500
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    .line 501
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 1
    .param p0, "target"    # Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "offset"    # I
    .param p4, "opts"    # I

    .prologue
    .line 1534
    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    .line 1535
    .local v0, "ret":I
    :goto_0
    if-eqz v0, :cond_0

    .line 1537
    return v0

    .line 1536
    :cond_0
    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    goto :goto_0
.end method

.method private static final getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 1
    .param p0, "target"    # Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "offset"    # I
    .param p4, "opts"    # I

    .prologue
    .line 1542
    if-lt p3, p1, :cond_0

    if-lt p3, p2, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 1543
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType0(CI)I

    move-result v0

    goto :goto_0
.end method

.method private static final getWordType0(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "opts"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 2371
    const/16 v3, 0x40

    invoke-static {p1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2372
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2373
    const-string v2, "IsWord"

    invoke-static {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2408
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 2373
    goto :goto_0

    .line 2375
    :cond_2
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isWordChar(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2378
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 2408
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 2393
    goto :goto_0

    .line 2396
    :pswitch_3
    packed-switch p0, :pswitch_data_1

    move v0, v2

    .line 2404
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 2402
    goto :goto_0

    .line 2378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 2396
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static final isEOLChar(I)Z
    .locals 1
    .param p0, "ch"    # I

    .prologue
    .line 2420
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_0

    .line 2421
    const/16 v0, 0x2029

    if-eq p0, v0, :cond_0

    .line 2420
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final isSet(II)Z
    .locals 1
    .param p0, "options"    # I
    .param p1, "flag"    # I

    .prologue
    .line 2231
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isWordChar(I)Z
    .locals 3
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2425
    const/16 v2, 0x5f

    if-ne p0, v2, :cond_1

    .line 2432
    :cond_0
    :goto_0
    return v0

    .line 2426
    :cond_1
    const/16 v2, 0x30

    if-ge p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2427
    :cond_2
    const/16 v2, 0x7a

    if-le p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 2428
    :cond_3
    const/16 v2, 0x39

    if-le p0, v2, :cond_0

    .line 2429
    const/16 v2, 0x41

    if-ge p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 2430
    :cond_4
    const/16 v2, 0x5a

    if-le p0, v2, :cond_0

    .line 2431
    const/16 v2, 0x61

    if-ge p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I
    .locals 29
    .param p1, "con"    # Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    .param p2, "op"    # Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .param p3, "offset"    # I
    .param p4, "dx"    # I
    .param p5, "opts"    # I

    .prologue
    .line 1043
    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    .line 1044
    .local v3, "target":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
    new-instance v22, Ljava/util/Stack;

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    .line 1045
    .local v22, "opStack":Ljava/util/Stack;
    new-instance v17, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    .line 1046
    .local v17, "dataStack":Lmf/org/apache/xerces/util/IntStack;
    const/4 v2, 0x2

    move/from16 v0, p5

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v10

    .line 1047
    .local v10, "isSetIgnoreCase":Z
    const/16 v24, -0x1

    .line 1048
    .local v24, "retValue":I
    const/16 v25, 0x0

    .line 1051
    .local v25, "returned":Z
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, p3

    if-gt v0, v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move/from16 v0, p3

    if-ge v0, v2, :cond_5

    .line 1052
    :cond_1
    if-nez p2, :cond_4

    .line 1053
    const/16 v2, 0x200

    move/from16 v0, p5

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, p3

    if-eq v0, v2, :cond_3

    const/16 v24, -0x1

    .line 1058
    :goto_0
    const/16 v25, 0x1

    .line 1317
    :cond_2
    :goto_1
    if-eqz v25, :cond_0

    .line 1319
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1320
    return v24

    :cond_3
    move/from16 v24, p3

    .line 1053
    goto :goto_0

    .line 1056
    :cond_4
    const/16 v24, -0x1

    goto :goto_0

    .line 1061
    :cond_5
    const/16 v24, -0x1

    .line 1063
    move-object/from16 v0, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1312
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown operation type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1066
    :pswitch_1
    if-lez p4, :cond_7

    move/from16 v21, p3

    .line 1067
    .local v21, "o1":I
    :goto_2
    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    if-ltz v21, :cond_6

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v2

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchChar(IIZ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1068
    :cond_6
    const/16 v25, 0x1

    .line 1069
    goto :goto_1

    .line 1066
    .end local v21    # "o1":I
    :cond_7
    add-int/lit8 v21, p3, -0x1

    goto :goto_2

    .line 1071
    .restart local v21    # "o1":I
    :cond_8
    add-int p3, p3, p4

    .line 1072
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1074
    goto :goto_1

    .line 1078
    .end local v21    # "o1":I
    :pswitch_2
    if-lez p4, :cond_a

    move/from16 v21, p3

    .line 1079
    .restart local v21    # "o1":I
    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    if-gez v21, :cond_b

    .line 1080
    :cond_9
    const/16 v25, 0x1

    .line 1081
    goto :goto_1

    .line 1078
    .end local v21    # "o1":I
    :cond_a
    add-int/lit8 v21, p3, -0x1

    goto :goto_3

    .line 1083
    .restart local v21    # "o1":I
    :cond_b
    const/4 v2, 0x4

    move/from16 v0, p5

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1084
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int v2, v21, p4

    if-ltz v2, :cond_c

    add-int v2, v21, p4

    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v4, :cond_c

    .line 1085
    add-int v21, v21, p4

    .line 1099
    :cond_c
    if-lez p4, :cond_f

    add-int/lit8 p3, v21, 0x1

    .line 1100
    :goto_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1102
    goto/16 :goto_1

    .line 1089
    :cond_d
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v15

    .line 1090
    .local v15, "ch":I
    invoke-static {v15}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int v2, v21, p4

    if-ltz v2, :cond_e

    add-int v2, v21, p4

    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v4, :cond_e

    .line 1091
    add-int v21, v21, p4

    .line 1092
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v15

    .line 1094
    :cond_e
    invoke-static {v15}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1095
    const/16 v25, 0x1

    .line 1096
    goto/16 :goto_1

    .end local v15    # "ch":I
    :cond_f
    move/from16 p3, v21

    .line 1099
    goto :goto_4

    .line 1107
    .end local v21    # "o1":I
    :pswitch_3
    if-lez p4, :cond_11

    move/from16 v21, p3

    .line 1108
    .restart local v21    # "o1":I
    :goto_5
    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_10

    if-gez v21, :cond_12

    .line 1109
    :cond_10
    const/16 v25, 0x1

    .line 1110
    goto/16 :goto_1

    .line 1107
    .end local v21    # "o1":I
    :cond_11
    add-int/lit8 v21, p3, -0x1

    goto :goto_5

    .line 1112
    .restart local v21    # "o1":I
    :cond_12
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v15

    .line 1113
    .restart local v15    # "ch":I
    invoke-static {v15}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int v2, v21, p4

    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v4, :cond_13

    add-int v2, v21, p4

    if-ltz v2, :cond_13

    .line 1114
    add-int v21, v21, p4

    .line 1115
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v15

    .line 1117
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v27

    .line 1118
    .local v27, "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1119
    const/16 v25, 0x1

    .line 1120
    goto/16 :goto_1

    .line 1122
    :cond_14
    if-lez p4, :cond_15

    add-int/lit8 p3, v21, 0x1

    .line 1123
    :goto_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1125
    goto/16 :goto_1

    :cond_15
    move/from16 p3, v21

    .line 1122
    goto :goto_6

    .end local v15    # "ch":I
    .end local v21    # "o1":I
    .end local v27    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :pswitch_4
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p5

    .line 1129
    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchAnchor(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;II)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1130
    const/16 v25, 0x1

    .line 1131
    goto/16 :goto_1

    .line 1133
    :cond_16
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1135
    goto/16 :goto_1

    .line 1139
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v23

    .line 1140
    .local v23, "refno":I
    if-lez v23, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move/from16 v0, v23

    if-lt v0, v2, :cond_18

    .line 1141
    :cond_17
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Internal Error: Reference number must be more than zero: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1143
    :cond_18
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v2

    if-ltz v2, :cond_19

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    if-gez v2, :cond_1a

    .line 1144
    :cond_19
    const/16 v25, 0x1

    .line 1145
    goto/16 :goto_1

    .line 1147
    :cond_1a
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v7

    .line 1148
    .local v7, "o2":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    sub-int v8, v2, v7

    .line 1149
    .local v8, "literallen":I
    if-lez p4, :cond_1c

    .line 1150
    move-object/from16 v0, p1

    iget v6, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move v4, v10

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1151
    const/16 v25, 0x1

    .line 1152
    goto/16 :goto_1

    .line 1154
    :cond_1b
    add-int p3, p3, v8

    .line 1163
    :goto_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1165
    goto/16 :goto_1

    .line 1157
    :cond_1c
    sub-int v5, p3, v8

    move-object/from16 v0, p1

    iget v6, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move v4, v10

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1158
    const/16 v25, 0x1

    .line 1159
    goto/16 :goto_1

    .line 1161
    :cond_1d
    sub-int p3, p3, v8

    goto :goto_7

    .line 1169
    .end local v7    # "o2":I
    .end local v8    # "literallen":I
    .end local v23    # "refno":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getString()Ljava/lang/String;

    move-result-object v13

    .line 1170
    .local v13, "literal":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    .line 1171
    .restart local v8    # "literallen":I
    if-lez p4, :cond_1f

    .line 1172
    move-object/from16 v0, p1

    iget v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v9, v3

    move/from16 v11, p3

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1173
    const/16 v25, 0x1

    .line 1174
    goto/16 :goto_1

    .line 1176
    :cond_1e
    add-int p3, p3, v8

    .line 1185
    :goto_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1187
    goto/16 :goto_1

    .line 1179
    :cond_1f
    sub-int v11, p3, v8

    move-object/from16 v0, p1

    iget v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v9, v3

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1180
    const/16 v25, 0x1

    .line 1181
    goto/16 :goto_1

    .line 1183
    :cond_20
    sub-int p3, p3, v8

    goto :goto_8

    .line 1192
    .end local v8    # "literallen":I
    .end local v13    # "literal":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v18

    .line 1193
    .local v18, "id":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v2, v2, v18

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1194
    const/16 v25, 0x1

    .line 1195
    goto/16 :goto_1

    .line 1198
    :cond_21
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v2, v2, v18

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->addOffset(I)V

    .line 1204
    .end local v18    # "id":I
    :pswitch_8
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1206
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 1208
    goto/16 :goto_1

    .line 1213
    :pswitch_9
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1215
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1217
    goto/16 :goto_1

    .line 1220
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->size()I

    move-result v2

    if-nez v2, :cond_22

    .line 1221
    const/16 v25, 0x1

    .line 1222
    goto/16 :goto_1

    .line 1224
    :cond_22
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1226
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1227
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 1229
    goto/16 :goto_1

    .line 1233
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v23

    .line 1234
    .restart local v23    # "refno":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v2, :cond_23

    .line 1235
    if-lez v23, :cond_24

    .line 1236
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1237
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1244
    :goto_9
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1247
    :cond_23
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1249
    goto/16 :goto_1

    .line 1240
    :cond_24
    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v19, v0

    .line 1241
    .local v19, "index":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1242
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_9

    .line 1256
    .end local v19    # "index":I
    .end local v23    # "refno":I
    :pswitch_c
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1258
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1259
    move-object/from16 v0, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v4, 0x14

    if-eq v2, v4, :cond_25

    move-object/from16 v0, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v4, 0x15

    if-ne v2, v4, :cond_26

    :cond_25
    const/16 p4, 0x1

    .line 1260
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 1262
    goto/16 :goto_1

    .line 1259
    :cond_26
    const/16 p4, -0x1

    goto :goto_a

    .line 1266
    :pswitch_d
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 1270
    goto/16 :goto_1

    .line 1274
    :pswitch_e
    move/from16 v20, p5

    .line 1275
    .local v20, "localopts":I
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v2

    or-int v20, v20, v2

    .line 1276
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData2()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int v20, v20, v2

    .line 1277
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1279
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1280
    move/from16 p5, v20

    .line 1281
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 1283
    goto/16 :goto_1

    .end local v20    # "localopts":I
    :pswitch_f
    move-object/from16 v16, p2

    .line 1287
    check-cast v16, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    .line 1288
    .local v16, "cop":Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;
    move-object/from16 v0, v16

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    if-lez v2, :cond_2a

    .line 1289
    move-object/from16 v0, v16

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    if-lt v2, v4, :cond_27

    .line 1290
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Internal Error: Reference number must be more than zero: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1292
    :cond_27
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move-object/from16 v0, v16

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v2

    if-ltz v2, :cond_28

    .line 1293
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move-object/from16 v0, v16

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    if-ltz v2, :cond_28

    .line 1294
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1295
    goto/16 :goto_1

    .line 1296
    :cond_28
    move-object/from16 v0, v16

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v2, :cond_29

    .line 1297
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1298
    goto/16 :goto_1

    .line 1300
    :cond_29
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1302
    goto/16 :goto_1

    .line 1304
    :cond_2a
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1306
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1309
    goto/16 :goto_1

    .line 1323
    .end local v16    # "cop":Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;
    :cond_2b
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "op":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    check-cast p2, Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1324
    .restart local p2    # "op":Lmf/org/apache/xerces/impl/xpath/regex/Op;
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result p3

    .line 1326
    move-object/from16 v0, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    packed-switch v2, :pswitch_data_1

    :pswitch_10
    goto/16 :goto_1

    .line 1329
    :pswitch_11
    if-gez v24, :cond_2

    .line 1330
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1331
    const/16 v25, 0x0

    .line 1333
    goto/16 :goto_1

    .line 1337
    :pswitch_12
    if-gez v24, :cond_2

    .line 1338
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 1339
    const/16 v25, 0x0

    .line 1341
    goto/16 :goto_1

    .line 1345
    :pswitch_13
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v28

    .line 1350
    .local v28, "unionIndex":I
    if-gez v24, :cond_2

    .line 1351
    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_2c

    .line 1352
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1354
    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 1355
    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    .line 1356
    const/16 v25, 0x0

    .line 1357
    goto/16 :goto_1

    .line 1359
    :cond_2c
    const/16 v24, -0x1

    .line 1363
    goto/16 :goto_1

    .line 1366
    .end local v28    # "unionIndex":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v23

    .line 1367
    .restart local v23    # "refno":I
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v26

    .line 1368
    .local v26, "saved":I
    if-gez v24, :cond_2

    .line 1369
    if-lez v23, :cond_2d

    .line 1370
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    goto/16 :goto_1

    .line 1373
    :cond_2d
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    neg-int v4, v0

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto/16 :goto_1

    .line 1381
    .end local v23    # "refno":I
    .end local v26    # "saved":I
    :pswitch_15
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result p4

    .line 1382
    if-ltz v24, :cond_2e

    .line 1383
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1384
    const/16 v25, 0x0

    .line 1386
    :cond_2e
    const/16 v24, -0x1

    .line 1388
    goto/16 :goto_1

    .line 1393
    :pswitch_16
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result p4

    .line 1394
    if-gez v24, :cond_2f

    .line 1395
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1396
    const/16 v25, 0x0

    .line 1398
    :cond_2f
    const/16 v24, -0x1

    .line 1400
    goto/16 :goto_1

    .line 1403
    :pswitch_17
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result p5

    .line 1407
    :pswitch_18
    if-ltz v24, :cond_2

    .line 1408
    move/from16 p3, v24

    .line 1409
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1410
    const/16 v25, 0x0

    .line 1412
    goto/16 :goto_1

    :pswitch_19
    move-object/from16 v16, p2

    .line 1416
    check-cast v16, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    .line 1417
    .restart local v16    # "cop":Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;
    if-ltz v24, :cond_30

    .line 1418
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1427
    :goto_b
    const/16 v25, 0x0

    .line 1428
    goto/16 :goto_1

    .line 1420
    :cond_30
    move-object/from16 v0, v16

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v2, :cond_31

    .line 1421
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    .line 1422
    goto :goto_b

    .line 1424
    :cond_31
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto :goto_b

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 1326
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method private matchChar(IIZ)Z
    .locals 1
    .param p1, "ch"    # I
    .param p2, "other"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    .line 1438
    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final matchIgnoreCase(II)Z
    .locals 6
    .param p0, "chardata"    # I
    .param p1, "ch"    # I

    .prologue
    const v4, 0xffff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2436
    if-ne p0, p1, :cond_1

    .line 2441
    :cond_0
    :goto_0
    return v2

    .line 2437
    :cond_1
    if-gt p0, v4, :cond_2

    if-le p1, v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    .line 2438
    :cond_3
    int-to-char v4, p0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 2439
    .local v0, "uch1":C
    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 2440
    .local v1, "uch2":C
    if-eq v0, v1, :cond_0

    .line 2441
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private setPattern(Ljava/lang/String;ILjava/util/Locale;)V
    .locals 4
    .param p1, "newPattern"    # Ljava/lang/String;
    .param p2, "options"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2286
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    .line 2287
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    .line 2288
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2289
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;

    invoke-direct {v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;-><init>(Ljava/util/Locale;)V

    .line 2290
    .local v0, "rp":Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 2291
    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    .line 2292
    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    .line 2294
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 2295
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 2296
    return-void

    .line 2289
    .end local v0    # "rp":Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;

    invoke-direct {v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2338
    if-nez p1, :cond_1

    .line 2342
    :cond_0
    :goto_0
    return v1

    .line 2339
    :cond_1
    instance-of v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 2341
    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    .line 2342
    .local v0, "r":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method equals(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "options"    # I

    .prologue
    .line 2346
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumberOfGroups()I
    .locals 1

    .prologue
    .line 2362
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    return v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2331
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method matchAnchor(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;II)Z
    .locals 9
    .param p1, "target"    # Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
    .param p2, "op"    # Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .param p3, "con"    # Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    .param p4, "offset"    # I
    .param p5, "opts"    # I

    .prologue
    const/16 v8, 0xa

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1442
    const/4 v2, 0x0

    .line 1443
    .local v2, "go":Z
    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v3, v4

    .line 1529
    :cond_1
    :goto_0
    return v3

    .line 1445
    :sswitch_0
    invoke-static {p5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1446
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_0

    .line 1447
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-le p4, v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge p4, v5, :cond_1

    add-int/lit8 v5, p4, -0x1

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1450
    :cond_2
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_0

    goto :goto_0

    .line 1457
    :sswitch_1
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_0

    .line 1458
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-le p4, v5, :cond_1

    add-int/lit8 v5, p4, -0x1

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1463
    :sswitch_2
    invoke-static {p5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1464
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_0

    .line 1465
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge p4, v5, :cond_1

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 1468
    :cond_3
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_0

    .line 1469
    add-int/lit8 v5, p4, 0x1

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v5, v6, :cond_4

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1470
    :cond_4
    add-int/lit8 v5, p4, 0x2

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v5, v6, :cond_1

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 1471
    add-int/lit8 v5, p4, 0x1

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_0

    goto :goto_0

    .line 1477
    :sswitch_3
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_0

    goto/16 :goto_0

    .line 1481
    :sswitch_4
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_0

    .line 1482
    add-int/lit8 v5, p4, 0x1

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v5, v6, :cond_5

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1483
    :cond_5
    add-int/lit8 v5, p4, 0x2

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v5, v6, :cond_1

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 1484
    add-int/lit8 v5, p4, 0x1

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_0

    goto/16 :goto_0

    .line 1489
    :sswitch_5
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_0

    goto/16 :goto_0

    .line 1493
    :sswitch_6
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz v5, :cond_1

    .line 1496
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    .line 1497
    .local v0, "after":I
    if-eqz v0, :cond_1

    .line 1498
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v1

    .line 1499
    .local v1, "before":I
    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 1504
    .end local v0    # "after":I
    .end local v1    # "before":I
    :sswitch_7
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-nez v5, :cond_6

    .line 1505
    const/4 v2, 0x1

    .line 1511
    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 1507
    :cond_6
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    .line 1508
    .restart local v0    # "after":I
    if-eqz v0, :cond_7

    .line 1509
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-eq v0, v5, :cond_7

    move v2, v3

    .line 1508
    :goto_2
    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_2

    .line 1515
    .end local v0    # "after":I
    :sswitch_8
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_1

    .line 1516
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 1517
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-eq v5, v7, :cond_0

    goto/16 :goto_0

    .line 1522
    :sswitch_9
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_1

    .line 1523
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 1524
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-eq v5, v4, :cond_0

    goto/16 :goto_0

    .line 1443
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_2
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_1
        0x41 -> :sswitch_3
        0x42 -> :sswitch_7
        0x5a -> :sswitch_4
        0x5e -> :sswitch_0
        0x62 -> :sswitch_6
        0x7a -> :sswitch_5
    .end sparse-switch
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 854
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 866
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 16
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "match"    # Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .prologue
    .line 890
    monitor-enter p0

    .line 891
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v3, :cond_0

    .line 892
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    .line 893
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v3, :cond_1

    .line 894
    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 890
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    const/4 v4, 0x0

    .line 897
    .local v4, "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v5

    .line 898
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v3, :cond_4

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object v4, v3

    .line 899
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset(Ljava/lang/String;III)V

    .line 897
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 901
    if-eqz p4, :cond_5

    .line 902
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    .line 903
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/lang/String;)V

    .line 910
    :cond_2
    :goto_1
    move-object/from16 v0, p4

    iput-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .line 912
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v5, 0x200

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 916
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    .line 921
    .local v11, "matchEnd":I
    iget v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v11, v3, :cond_6

    .line 922
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_3

    .line 923
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v3, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 924
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 926
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 927
    const/4 v3, 0x1

    .line 1035
    .end local v11    # "matchEnd":I
    :goto_2
    return v3

    .line 890
    .end local v4    # "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 898
    .restart local v4    # "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    goto :goto_0

    .line 897
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 904
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v3, :cond_2

    .line 905
    new-instance p4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .end local p4    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    invoke-direct/range {p4 .. p4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    .line 906
    .restart local p4    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_1

    .line 929
    .restart local v11    # "matchEnd":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 936
    .end local v11    # "matchEnd":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz v3, :cond_a

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result v13

    .line 939
    .local v13, "o":I
    if-ltz v13, :cond_9

    .line 940
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_8

    .line 941
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v13}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 942
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v13

    invoke-virtual {v3, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 944
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 945
    const/4 v3, 0x1

    goto :goto_2

    .line 947
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 948
    const/4 v3, 0x0

    goto :goto_2

    .line 956
    .end local v13    # "o":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result v13

    .line 958
    .restart local v13    # "o":I
    if-gez v13, :cond_b

    .line 960
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 961
    const/4 v3, 0x0

    goto :goto_2

    .line 965
    .end local v13    # "o":I
    :cond_b
    iget v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v10, v3, v5

    .line 967
    .local v10, "limit":I
    const/4 v11, -0x1

    .line 972
    .restart local v11    # "matchEnd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v3, :cond_11

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v3

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v3, :cond_11

    .line 974
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 975
    iget v12, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 976
    .local v12, "matchStart":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    move v6, v12

    .line 1026
    .end local v12    # "matchStart":I
    .local v6, "matchStart":I
    :cond_c
    :goto_3
    if-ltz v11, :cond_16

    .line 1027
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_d

    .line 1028
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1029
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 1031
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1032
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 978
    .end local v6    # "matchStart":I
    :cond_e
    const/4 v14, 0x1

    .line 979
    .local v14, "previousIsEOL":Z
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v6    # "matchStart":I
    :goto_4
    if-gt v6, v10, :cond_c

    .line 980
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 981
    .local v9, "ch":I
    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 982
    const/4 v14, 0x1

    .line 979
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 984
    :cond_f
    if-eqz v14, :cond_10

    .line 985
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 986
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    .line 985
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    .line 989
    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    .line 998
    .end local v6    # "matchStart":I
    .end local v9    # "ch":I
    .end local v14    # "previousIsEOL":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v3, :cond_15

    .line 1000
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1001
    .local v15, "range":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v6    # "matchStart":I
    :goto_6
    if-gt v6, v10, :cond_c

    .line 1002
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1003
    .restart local v9    # "ch":I
    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v3, v6, 0x1

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v3, v5, :cond_12

    .line 1004
    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v9, v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v9

    .line 1006
    :cond_12
    invoke-virtual {v15, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1001
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1009
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1010
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    .line 1009
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-ltz v11, :cond_13

    goto/16 :goto_3

    .line 1020
    .end local v6    # "matchStart":I
    .end local v9    # "ch":I
    .end local v15    # "range":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_15
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v6    # "matchStart":I
    :goto_7
    if-gt v6, v10, :cond_c

    .line 1021
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    .line 1020
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1034
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1035
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public matches(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "match"    # Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .prologue
    .line 876
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;)Z
    .locals 1
    .param p1, "target"    # Ljava/text/CharacterIterator;

    .prologue
    .line 1553
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/text/CharacterIterator;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 17
    .param p1, "target"    # Ljava/text/CharacterIterator;
    .param p2, "match"    # Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .prologue
    .line 1564
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v16

    .line 1565
    .local v16, "start":I
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v9

    .line 1569
    .local v9, "end":I
    monitor-enter p0

    .line 1570
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v2, :cond_0

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    .line 1572
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v2, :cond_1

    .line 1573
    new-instance v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 1569
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    const/4 v3, 0x0

    .line 1576
    .local v3, "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v4

    .line 1577
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v2, :cond_4

    new-instance v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object v3, v2

    .line 1578
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1, v9, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset(Ljava/text/CharacterIterator;III)V

    .line 1576
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1580
    if-eqz p2, :cond_5

    .line 1581
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    .line 1582
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/text/CharacterIterator;)V

    .line 1589
    :cond_2
    :goto_1
    move-object/from16 v0, p2

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .line 1591
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v4, 0x200

    invoke-static {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1592
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    .line 1594
    .local v11, "matchEnd":I
    iget v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v11, v2, :cond_6

    .line 1595
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v2, :cond_3

    .line 1596
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    iget v6, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1597
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 1599
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1600
    const/4 v2, 0x1

    .line 1708
    .end local v11    # "matchEnd":I
    :goto_2
    return v2

    .line 1569
    .end local v3    # "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1577
    .restart local v3    # "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    goto :goto_0

    .line 1576
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1583
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v2, :cond_2

    .line 1584
    new-instance p2, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .end local p2    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    invoke-direct/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    .line 1585
    .restart local p2    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_1

    .line 1602
    .restart local v11    # "matchEnd":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1609
    .end local v11    # "matchEnd":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz v2, :cond_a

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result v13

    .line 1612
    .local v13, "o":I
    if-ltz v13, :cond_9

    .line 1613
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v2, :cond_8

    .line 1614
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v13}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1615
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v13

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 1617
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1618
    const/4 v2, 0x1

    goto :goto_2

    .line 1620
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1621
    const/4 v2, 0x0

    goto :goto_2

    .line 1629
    .end local v13    # "o":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1630
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result v13

    .line 1631
    .restart local v13    # "o":I
    if-gez v13, :cond_b

    .line 1633
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1634
    const/4 v2, 0x0

    goto :goto_2

    .line 1638
    .end local v13    # "o":I
    :cond_b
    iget v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v10, v2, v4

    .line 1640
    .local v10, "limit":I
    const/4 v11, -0x1

    .line 1645
    .restart local v11    # "matchEnd":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v2, :cond_11

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v2, :cond_11

    .line 1647
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1648
    iget v12, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 1649
    .local v12, "matchStart":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    move v5, v12

    .line 1699
    .end local v12    # "matchStart":I
    .local v5, "matchStart":I
    :cond_c
    :goto_3
    if-ltz v11, :cond_16

    .line 1700
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v2, :cond_d

    .line 1701
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 1702
    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 1704
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1705
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 1651
    .end local v5    # "matchStart":I
    :cond_e
    const/4 v14, 0x1

    .line 1652
    .local v14, "previousIsEOL":Z
    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v5    # "matchStart":I
    :goto_4
    if-gt v5, v10, :cond_c

    .line 1653
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v8

    .line 1654
    .local v8, "ch":I
    invoke-static {v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1655
    const/4 v14, 0x1

    .line 1652
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1657
    :cond_f
    if-eqz v14, :cond_10

    .line 1658
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1659
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    .line 1658
    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    .line 1662
    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    .line 1671
    .end local v5    # "matchStart":I
    .end local v8    # "ch":I
    .end local v14    # "previousIsEOL":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v2, :cond_15

    .line 1673
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 1674
    .local v15, "range":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v5    # "matchStart":I
    :goto_6
    if-gt v5, v10, :cond_c

    .line 1675
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v8

    .line 1676
    .restart local v8    # "ch":I
    invoke-static {v8}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v2, v5, 0x1

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v4, :cond_12

    .line 1677
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    invoke-static {v8, v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v8

    .line 1679
    :cond_12
    invoke-virtual {v15, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1674
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1682
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 1683
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    .line 1682
    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-ltz v11, :cond_13

    goto/16 :goto_3

    .line 1693
    .end local v5    # "matchStart":I
    .end local v8    # "ch":I
    .end local v15    # "range":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_15
    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v5    # "matchStart":I
    :goto_7
    if-gt v5, v10, :cond_c

    .line 1694
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    .line 1693
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1707
    :cond_16
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 1708
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public matches([C)Z
    .locals 3
    .param p1, "target"    # [C

    .prologue
    .line 668
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches([CII)Z
    .locals 1
    .param p1, "target"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 16
    .param p1, "target"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "match"    # Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .prologue
    .line 705
    monitor-enter p0

    .line 706
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v3, :cond_0

    .line 707
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    .line 708
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v3, :cond_1

    .line 709
    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    .line 705
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    const/4 v4, 0x0

    .line 712
    .local v4, "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v5

    .line 713
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v3, :cond_4

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object v4, v3

    .line 714
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset([CIII)V

    .line 712
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 716
    if-eqz p4, :cond_5

    .line 717
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    .line 718
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource([C)V

    .line 725
    :cond_2
    :goto_1
    move-object/from16 v0, p4

    iput-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .line 727
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v5, 0x200

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 728
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    .line 730
    .local v11, "matchEnd":I
    iget v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v11, v3, :cond_6

    .line 731
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_3

    .line 732
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v3, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 733
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 735
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 736
    const/4 v3, 0x1

    .line 844
    .end local v11    # "matchEnd":I
    :goto_2
    return v3

    .line 705
    .end local v4    # "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 713
    .restart local v4    # "con":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    goto :goto_0

    .line 712
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 719
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v3, :cond_2

    .line 720
    new-instance p4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .end local p4    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    invoke-direct/range {p4 .. p4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    .line 721
    .restart local p4    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_1

    .line 738
    .restart local v11    # "matchEnd":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 745
    .end local v11    # "matchEnd":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz v3, :cond_a

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches([CII)I

    move-result v13

    .line 748
    .local v13, "o":I
    if-ltz v13, :cond_9

    .line 749
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_8

    .line 750
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v13}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 751
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v13

    invoke-virtual {v3, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 753
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 754
    const/4 v3, 0x1

    goto :goto_2

    .line 756
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 757
    const/4 v3, 0x0

    goto :goto_2

    .line 765
    .end local v13    # "o":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches([CII)I

    move-result v13

    .line 767
    .restart local v13    # "o":I
    if-gez v13, :cond_b

    .line 769
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 770
    const/4 v3, 0x0

    goto :goto_2

    .line 774
    .end local v13    # "o":I
    :cond_b
    iget v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v10, v3, v5

    .line 776
    .local v10, "limit":I
    const/4 v11, -0x1

    .line 781
    .restart local v11    # "matchEnd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v3, :cond_11

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v3

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v3, :cond_11

    .line 783
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 784
    iget v12, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .line 785
    .local v12, "matchStart":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    move v6, v12

    .line 835
    .end local v12    # "matchStart":I
    .local v6, "matchStart":I
    :cond_c
    :goto_3
    if-ltz v11, :cond_16

    .line 836
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_d

    .line 837
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    .line 838
    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    .line 840
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 841
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 787
    .end local v6    # "matchStart":I
    :cond_e
    const/4 v14, 0x1

    .line 788
    .local v14, "previousIsEOL":Z
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v6    # "matchStart":I
    :goto_4
    if-gt v6, v10, :cond_c

    .line 789
    aget-char v9, p1, v6

    .line 790
    .local v9, "ch":I
    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 791
    const/4 v14, 0x1

    .line 788
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 793
    :cond_f
    if-eqz v14, :cond_10

    .line 794
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 795
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    .line 794
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    .line 798
    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    .line 807
    .end local v6    # "matchStart":I
    .end local v9    # "ch":I
    .end local v14    # "previousIsEOL":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v3, :cond_15

    .line 809
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 810
    .local v15, "range":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v6    # "matchStart":I
    :goto_6
    if-gt v6, v10, :cond_c

    .line 811
    aget-char v9, p1, v6

    .line 812
    .restart local v9    # "ch":I
    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v3, v6, 0x1

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v3, v5, :cond_12

    .line 813
    add-int/lit8 v3, v6, 0x1

    aget-char v3, p1, v3

    invoke-static {v9, v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v9

    .line 815
    :cond_12
    invoke-virtual {v15, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 810
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 818
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    .line 819
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    .line 818
    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-ltz v11, :cond_13

    goto :goto_3

    .line 829
    .end local v6    # "matchStart":I
    .end local v9    # "ch":I
    .end local v15    # "range":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_15
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    .restart local v6    # "matchStart":I
    :goto_7
    if-gt v6, v10, :cond_c

    .line 830
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    .line 829
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 843
    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    .line 844
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public matches([CLmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 2
    .param p1, "target"    # [C
    .param p2, "match"    # Lmf/org/apache/xerces/impl/xpath/regex/Match;

    .prologue
    .line 690
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method prepare()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v5, 0x0

    const/16 v9, 0x100

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2092
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 2102
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v4

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    .line 2104
    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 2105
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v6, 0x80

    invoke-static {v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2106
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v6, 0x200

    invoke-static {v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2107
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    .line 2108
    .local v2, "firstChar":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v3

    .line 2109
    .local v3, "fresult":I
    if-ne v3, v7, :cond_0

    .line 2110
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 2111
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 2117
    .end local v2    # "firstChar":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .end local v3    # "fresult":I
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v4, :cond_5

    .line 2118
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-eq v4, v10, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-ne v4, v7, :cond_5

    .line 2119
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v4, :cond_5

    .line 2122
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    .line 2123
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-ne v4, v10, :cond_3

    .line 2124
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2132
    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    .line 2133
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2134
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v6

    invoke-direct {v4, v5, v9, v6}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    .line 2133
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    .line 2156
    :cond_2
    :goto_1
    return-void

    .line 2125
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v4

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_4

    .line 2126
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_0

    .line 2128
    :cond_4
    new-array v0, v7, [C

    .line 2129
    .local v0, "ac":[C
    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v4

    .line 2130
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_0

    .line 2135
    .end local v0    # "ac":[C
    :cond_5
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v4, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2136
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v6, 0x200

    invoke-static {v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2137
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;-><init>()V

    .line 2138
    .local v1, "container":Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v4, v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    .line 2139
    iget-object v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v4, :cond_7

    move-object v4, v5

    :goto_2
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2140
    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    .line 2141
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_6

    .line 2142
    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2144
    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2145
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 2146
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v6

    invoke-direct {v4, v5, v9, v6}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    .line 2145
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    goto :goto_1

    .line 2139
    :cond_7
    iget-object v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "newPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2279
    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "newPattern"    # Ljava/lang/String;
    .param p2, "options"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2302
    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "newPattern"    # Ljava/lang/String;
    .param p2, "options"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2305
    invoke-static {p2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    .line 2306
    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "newPattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 2282
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    .line 2283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2319
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
