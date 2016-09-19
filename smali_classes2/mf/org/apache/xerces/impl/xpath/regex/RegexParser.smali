.class Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;
.super Ljava/lang/Object;
.source "RegexParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;
    }
.end annotation


# static fields
.field protected static final S_INBRACKETS:I = 0x1

.field protected static final S_INXBRACKETS:I = 0x2

.field protected static final S_NORMAL:I = 0x0

.field static final T_BACKSOLIDUS:I = 0xa

.field static final T_CARET:I = 0xb

.field static final T_CHAR:I = 0x0

.field static final T_COMMENT:I = 0x15

.field static final T_CONDITION:I = 0x17

.field static final T_DOLLAR:I = 0xc

.field static final T_DOT:I = 0x8

.field static final T_EOF:I = 0x1

.field static final T_INDEPENDENT:I = 0x12

.field static final T_LBRACKET:I = 0x9

.field static final T_LOOKAHEAD:I = 0xe

.field static final T_LOOKBEHIND:I = 0x10

.field static final T_LPAREN:I = 0x6

.field static final T_LPAREN2:I = 0xd

.field static final T_MODIFIERS:I = 0x16

.field static final T_NEGATIVELOOKAHEAD:I = 0xf

.field static final T_NEGATIVELOOKBEHIND:I = 0x11

.field static final T_OR:I = 0x2

.field static final T_PLUS:I = 0x4

.field static final T_POSIX_CHARCLASS_START:I = 0x14

.field static final T_QUESTION:I = 0x5

.field static final T_RPAREN:I = 0x7

.field static final T_SET_OPERATIONS:I = 0x13

.field static final T_STAR:I = 0x3

.field static final T_XMLSCHEMA_CC_SUBTRACTION:I = 0x18


# instance fields
.field chardata:I

.field context:I

.field hasBackReferences:Z

.field nexttoken:I

.field offset:I

.field options:I

.field parenOpened:I

.field parennumber:I

.field references:Ljava/util/Vector;

.field regex:Ljava/lang/String;

.field regexlen:I

.field resources:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    .line 79
    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    .line 80
    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setLocale(Ljava/util/Locale;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    .line 79
    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    .line 80
    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    .line 88
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setLocale(Ljava/util/Locale;)V

    .line 89
    return-void
.end method

.method protected static final addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V
    .locals 4
    .param p0, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .param p1, "c"    # I

    .prologue
    .line 1199
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->get(I)[I

    move-result-object v0

    .line 1200
    .local v0, "caseMap":[I
    invoke-virtual {p0, p1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 1202
    if-eqz v0, :cond_0

    .line 1203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 1208
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1204
    .restart local v1    # "i":I
    :cond_1
    aget v2, v0, v1

    aget v3, v0, v1

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 1203
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method protected static final addCaseInsensitiveCharRange(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;II)V
    .locals 7
    .param p0, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1213
    if-gt p1, p2, :cond_0

    .line 1214
    move v3, p1

    .line 1215
    .local v3, "r1":I
    move v4, p2

    .line 1221
    .local v4, "r2":I
    :goto_0
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 1222
    move v1, v3

    .local v1, "ch":I
    :goto_1
    if-le v1, v4, :cond_1

    .line 1230
    return-void

    .line 1217
    .end local v1    # "ch":I
    .end local v3    # "r1":I
    .end local v4    # "r2":I
    :cond_0
    move v3, p2

    .line 1218
    .restart local v3    # "r1":I
    move v4, p1

    .restart local v4    # "r2":I
    goto :goto_0

    .line 1223
    .restart local v1    # "ch":I
    :cond_1
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->get(I)[I

    move-result-object v0

    .line 1224
    .local v0, "caseMap":[I
    if-eqz v0, :cond_2

    .line 1225
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v0

    if-lt v2, v5, :cond_3

    .line 1222
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1226
    .restart local v2    # "i":I
    :cond_3
    aget v5, v0, v2

    aget v6, v0, v2

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 1225
    add-int/lit8 v2, v2, 0x2

    goto :goto_2
.end method

.method private static final hexChar(I)I
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, -0x1

    .line 1189
    const/16 v1, 0x30

    if-ge p0, v1, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return v0

    .line 1190
    :cond_1
    const/16 v1, 0x66

    if-gt p0, v1, :cond_0

    .line 1191
    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    .line 1192
    :cond_2
    const/16 v1, 0x41

    if-lt p0, v1, :cond_0

    .line 1193
    const/16 v1, 0x46

    if-gt p0, v1, :cond_3

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1194
    :cond_3
    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    .line 1195
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method checkQuestion(I)Z
    .locals 2
    .param p1, "off"    # I

    .prologue
    .line 442
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method decodeEscaped()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const v5, 0x10ffff

    .line 1091
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const-string v3, "parser.next.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1092
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 1093
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 1185
    :goto_0
    return v0

    .line 1094
    :sswitch_0
    const/16 v0, 0x1b

    goto :goto_0

    .line 1095
    :sswitch_1
    const/16 v0, 0xc

    goto :goto_0

    .line 1096
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 1097
    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 1098
    :sswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 1101
    :sswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1102
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1103
    :cond_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_7

    .line 1104
    const/4 v2, 0x0

    .line 1105
    .local v2, "v1":I
    const/4 v1, 0x0

    .line 1107
    .local v1, "uv":I
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1108
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1109
    :cond_2
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_3

    .line 1114
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_5

    const-string v3, "parser.descape.3"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1111
    :cond_3
    mul-int/lit8 v3, v1, 0x10

    if-le v1, v3, :cond_4

    const-string v3, "parser.descape.2"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1112
    :cond_4
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1113
    goto :goto_1

    .line 1115
    :cond_5
    if-le v1, v5, :cond_6

    const-string v3, "parser.descape.4"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1116
    :cond_6
    move v0, v1

    .line 1117
    goto :goto_0

    .line 1118
    .end local v1    # "uv":I
    .end local v2    # "v1":I
    :cond_7
    const/4 v2, 0x0

    .line 1119
    .restart local v2    # "v1":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_9

    .line 1120
    :cond_8
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1121
    :cond_9
    move v1, v2

    .line 1122
    .restart local v1    # "uv":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1123
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_b

    .line 1124
    :cond_a
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1125
    :cond_b
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1126
    move v0, v1

    .line 1128
    goto/16 :goto_0

    .line 1131
    .end local v1    # "uv":I
    .end local v2    # "v1":I
    :sswitch_6
    const/4 v2, 0x0

    .line 1132
    .restart local v2    # "v1":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1133
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_c

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_d

    .line 1134
    :cond_c
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1135
    :cond_d
    move v1, v2

    .line 1136
    .restart local v1    # "uv":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1137
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_e

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_f

    .line 1138
    :cond_e
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1139
    :cond_f
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1140
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1141
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_10

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_11

    .line 1142
    :cond_10
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1143
    :cond_11
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1144
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1145
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_12

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_13

    .line 1146
    :cond_12
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1147
    :cond_13
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1148
    move v0, v1

    .line 1149
    goto/16 :goto_0

    .line 1152
    .end local v1    # "uv":I
    .end local v2    # "v1":I
    :sswitch_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1153
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_14

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    .restart local v2    # "v1":I
    if-gez v2, :cond_15

    .line 1154
    .end local v2    # "v1":I
    :cond_14
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1155
    .restart local v2    # "v1":I
    :cond_15
    move v1, v2

    .line 1156
    .restart local v1    # "uv":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1157
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_16

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_17

    .line 1158
    :cond_16
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1159
    :cond_17
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1160
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1161
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_18

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_19

    .line 1162
    :cond_18
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1163
    :cond_19
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1164
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1165
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_1a

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_1b

    .line 1166
    :cond_1a
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1167
    :cond_1b
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1168
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1169
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_1c

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_1d

    .line 1170
    :cond_1c
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1171
    :cond_1d
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1172
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1173
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_1e

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_1f

    .line 1174
    :cond_1e
    const-string v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1175
    :cond_1f
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    .line 1176
    if-le v1, v5, :cond_20

    const-string v3, "parser.descappe.4"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1177
    :cond_20
    move v0, v1

    .line 1178
    goto/16 :goto_0

    .line 1182
    .end local v1    # "uv":I
    .end local v2    # "v1":I
    :sswitch_8
    const-string v3, "parser.descape.5"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 1093
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_8
        0x5a -> :sswitch_8
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x75 -> :sswitch_6
        0x76 -> :sswitch_7
        0x78 -> :sswitch_5
        0x7a -> :sswitch_8
    .end sparse-switch
.end method

.method final ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "loc"    # I

    .prologue
    .line 109
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .param p1, "ch"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x20

    .line 1056
    sparse-switch p1, :sswitch_data_0

    .line 1083
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal Error: shorthands: \\u"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1058
    :sswitch_0
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    const-string v1, "Nd"

    invoke-static {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 1085
    .local v0, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :goto_0
    return-object v0

    .line 1059
    .end local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0

    .line 1062
    :sswitch_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    const-string v1, "Nd"

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 1064
    .restart local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :goto_1
    goto :goto_0

    .line 1063
    .end local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_1

    .line 1066
    :sswitch_2
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1067
    const-string v1, "IsWord"

    invoke-static {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 1068
    .restart local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :goto_2
    goto :goto_0

    .line 1067
    .end local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_2

    .line 1070
    :sswitch_3
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1071
    const-string v1, "IsWord"

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 1072
    .restart local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :goto_3
    goto :goto_0

    .line 1071
    .end local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_3
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_3

    .line 1074
    :sswitch_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1075
    const-string v1, "IsSpace"

    invoke-static {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 1076
    .restart local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :goto_4
    goto :goto_0

    .line 1075
    .end local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_4

    .line 1078
    :sswitch_5
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1079
    const-string v1, "IsSpace"

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    .line 1080
    .restart local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :goto_5
    goto :goto_0

    .line 1079
    .end local v0    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_5
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_5

    .line 1056
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x53 -> :sswitch_5
        0x57 -> :sswitch_3
        0x64 -> :sswitch_0
        0x73 -> :sswitch_4
        0x77 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final isSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 113
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->options:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final next()V
    .locals 9

    .prologue
    const/16 v8, 0x29

    const/4 v7, 0x1

    const/16 v6, 0x200

    .line 160
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_0

    .line 161
    const/4 v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 162
    iput v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    .line 295
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 168
    .local v0, "ch":I
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 170
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    if-ne v3, v7, :cond_5

    .line 173
    sparse-switch v0, :sswitch_data_0

    .line 199
    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_2

    .line 200
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 201
    .local v1, "low":I
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isLowSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 203
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 206
    .end local v1    # "low":I
    :cond_2
    const/4 v2, 0x0

    .line 208
    .local v2, "ret":I
    :goto_1
    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    goto :goto_0

    .line 175
    .end local v2    # "ret":I
    :sswitch_0
    const/16 v2, 0xa

    .line 176
    .restart local v2    # "ret":I
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_3

    .line 177
    const-string v3, "parser.next.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 178
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    goto :goto_1

    .line 184
    .end local v2    # "ret":I
    :sswitch_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_4

    .line 185
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 186
    const/16 v2, 0x18

    .line 187
    .restart local v2    # "ret":I
    goto :goto_1

    .line 188
    .end local v2    # "ret":I
    :cond_4
    const/4 v2, 0x0

    .line 189
    .restart local v2    # "ret":I
    goto :goto_1

    .line 192
    .end local v2    # "ret":I
    :sswitch_2
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    .line 194
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 195
    const/16 v2, 0x14

    .line 196
    .restart local v2    # "ret":I
    goto :goto_1

    .line 212
    .end local v2    # "ret":I
    :cond_5
    sparse-switch v0, :sswitch_data_1

    .line 292
    const/4 v2, 0x0

    .line 294
    .restart local v2    # "ret":I
    :cond_6
    :goto_2
    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    goto/16 :goto_0

    .line 213
    .end local v2    # "ret":I
    :sswitch_3
    const/4 v2, 0x2

    .restart local v2    # "ret":I
    goto :goto_2

    .line 214
    .end local v2    # "ret":I
    :sswitch_4
    const/4 v2, 0x3

    .restart local v2    # "ret":I
    goto :goto_2

    .line 215
    .end local v2    # "ret":I
    :sswitch_5
    const/4 v2, 0x4

    .restart local v2    # "ret":I
    goto :goto_2

    .line 216
    .end local v2    # "ret":I
    :sswitch_6
    const/4 v2, 0x5

    .restart local v2    # "ret":I
    goto :goto_2

    .line 217
    .end local v2    # "ret":I
    :sswitch_7
    const/4 v2, 0x7

    .restart local v2    # "ret":I
    goto :goto_2

    .line 218
    .end local v2    # "ret":I
    :sswitch_8
    const/16 v2, 0x8

    .restart local v2    # "ret":I
    goto :goto_2

    .line 219
    .end local v2    # "ret":I
    :sswitch_9
    const/16 v2, 0x9

    .restart local v2    # "ret":I
    goto :goto_2

    .line 221
    .end local v2    # "ret":I
    :sswitch_a
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 222
    const/4 v2, 0x0

    .line 223
    .restart local v2    # "ret":I
    goto :goto_2

    .line 225
    .end local v2    # "ret":I
    :cond_7
    const/16 v2, 0xb

    .line 227
    .restart local v2    # "ret":I
    goto :goto_2

    .line 229
    .end local v2    # "ret":I
    :sswitch_b
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 230
    const/4 v2, 0x0

    .line 231
    .restart local v2    # "ret":I
    goto :goto_2

    .line 233
    .end local v2    # "ret":I
    :cond_8
    const/16 v2, 0xc

    .line 235
    .restart local v2    # "ret":I
    goto :goto_2

    .line 237
    .end local v2    # "ret":I
    :sswitch_c
    const/4 v2, 0x6

    .line 238
    .restart local v2    # "ret":I
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_6

    .line 240
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_6

    .line 242
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_9

    .line 243
    const-string v3, "parser.next.2"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 244
    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 245
    sparse-switch v0, :sswitch_data_2

    .line 272
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_b

    const/16 v3, 0x61

    if-gt v3, v0, :cond_a

    const/16 v3, 0x7a

    if-le v0, v3, :cond_b

    :cond_a
    const/16 v3, 0x41

    if-gt v3, v0, :cond_12

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_12

    .line 273
    :cond_b
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 274
    const/16 v2, 0x16

    .line 275
    goto :goto_2

    .line 246
    :sswitch_d
    const/16 v2, 0xd

    goto :goto_2

    .line 247
    :sswitch_e
    const/16 v2, 0xe

    goto/16 :goto_2

    .line 248
    :sswitch_f
    const/16 v2, 0xf

    goto/16 :goto_2

    .line 249
    :sswitch_10
    const/16 v2, 0x13

    goto/16 :goto_2

    .line 250
    :sswitch_11
    const/16 v2, 0x12

    goto/16 :goto_2

    .line 252
    :sswitch_12
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_c

    .line 253
    const-string v3, "parser.next.2"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 254
    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 255
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_d

    .line 256
    const/16 v2, 0x10

    .line 257
    goto/16 :goto_2

    :cond_d
    const/16 v3, 0x21

    if-ne v0, v3, :cond_e

    .line 258
    const/16 v2, 0x11

    .line 259
    goto/16 :goto_2

    .line 260
    :cond_e
    const-string v3, "parser.next.3"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 264
    :cond_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 265
    if-ne v0, v8, :cond_10

    .line 267
    :goto_3
    if-eq v0, v8, :cond_11

    .line 268
    const-string v3, "parser.next.4"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 263
    :cond_10
    :sswitch_13
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_f

    goto :goto_3

    .line 269
    :cond_11
    const/16 v2, 0x15

    .line 270
    goto/16 :goto_2

    .line 276
    :cond_12
    const/16 v3, 0x28

    if-ne v0, v3, :cond_13

    .line 277
    const/16 v2, 0x17

    .line 278
    goto/16 :goto_2

    .line 280
    :cond_13
    const-string v3, "parser.next.2"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 285
    .end local v2    # "ret":I
    :sswitch_14
    const/16 v2, 0xa

    .line 286
    .restart local v2    # "ret":I
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_14

    .line 287
    const-string v3, "parser.next.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    .line 288
    :cond_14
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    goto/16 :goto_2

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x5b -> :sswitch_2
        0x5c -> :sswitch_0
    .end sparse-switch

    .line 212
    :sswitch_data_1
    .sparse-switch
        0x24 -> :sswitch_b
        0x28 -> :sswitch_c
        0x29 -> :sswitch_7
        0x2a -> :sswitch_4
        0x2b -> :sswitch_5
        0x2e -> :sswitch_8
        0x3f -> :sswitch_6
        0x5b -> :sswitch_9
        0x5c -> :sswitch_14
        0x5e -> :sswitch_a
        0x7c -> :sswitch_3
    .end sparse-switch

    .line 245
    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_f
        0x23 -> :sswitch_13
        0x3a -> :sswitch_d
        0x3c -> :sswitch_12
        0x3d -> :sswitch_e
        0x3e -> :sswitch_11
        0x5b -> :sswitch_10
    .end sparse-switch
.end method

.method declared-synchronized parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 5
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->options:I

    .line 118
    const/4 v3, 0x0

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 119
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    .line 120
    const/4 v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    .line 121
    const/4 v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    .line 122
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    .line 123
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    .line 124
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    .line 126
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    .line 129
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 130
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    .line 131
    .local v2, "ret":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-eq v3, v4, :cond_1

    .line 132
    const-string v3, "parser.parse.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v2    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 133
    .restart local v2    # "ret":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 139
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    return-object v2

    .line 135
    .restart local v0    # "i":I
    :cond_3
    :try_start_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    .line 136
    .local v1, "position":Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;->refNumber:I

    if-gt v3, v4, :cond_4

    .line 137
    const-string v3, "parser.parse.2"

    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;->position:I

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method parseAtom()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 749
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    .line 750
    .local v0, "ch":I
    const/4 v5, 0x0

    .line 751
    .local v5, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    packed-switch v0, :pswitch_data_0

    .line 833
    :pswitch_0
    const-string v6, "parser.atom.4"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 752
    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processParen()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    .line 835
    :goto_0
    return-object v6

    .line 753
    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processParen2()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 754
    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCondition()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 755
    :pswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processModifiers()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 756
    :pswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processIndependent()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 758
    :pswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 759
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    :cond_0
    :goto_1
    move-object v6, v5

    .line 835
    goto :goto_0

    .line 769
    :pswitch_7
    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    goto :goto_0

    .line 770
    :pswitch_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseSetOperations()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    goto :goto_0

    .line 773
    :pswitch_9
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    packed-switch v6, :pswitch_data_1

    .line 811
    :pswitch_a
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v5

    .line 813
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto :goto_1

    .line 777
    :pswitch_b
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    .line 778
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    move-object v6, v5

    .line 779
    goto :goto_0

    .line 784
    :pswitch_c
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v1

    .line 785
    .local v1, "ch2":I
    const/high16 v6, 0x10000

    if-ge v1, v6, :cond_2

    .line 786
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v5

    .line 787
    goto :goto_2

    .line 788
    :cond_2
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v5

    .line 791
    goto :goto_2

    .line 793
    .end local v1    # "ch2":I
    :pswitch_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_c()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 794
    :pswitch_e
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_C()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 795
    :pswitch_f
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_i()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 796
    :pswitch_10
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_I()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 797
    :pswitch_11
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_g()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 798
    :pswitch_12
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_X()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 801
    :pswitch_13
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBackreference()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    .line 805
    :pswitch_14
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 806
    .local v3, "pstart":I
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v5

    .line 807
    if-nez v5, :cond_1

    const-string v6, "parser.atom.5"

    invoke-virtual {p0, v6, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 817
    .end local v3    # "pstart":I
    :pswitch_15
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_3

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v7, 0x7b

    if-eq v6, v7, :cond_3

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_4

    .line 818
    :cond_3
    const-string v6, "parser.atom.4"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 819
    :cond_4
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v5

    .line 820
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 821
    .local v2, "high":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 822
    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 823
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 824
    const/4 v6, 0x2

    new-array v4, v6, [C

    .line 825
    .local v4, "sur":[C
    int-to-char v6, v2

    aput-char v6, v4, v8

    .line 826
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    int-to-char v6, v6

    aput-char v6, v4, v9

    .line 827
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v6

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v5

    .line 828
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto/16 :goto_1

    .line 751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 773
    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_10
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_11
        :pswitch_a
        :pswitch_f
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 21
    .param p1, "useNrange"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 870
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 872
    const/4 v9, 0x0

    .line 873
    .local v9, "nrange":Z
    const/4 v3, 0x0

    .line 875
    .local v3, "base":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x5e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 876
    const/4 v9, 0x1

    .line 877
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 878
    if-eqz p1, :cond_1

    .line 879
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v15

    .line 889
    .local v15, "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :goto_0
    const/4 v6, 0x1

    .line 890
    .local v6, "firstloop":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v17

    .local v17, "type":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1009
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    .line 1010
    const-string v18, "parser.cc.2"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 881
    .end local v6    # "firstloop":Z
    .end local v15    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .end local v17    # "type":I
    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v3

    .line 882
    const/16 v18, 0x0

    const v19, 0x10ffff

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 883
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v15

    .line 885
    .restart local v15    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    goto :goto_0

    .line 886
    .end local v15    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_2
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v15

    .restart local v15    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    goto :goto_0

    .line 891
    .restart local v6    # "firstloop":Z
    .restart local v17    # "type":I
    :cond_3
    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x5d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    if-eqz v6, :cond_0

    .line 893
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 894
    .local v4, "c":I
    const/4 v5, 0x0

    .line 895
    .local v5, "end":Z
    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 896
    sparse-switch v4, :sswitch_data_0

    .line 920
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v4

    .line 960
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 961
    if-nez v5, :cond_8

    .line 962
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    .line 963
    :cond_6
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_7

    const v18, 0xffff

    move/from16 v0, v18

    if-le v4, v0, :cond_15

    .line 964
    :cond_7
    invoke-virtual {v15, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 1003
    :cond_8
    :goto_3
    const/16 v18, 0x400

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1005
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1007
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 900
    :sswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 901
    const/4 v5, 0x1

    .line 902
    goto :goto_2

    .line 906
    :sswitch_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCIinCharacterClass(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v4

    .line 907
    if-gez v4, :cond_5

    const/4 v5, 0x1

    .line 908
    goto :goto_2

    .line 912
    :sswitch_2
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 913
    .local v11, "pstart":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v16

    .line 914
    .local v16, "tok2":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    if-nez v16, :cond_a

    const-string v18, "parser.atom.5"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 915
    :cond_a
    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 916
    const/4 v5, 0x1

    .line 917
    goto/16 :goto_2

    .line 924
    .end local v11    # "pstart":I
    .end local v16    # "tok2":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_b
    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3a

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 926
    .local v8, "nameend":I
    if-gez v8, :cond_c

    const-string v18, "parser.cc.1"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 927
    :cond_c
    const/4 v10, 0x1

    .line 928
    .local v10, "positive":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x5e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 930
    const/4 v10, 0x0

    .line 932
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 934
    .local v7, "name":Ljava/lang/String;
    const/16 v18, 0x200

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    .line 933
    move/from16 v0, v18

    invoke-static {v7, v10, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;ZZ)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v12

    .line 935
    .local v12, "range":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    if-nez v12, :cond_e

    const-string v18, "parser.cc.3"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 936
    :cond_e
    invoke-virtual {v15, v12}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 937
    const/4 v5, 0x1

    .line 938
    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x5d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 939
    :cond_f
    const-string v18, "parser.cc.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 940
    :cond_10
    add-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto/16 :goto_2

    .line 942
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "nameend":I
    .end local v10    # "positive":Z
    .end local v12    # "range":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_11
    const/16 v18, 0x18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    if-nez v6, :cond_5

    .line 943
    if-eqz v9, :cond_12

    .line 944
    const/4 v9, 0x0

    .line 945
    if-eqz p1, :cond_14

    .line 946
    invoke-static {v15}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v15

    .end local v15    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    check-cast v15, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 953
    .restart local v15    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_12
    :goto_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v13

    .line 954
    .local v13, "range2":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    invoke-virtual {v15, v13}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 955
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x5d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 956
    :cond_13
    const-string v18, "parser.cc.5"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 949
    .end local v13    # "range2":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_14
    invoke-virtual {v3, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 950
    move-object v15, v3

    goto :goto_4

    .line 967
    :cond_15
    invoke-static {v15, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto/16 :goto_3

    .line 970
    :cond_16
    const/16 v18, 0x18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 971
    const-string v18, "parser.cc.8"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 974
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 975
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    const-string v18, "parser.cc.2"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 976
    :cond_18
    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x5d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    .line 977
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_19

    const v18, 0xffff

    move/from16 v0, v18

    if-le v4, v0, :cond_1a

    .line 978
    :cond_19
    invoke-virtual {v15, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 983
    :goto_5
    const/16 v18, 0x2d

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto/16 :goto_3

    .line 981
    :cond_1a
    invoke-static {v15, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto :goto_5

    .line 985
    :cond_1b
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 986
    .local v14, "rangeend":I
    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 987
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v14

    .line 989
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 990
    if-le v4, v14, :cond_1d

    .line 991
    const-string v18, "parser.ope.3"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    .line 993
    :cond_1d
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 994
    const v18, 0xffff

    move/from16 v0, v18

    if-le v4, v0, :cond_1f

    const v18, 0xffff

    move/from16 v0, v18

    if-le v14, v0, :cond_1f

    .line 995
    :cond_1e
    invoke-virtual {v15, v4, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto/16 :goto_3

    .line 998
    :cond_1f
    invoke-static {v15, v4, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveCharRange(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;II)V

    goto/16 :goto_3

    .line 1013
    .end local v4    # "c":I
    .end local v5    # "end":Z
    .end local v14    # "rangeend":I
    :cond_20
    if-nez p1, :cond_21

    if-eqz v9, :cond_21

    .line 1014
    invoke-virtual {v3, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 1015
    move-object v15, v3

    .line 1017
    :cond_21
    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 1018
    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 1019
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1022
    return-object v15

    .line 896
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x44 -> :sswitch_0
        0x49 -> :sswitch_1
        0x50 -> :sswitch_2
        0x53 -> :sswitch_0
        0x57 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_0
        0x69 -> :sswitch_1
        0x70 -> :sswitch_2
        0x73 -> :sswitch_0
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 645
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    .line 647
    .local v0, "ch":I
    packed-switch v0, :pswitch_data_0

    .line 671
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseAtom()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    .line 672
    .local v5, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    .line 673
    packed-switch v0, :pswitch_data_1

    .line 739
    .end local v5    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_0
    :goto_1
    :pswitch_1
    return-object v5

    .line 648
    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCaret()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 649
    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processDollar()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 650
    :pswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processLookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 651
    :pswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processNegativelookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 652
    :pswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processLookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 653
    :pswitch_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processNegativelookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 656
    :pswitch_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 657
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 660
    :pswitch_9
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 666
    :sswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_lt()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 661
    :sswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_A()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 662
    :sswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_Z()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 663
    :sswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_z()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 664
    :sswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_b()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 665
    :sswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_B()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 667
    :sswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_gt()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 674
    .restart local v5    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :pswitch_a
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processStar(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 675
    :pswitch_b
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processPlus(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 676
    :pswitch_c
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processQuestion(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    .line 678
    :pswitch_d
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_0

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v6, v7, :cond_0

    .line 680
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 681
    .local v3, "off":I
    const/4 v2, 0x0

    .local v2, "min":I
    const/4 v1, -0x1

    .line 683
    .local v1, "max":I
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .local v4, "off":I
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_3

    if-gt v0, v9, :cond_3

    .line 685
    add-int/lit8 v2, v0, -0x30

    move v3, v4

    .line 686
    .end local v4    # "off":I
    .restart local v3    # "off":I
    :goto_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v6, :cond_f

    .line 687
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .restart local v4    # "off":I
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_1

    .line 686
    if-le v0, v9, :cond_2

    .line 697
    :cond_1
    :goto_3
    move v1, v2

    .line 698
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_d

    .line 700
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v4, v6, :cond_4

    .line 701
    const-string v6, "parser.quantifier.3"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 688
    :cond_2
    mul-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v0

    add-int/lit8 v2, v6, -0x30

    .line 689
    if-gez v2, :cond_e

    .line 690
    const-string v6, "parser.quantifier.5"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 694
    :cond_3
    const-string v6, "parser.quantifier.1"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 703
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off":I
    .restart local v3    # "off":I
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_8

    if-gt v0, v9, :cond_8

    .line 705
    add-int/lit8 v1, v0, -0x30

    .line 706
    :goto_4
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v6, :cond_6

    .line 707
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .restart local v4    # "off":I
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_5

    .line 706
    if-le v0, v9, :cond_7

    :cond_5
    move v3, v4

    .line 714
    .end local v4    # "off":I
    .restart local v3    # "off":I
    :cond_6
    if-le v2, v1, :cond_9

    .line 715
    const-string v6, "parser.quantifier.4"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 709
    .end local v3    # "off":I
    .restart local v4    # "off":I
    :cond_7
    mul-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v0

    add-int/lit8 v1, v6, -0x30

    .line 710
    if-gez v1, :cond_c

    .line 711
    const-string v6, "parser.quantifier.5"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 718
    .end local v4    # "off":I
    .restart local v3    # "off":I
    :cond_8
    const/4 v1, -0x1

    .line 722
    :cond_9
    :goto_5
    const/16 v6, 0x7d

    if-eq v0, v6, :cond_a

    .line 723
    const-string v6, "parser.quantifier.2"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 725
    :cond_a
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->checkQuestion(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 726
    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v5

    .line 727
    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 733
    :goto_6
    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setMin(I)V

    .line 734
    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setMax(I)V

    .line 736
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto/16 :goto_1

    .line 729
    :cond_b
    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v5

    .line 730
    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto :goto_6

    .end local v3    # "off":I
    .restart local v4    # "off":I
    :cond_c
    move v3, v4

    .end local v4    # "off":I
    .restart local v3    # "off":I
    goto :goto_4

    .end local v3    # "off":I
    .restart local v4    # "off":I
    :cond_d
    move v3, v4

    .end local v4    # "off":I
    .restart local v3    # "off":I
    goto :goto_5

    .end local v3    # "off":I
    .restart local v4    # "off":I
    :cond_e
    move v3, v4

    .end local v4    # "off":I
    .restart local v3    # "off":I
    goto/16 :goto_2

    :cond_f
    move v4, v3

    .end local v3    # "off":I
    .restart local v4    # "off":I
    goto/16 :goto_3

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 673
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x3e -> :sswitch_6
        0x41 -> :sswitch_1
        0x42 -> :sswitch_5
        0x5a -> :sswitch_2
        0x62 -> :sswitch_4
        0x7a -> :sswitch_3
    .end sparse-switch
.end method

.method parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    .line 308
    .local v1, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    const/4 v0, 0x0

    .line 309
    .local v0, "parent":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 318
    return-object v1

    .line 310
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 311
    if-nez v0, :cond_1

    .line 312
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 314
    move-object v1, v0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0
.end method

.method protected parseSetOperations()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2d

    const/16 v8, 0x26

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1029
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    .line 1031
    .local v2, "tok":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 1050
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1051
    return-object v2

    .line 1032
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 1033
    .local v0, "ch":I
    if-nez v3, :cond_1

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_2

    .line 1034
    :cond_1
    if-ne v3, v7, :cond_7

    .line 1035
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 1036
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    const-string v4, "parser.ope.1"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4

    .line 1037
    :cond_3
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    .line 1038
    .local v1, "t2":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    if-ne v3, v7, :cond_4

    .line 1039
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    .line 1040
    :cond_4
    if-ne v0, v9, :cond_5

    .line 1041
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    .line 1042
    :cond_5
    if-ne v0, v8, :cond_6

    .line 1043
    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    .line 1045
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ASSERT"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1047
    .end local v1    # "t2":Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :cond_7
    const-string v4, "parser.ope.2"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4
.end method

.method parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 325
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    .line 326
    .local v0, "ch":I
    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    if-ne v0, v4, :cond_2

    .line 327
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    .line 340
    :cond_1
    return-object v2

    .line 329
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    .line 330
    .local v2, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    const/4 v1, 0x0

    .line 331
    .local v1, "concat":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v4, :cond_1

    .line 332
    if-nez v1, :cond_3

    .line 333
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 335
    move-object v2, v1

    .line 337
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0
.end method

.method processBackreference()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 601
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    add-int/lit8 v2, v4, -0x30

    .line 602
    .local v2, "refnum":I
    move v1, v2

    .line 604
    .local v1, "finalRefnum":I
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-gt v4, v2, :cond_1

    .line 605
    const-string v4, "parser.parse.2"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4

    .line 608
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 609
    .local v0, "ch":I
    const/16 v4, 0x30

    if-gt v4, v0, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    .line 610
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    .line 611
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-ge v2, v4, :cond_2

    .line 612
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 613
    move v1, v2

    .line 614
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    .line 607
    .end local v0    # "ch":I
    :cond_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v4, v5, :cond_0

    .line 625
    :cond_2
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v3

    .line 626
    .local v3, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    .line 627
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    .line 628
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x2

    invoke-direct {v5, v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 630
    return-object v3
.end method

.method processBacksolidus_A()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 384
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_B()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 400
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_C()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 582
    const-string v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_I()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 590
    const-string v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_X()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 598
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getCombiningCharacterSequence()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_Z()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 388
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_b()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 396
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_c()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 575
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v1, v2, :cond_0

    .line 576
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch2":I
    const v1, 0xffe0

    and-int/2addr v1, v0

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    .line 577
    .end local v0    # "ch2":I
    :cond_0
    const-string v1, "parser.atom.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    .line 578
    .restart local v0    # "ch2":I
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 579
    add-int/lit8 v1, v0, -0x40

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v1

    return-object v1
.end method

.method processBacksolidus_g()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 594
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getGraphemePattern()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_gt()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 408
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_i()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 585
    const/16 v1, 0x69

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    .line 586
    .local v0, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 587
    return-object v0
.end method

.method processBacksolidus_lt()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 404
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method protected processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 841
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_1

    .line 842
    :cond_0
    const-string v4, "parser.atom.2"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4

    .line 845
    :cond_1
    const/16 v4, 0x70

    if-ne p1, v4, :cond_2

    const/4 v3, 0x1

    .line 846
    .local v3, "positive":Z
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 847
    .local v1, "namestart":I
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 849
    .local v0, "nameend":I
    if-gez v0, :cond_3

    .line 850
    const-string v4, "parser.atom.3"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4

    .line 845
    .end local v0    # "nameend":I
    .end local v1    # "namestart":I
    .end local v3    # "positive":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 852
    .restart local v0    # "nameend":I
    .restart local v1    # "namestart":I
    .restart local v3    # "positive":Z
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, "pname":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 855
    const/16 v4, 0x200

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;ZZ)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    return-object v4
.end method

.method processBacksolidus_z()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 392
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processCIinCharacterClass(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I
    .locals 1
    .param p1, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .param p2, "c"    # I

    .prologue
    .line 859
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v0

    return v0
.end method

.method processCaret()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 348
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processCondition()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x39

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 462
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v6, v7, :cond_0

    const-string v6, "parser.factor.4"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 464
    :cond_0
    const/4 v4, -0x1

    .line 465
    .local v4, "refno":I
    const/4 v1, 0x0

    .line 466
    .local v1, "condition":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 467
    .local v0, "ch":I
    const/16 v6, 0x31

    if-gt v6, v0, :cond_7

    if-gt v0, v8, :cond_7

    .line 468
    add-int/lit8 v4, v0, -0x30

    .line 469
    move v2, v4

    .line 471
    .local v2, "finalRefno":I
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-gt v6, v4, :cond_2

    .line 472
    const-string v6, "parser.parse.2"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 475
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 476
    const/16 v6, 0x30

    if-gt v6, v0, :cond_3

    if-gt v0, v8, :cond_3

    .line 477
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    .line 478
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-ge v4, v6, :cond_3

    .line 479
    move v2, v4

    .line 480
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 474
    :cond_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v6, v7, :cond_1

    .line 491
    :cond_3
    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    .line 492
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-nez v6, :cond_4

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    .line 493
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    new-instance v7, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    iget v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-direct {v7, v2, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 494
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 495
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-eq v6, v7, :cond_5

    const-string v6, "parser.factor.1"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 496
    :cond_5
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 515
    .end local v2    # "finalRefno":I
    :cond_6
    :sswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 516
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    .line 517
    .local v5, "yesPattern":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    const/4 v3, 0x0

    .line 518
    .local v3, "noPattern":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    iget v6, v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v10, :cond_a

    .line 519
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v6

    if-eq v6, v10, :cond_9

    const-string v6, "parser.factor.6"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 498
    .end local v3    # "noPattern":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .end local v5    # "yesPattern":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_7
    const/16 v6, 0x3f

    if-ne v0, v6, :cond_8

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 499
    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 500
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    .line 501
    iget v6, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    sparse-switch v6, :sswitch_data_0

    .line 511
    const-string v6, "parser.factor.5"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 508
    :sswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v6

    if-eq v6, v11, :cond_6

    const-string v6, "parser.factor.1"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 520
    .restart local v3    # "noPattern":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .restart local v5    # "yesPattern":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_9
    invoke-virtual {v5, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    .line 521
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    .line 523
    :cond_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v6

    if-eq v6, v11, :cond_b

    const-string v6, "parser.factor.1"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    .line 524
    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 525
    invoke-static {v4, v1, v5, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createCondition(ILmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    move-result-object v6

    return-object v6

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method processDollar()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 352
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processIndependent()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 568
    const/16 v1, 0x18

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    .line 569
    .local v0, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    .line 570
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 571
    return-object v0
.end method

.method processLookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 356
    const/16 v1, 0x14

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    .line 357
    .local v0, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    .line 358
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 359
    return-object v0
.end method

.method processLookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 370
    const/16 v1, 0x16

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    .line 371
    .local v0, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    .line 372
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 373
    return-object v0
.end method

.method processModifiers()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x0

    .local v0, "add":I
    const/4 v2, 0x0

    .local v2, "mask":I
    const/4 v1, -0x1

    .line 531
    .local v1, "ch":I
    :goto_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v5, v6, :cond_1

    .line 538
    :cond_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v5, v6, :cond_2

    const-string v5, "parser.factor.2"

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v5

    throw v5

    .line 532
    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 533
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v4

    .line 534
    .local v4, "v":I
    if-eqz v4, :cond_0

    .line 535
    or-int/2addr v0, v4

    .line 536
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto :goto_0

    .line 539
    .end local v4    # "v":I
    :cond_2
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_5

    .line 540
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 541
    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v5, v6, :cond_4

    .line 548
    :cond_3
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v5, v6, :cond_5

    const-string v5, "parser.factor.2"

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v5

    throw v5

    .line 542
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 543
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v4

    .line 544
    .restart local v4    # "v":I
    if-eqz v4, :cond_3

    .line 545
    or-int/2addr v2, v4

    .line 546
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto :goto_1

    .line 551
    .end local v4    # "v":I
    :cond_5
    const/16 v5, 0x3a

    if-ne v1, v5, :cond_7

    .line 552
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 553
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 554
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createModifierGroup(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    move-result-object v3

    .line 555
    .local v3, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_6

    const-string v5, "parser.factor.1"

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v5

    throw v5

    .line 556
    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 564
    :goto_2
    return-object v3

    .line 557
    .end local v3    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_7
    const/16 v5, 0x29

    if-ne v1, v5, :cond_8

    .line 558
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    .line 559
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 560
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createModifierGroup(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    move-result-object v3

    .line 561
    .restart local v3    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    goto :goto_2

    .line 562
    .end local v3    # "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :cond_8
    const-string v5, "parser.factor.3"

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v5

    throw v5
.end method

.method processNegativelookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 363
    const/16 v1, 0x15

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    .line 364
    .local v0, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    .line 365
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 366
    return-object v0
.end method

.method processNegativelookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 377
    const/16 v1, 0x17

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    .line 378
    .local v0, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    .line 379
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 380
    return-object v0
.end method

.method processParen()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 446
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    .line 447
    .local v0, "p":I
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v1

    .line 448
    .local v1, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const-string v2, "parser.factor.1"

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v2

    throw v2

    .line 449
    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    .line 450
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 451
    return-object v1
.end method

.method processParen2()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 455
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    .line 456
    .local v0, "tok":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    .line 457
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 458
    return-object v0
.end method

.method processPlus(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .param p1, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 421
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 423
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v0

    goto :goto_0
.end method

.method processQuestion(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .param p1, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 430
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v0

    .line 431
    .local v0, "par":Lmf/org/apache/xerces/impl/xpath/regex/Token;
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 432
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 433
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 434
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 439
    :goto_0
    return-object v0

    .line 436
    :cond_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 437
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0
.end method

.method processStar(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .param p1, "tok"    # Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 412
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 413
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    .line 414
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    goto :goto_0
.end method

.method final read()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    return v0
.end method

.method protected final setContext(I)V
    .locals 0
    .param p1, "con"    # I

    .prologue
    .line 152
    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    .line 153
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 95
    :try_start_0
    const-string v1, "mf.org.apache.xerces.impl.xpath.regex.message"

    invoke-static {v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v1, "mf.org.apache.xerces.impl.xpath.regex.message"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "mre":Ljava/util/MissingResourceException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Installation Problem???  Couldn\'t load messages: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
