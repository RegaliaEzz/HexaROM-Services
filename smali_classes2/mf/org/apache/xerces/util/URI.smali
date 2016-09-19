.class public Lmf/org/apache/xerces/util/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static final ASCII_ALPHA_CHARACTERS:I = 0x10

.field private static final ASCII_DIGIT_CHARACTERS:I = 0x20

.field private static final ASCII_HEX_CHARACTERS:I = 0x40

.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:I = 0x2

.field private static final MASK_ALPHA_NUMERIC:I = 0x30

.field private static final MASK_PATH_CHARACTER:I = 0xb2

.field private static final MASK_SCHEME_CHARACTER:I = 0x34

.field private static final MASK_UNRESERVED_MASK:I = 0x32

.field private static final MASK_URI_CHARACTER:I = 0x33

.field private static final MASK_USERINFO_CHARACTER:I = 0x3a

.field private static final PATH_CHARACTERS:I = 0x80

.field private static final RESERVED_CHARACTERS:I = 0x1

.field private static final SCHEME_CHARACTERS:I = 0x4

.field private static final USERINFO_CHARACTERS:I = 0x8

.field private static final fgLookupTable:[B

.field static final serialVersionUID:J = 0x163b2b5de215849eL


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_regAuthority:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x2c

    const/16 v6, 0x26

    const/16 v5, 0x24

    const/16 v4, 0x2b

    .line 94
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    .line 147
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    .line 152
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x46

    if-le v0, v1, :cond_1

    .line 158
    const/16 v0, 0x47

    :goto_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    .line 164
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x3b

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 165
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x2f

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 166
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x3f

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 167
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v8

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 168
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x40

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 169
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v6

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 170
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x3d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 171
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v4

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 172
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v5

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 173
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v7

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 174
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x5b

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 175
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x5d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 178
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x2d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 179
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x5f

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 180
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x2e

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 181
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x21

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 182
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x7e

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 183
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x2a

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 184
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x27

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 185
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x28

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 186
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x29

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 189
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v4

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 190
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x2d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 191
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x2e

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 194
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x3b

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 195
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v8

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 196
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v6

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 197
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x3d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 198
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v4

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 199
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v5

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 200
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v7

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 203
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x3b

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 204
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x2f

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 205
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v8

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 206
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x40

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 207
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v6

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 208
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    const/16 v2, 0x3d

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 209
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v4

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 210
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 211
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v7

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 239
    const/4 v1, 0x0

    sput-boolean v1, Lmf/org/apache/xerces/util/URI;->DEBUG:Z

    return-void

    .line 148
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x60

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 153
    :cond_1
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 154
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x50

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 159
    :cond_2
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 160
    sget-object v1, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_schemeSpecificPart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 350
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 352
    const-string v1, "Cannot construct URI with null/empty scheme!"

    .line 351
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    if-eqz p2, :cond_2

    .line 355
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 356
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 357
    const-string v1, "Cannot construct URI with null/empty scheme-specific part!"

    .line 356
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_userinfo"    # Ljava/lang/String;
    .param p3, "p_host"    # Ljava/lang/String;
    .param p4, "p_port"    # I
    .param p5, "p_path"    # Ljava/lang/String;
    .param p6, "p_queryString"    # Ljava/lang/String;
    .param p7, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 224
    iput v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 419
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v1, "Scheme is required!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1
    if-nez p3, :cond_3

    .line 424
    if-eqz p2, :cond_2

    .line 425
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 426
    const-string v1, "Userinfo may not be specified if host is not specified!"

    .line 425
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_2
    if-eq p4, v1, :cond_3

    .line 429
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 430
    const-string v1, "Port may not be specified if host is not specified!"

    .line 429
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_3
    if-eqz p5, :cond_5

    .line 435
    const/16 v0, 0x3f

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eqz p6, :cond_4

    .line 436
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 437
    const-string v1, "Query string cannot be specified in path and query string!"

    .line 436
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_4
    const/16 v0, 0x23

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    if-eqz p7, :cond_5

    .line 441
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 442
    const-string v1, "Fragment cannot be specified in both the path and fragment!"

    .line 441
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/util/URI;->setHost(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/util/URI;->setPort(I)V

    .line 449
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/util/URI;->setUserinfo(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0, p5}, Lmf/org/apache/xerces/util/URI;->setPath(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, p6}, Lmf/org/apache/xerces/util/URI;->setQueryString(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0, p7}, Lmf/org/apache/xerces/util/URI;->setFragment(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "p_scheme"    # Ljava/lang/String;
    .param p2, "p_host"    # Ljava/lang/String;
    .param p3, "p_path"    # Ljava/lang/String;
    .param p4, "p_queryString"    # Ljava/lang/String;
    .param p5, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .param p2, "allowNonAbsoluteURI"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;Z)V

    .line 297
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/URI;)V
    .locals 2
    .param p1, "p_other"    # Lmf/org/apache/xerces/util/URI;

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 254
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 2
    .param p1, "p_base"    # Lmf/org/apache/xerces/util/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 312
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "p_base"    # Lmf/org/apache/xerces/util/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .param p3, "allowNonAbsoluteURI"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 227
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 234
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 333
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;Z)V

    .line 334
    return-void
.end method

.method private initialize(Lmf/org/apache/xerces/util/URI;)V
    .locals 1
    .param p1, "p_other"    # Lmf/org/apache/xerces/util/URI;

    .prologue
    .line 461
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 462
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 463
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 464
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPort()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 465
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 469
    return-void
.end method

.method private initialize(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    .locals 12
    .param p1, "p_base"    # Lmf/org/apache/xerces/util/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 611
    move-object v8, p2

    .line 612
    .local v8, "uriSpec":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 614
    .local v9, "uriSpecLen":I
    :goto_0
    if-nez p1, :cond_1

    if-nez v9, :cond_1

    .line 615
    new-instance v10, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 616
    const-string v11, "Cannot initialize URI with empty parameters."

    .line 615
    invoke-direct {v10, v11}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 612
    .end local v9    # "uriSpecLen":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 620
    .restart local v9    # "uriSpecLen":I
    :cond_1
    if-nez v9, :cond_3

    .line 621
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;)V

    .line 706
    :cond_2
    :goto_1
    return-void

    .line 625
    :cond_3
    const/4 v2, 0x0

    .line 628
    .local v2, "index":I
    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 629
    .local v0, "colonIdx":I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_8

    .line 630
    add-int/lit8 v4, v0, -0x1

    .line 632
    .local v4, "searchFrom":I
    const/16 v10, 0x2f

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 633
    .local v5, "slashIdx":I
    const/16 v10, 0x3f

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 634
    .local v3, "queryIdx":I
    const/16 v10, 0x23

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 636
    .local v1, "fragmentIdx":I
    if-eqz v0, :cond_4

    const/4 v10, -0x1

    if-ne v5, v10, :cond_4

    .line 637
    const/4 v10, -0x1

    if-ne v3, v10, :cond_4

    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    .line 639
    :cond_4
    if-eqz v0, :cond_5

    if-nez p1, :cond_9

    if-eqz v1, :cond_9

    .line 640
    :cond_5
    new-instance v10, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v11, "No scheme found in URI."

    invoke-direct {v10, v11}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 644
    :cond_6
    invoke-direct {p0, v8}, Lmf/org/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    .line 645
    iget-object v10, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v2, v10, 0x1

    .line 648
    add-int/lit8 v10, v9, -0x1

    if-eq v0, v10, :cond_7

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_9

    .line 649
    :cond_7
    new-instance v10, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v11, "Scheme specific part cannot be empty."

    invoke-direct {v10, v11}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 653
    .end local v1    # "fragmentIdx":I
    .end local v3    # "queryIdx":I
    .end local v4    # "searchFrom":I
    .end local v5    # "slashIdx":I
    :cond_8
    if-nez p1, :cond_9

    const/16 v10, 0x23

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eqz v10, :cond_9

    .line 654
    new-instance v10, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v11, "No scheme found in URI."

    invoke-direct {v10, v11}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 666
    :cond_9
    add-int/lit8 v10, v2, 0x1

    if-ge v10, v9, :cond_b

    .line 667
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_b

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_b

    .line 668
    add-int/lit8 v2, v2, 0x2

    .line 669
    move v6, v2

    .line 672
    .local v6, "startPos":I
    const/4 v7, 0x0

    .line 673
    .local v7, "testChar":C
    :goto_2
    if-lt v2, v9, :cond_c

    .line 684
    :cond_a
    if-le v2, v6, :cond_d

    .line 687
    invoke-virtual {v8, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lmf/org/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 688
    add-int/lit8 v2, v6, -0x2

    .line 696
    .end local v6    # "startPos":I
    .end local v7    # "testChar":C
    :cond_b
    :goto_3
    invoke-direct {p0, v8, v2}, Lmf/org/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    .line 703
    if-eqz p1, :cond_2

    .line 704
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto/16 :goto_1

    .line 674
    .restart local v6    # "startPos":I
    .restart local v7    # "testChar":C
    :cond_c
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 675
    const/16 v10, 0x2f

    if-eq v7, v10, :cond_a

    const/16 v10, 0x3f

    if-eq v7, v10, :cond_a

    const/16 v10, 0x23

    if-eq v7, v10, :cond_a

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 692
    :cond_d
    const-string v10, ""

    iput-object v10, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    goto :goto_3
.end method

.method private initialize(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "p_base"    # Lmf/org/apache/xerces/util/URI;
    .param p2, "p_uriSpec"    # Ljava/lang/String;
    .param p3, "allowNonAbsoluteURI"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 492
    move-object v8, p2

    .line 493
    .local v8, "uriSpec":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 495
    .local v9, "uriSpecLen":I
    :goto_0
    if-nez p1, :cond_3

    if-nez v9, :cond_3

    .line 496
    if-eqz p3, :cond_2

    .line 497
    const-string v10, ""

    iput-object v10, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 590
    :cond_0
    :goto_1
    return-void

    .line 493
    .end local v9    # "uriSpecLen":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 500
    .restart local v9    # "uriSpecLen":I
    :cond_2
    new-instance v10, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v11, "Cannot initialize URI with empty parameters."

    invoke-direct {v10, v11}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 504
    :cond_3
    if-nez v9, :cond_4

    .line 505
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->initialize(Lmf/org/apache/xerces/util/URI;)V

    goto :goto_1

    .line 509
    :cond_4
    const/4 v2, 0x0

    .line 512
    .local v2, "index":I
    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 513
    .local v0, "colonIdx":I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_9

    .line 514
    add-int/lit8 v4, v0, -0x1

    .line 516
    .local v4, "searchFrom":I
    const/16 v10, 0x2f

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 517
    .local v5, "slashIdx":I
    const/16 v10, 0x3f

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 518
    .local v3, "queryIdx":I
    const/16 v10, 0x23

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 520
    .local v1, "fragmentIdx":I
    if-eqz v0, :cond_5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_5

    .line 521
    const/4 v10, -0x1

    if-ne v3, v10, :cond_5

    const/4 v10, -0x1

    if-eq v1, v10, :cond_7

    .line 523
    :cond_5
    if-eqz v0, :cond_6

    if-nez p1, :cond_a

    if-eqz v1, :cond_a

    if-nez p3, :cond_a

    .line 524
    :cond_6
    new-instance v10, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v11, "No scheme found in URI."

    invoke-direct {v10, v11}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 528
    :cond_7
    invoke-direct {p0, v8}, Lmf/org/apache/xerces/util/URI;->initializeScheme(Ljava/lang/String;)V

    .line 529
    iget-object v10, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v2, v10, 0x1

    .line 532
    add-int/lit8 v10, v9, -0x1

    if-eq v0, v10, :cond_8

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_a

    .line 533
    :cond_8
    new-instance v10, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v11, "Scheme specific part cannot be empty."

    invoke-direct {v10, v11}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 537
    .end local v1    # "fragmentIdx":I
    .end local v3    # "queryIdx":I
    .end local v4    # "searchFrom":I
    .end local v5    # "slashIdx":I
    :cond_9
    if-nez p1, :cond_a

    const/16 v10, 0x23

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eqz v10, :cond_a

    if-nez p3, :cond_a

    .line 538
    new-instance v10, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v11, "No scheme found in URI."

    invoke-direct {v10, v11}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 550
    :cond_a
    add-int/lit8 v10, v2, 0x1

    if-ge v10, v9, :cond_c

    .line 551
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_c

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_c

    .line 552
    add-int/lit8 v2, v2, 0x2

    .line 553
    move v6, v2

    .line 556
    .local v6, "startPos":I
    const/4 v7, 0x0

    .line 557
    .local v7, "testChar":C
    :goto_2
    if-lt v2, v9, :cond_d

    .line 568
    :cond_b
    if-le v2, v6, :cond_e

    .line 571
    invoke-virtual {v8, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lmf/org/apache/xerces/util/URI;->initializeAuthority(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 572
    add-int/lit8 v2, v6, -0x2

    .line 580
    .end local v6    # "startPos":I
    .end local v7    # "testChar":C
    :cond_c
    :goto_3
    invoke-direct {p0, v8, v2}, Lmf/org/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    .line 587
    if-eqz p1, :cond_0

    .line 588
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto/16 :goto_1

    .line 558
    .restart local v6    # "startPos":I
    .restart local v7    # "testChar":C
    :cond_d
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 559
    const/16 v10, 0x2f

    if-eq v7, v10, :cond_b

    const/16 v10, 0x3f

    if-eq v7, v10, :cond_b

    const/16 v10, 0x23

    if-eq v7, v10, :cond_b

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 576
    :cond_e
    const-string v10, ""

    iput-object v10, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    goto :goto_3
.end method

.method private initializeAuthority(Ljava/lang/String;)Z
    .locals 14
    .param p1, "p_uriSpec"    # Ljava/lang/String;

    .prologue
    .line 877
    const/4 v5, 0x0

    .line 878
    .local v5, "index":I
    const/4 v9, 0x0

    .line 879
    .local v9, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 881
    .local v2, "end":I
    const/4 v10, 0x0

    .line 882
    .local v10, "testChar":C
    const/4 v11, 0x0

    .line 885
    .local v11, "userinfo":Ljava/lang/String;
    const/16 v12, 0x40

    invoke-virtual {p1, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 886
    :goto_0
    if-lt v5, v2, :cond_4

    .line 893
    :cond_0
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 894
    add-int/lit8 v5, v5, 0x1

    .line 899
    :cond_1
    const/4 v4, 0x0

    .line 900
    .local v4, "host":Ljava/lang/String;
    move v9, v5

    .line 901
    const/4 v3, 0x0

    .line 902
    .local v3, "hasPort":Z
    if-ge v5, v2, :cond_2

    .line 903
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5b

    if-ne v12, v13, :cond_7

    .line 904
    const/16 v12, 0x5d

    invoke-virtual {p1, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 905
    .local v0, "bracketIndex":I
    const/4 v12, -0x1

    if-eq v0, v12, :cond_5

    move v5, v0

    .line 906
    :goto_1
    add-int/lit8 v12, v5, 0x1

    if-ge v12, v2, :cond_6

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3a

    if-ne v12, v13, :cond_6

    .line 907
    add-int/lit8 v5, v5, 0x1

    .line 908
    const/4 v3, 0x1

    .line 920
    .end local v0    # "bracketIndex":I
    :cond_2
    :goto_2
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 921
    const/4 v7, -0x1

    .line 922
    .local v7, "port":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 924
    if-eqz v3, :cond_3

    .line 925
    add-int/lit8 v5, v5, 0x1

    .line 926
    move v9, v5

    .line 927
    :goto_3
    if-lt v5, v2, :cond_a

    .line 930
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 931
    .local v8, "portStr":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 943
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 944
    const/4 v12, -0x1

    if-ne v7, v12, :cond_3

    add-int/lit8 v7, v7, -0x1

    .line 953
    .end local v8    # "portStr":Ljava/lang/String;
    :cond_3
    :goto_4
    invoke-direct {p0, v4, v7, v11}, Lmf/org/apache/xerces/util/URI;->isValidServerBasedAuthority(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 954
    iput-object v4, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 955
    iput v7, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 956
    iput-object v11, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 957
    const/4 v12, 0x1

    .line 967
    :goto_5
    return v12

    .line 887
    .end local v3    # "hasPort":Z
    .end local v4    # "host":Ljava/lang/String;
    .end local v7    # "port":I
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 888
    const/16 v12, 0x40

    if-eq v10, v12, :cond_0

    .line 891
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .restart local v0    # "bracketIndex":I
    .restart local v3    # "hasPort":Z
    .restart local v4    # "host":Ljava/lang/String;
    :cond_5
    move v5, v2

    .line 905
    goto :goto_1

    .line 911
    :cond_6
    move v5, v2

    .line 913
    goto :goto_2

    .line 915
    .end local v0    # "bracketIndex":I
    :cond_7
    const/16 v12, 0x3a

    invoke-virtual {p1, v12, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 916
    .local v1, "colonIndex":I
    if-le v1, v9, :cond_8

    move v5, v1

    .line 917
    :goto_6
    if-eq v5, v2, :cond_9

    const/4 v3, 0x1

    :goto_7
    goto :goto_2

    :cond_8
    move v5, v2

    .line 916
    goto :goto_6

    .line 917
    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    .line 928
    .end local v1    # "colonIndex":I
    .restart local v7    # "port":I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 946
    .restart local v8    # "portStr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 947
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    const/4 v7, -0x2

    goto :goto_4

    .line 963
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    .end local v8    # "portStr":Ljava/lang/String;
    :cond_b
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->isValidRegistryBasedAuthority(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 964
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 965
    const/4 v12, 0x1

    goto :goto_5

    .line 967
    :cond_c
    const/4 v12, 0x0

    goto :goto_5
.end method

.method private initializePath(Ljava/lang/String;I)V
    .locals 9
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .param p2, "p_nStartIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x25

    const/16 v6, 0x23

    .line 1066
    if-nez p1, :cond_0

    .line 1067
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1068
    const-string v5, "Cannot initialize path from null string!"

    .line 1067
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1071
    :cond_0
    move v1, p2

    .line 1072
    .local v1, "index":I
    move v2, p2

    .line 1073
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1074
    .local v0, "end":I
    const/4 v3, 0x0

    .line 1077
    .local v3, "testChar":C
    if-ge v2, v0, :cond_2

    .line 1079
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_f

    .line 1084
    :cond_1
    :goto_0
    if-lt v1, v0, :cond_6

    .line 1143
    :cond_2
    :goto_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1146
    if-ne v3, v8, :cond_4

    .line 1147
    add-int/lit8 v1, v1, 0x1

    .line 1148
    move v2, v1

    .line 1149
    :goto_2
    if-lt v1, v0, :cond_11

    .line 1169
    :cond_3
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1173
    :cond_4
    if-ne v3, v6, :cond_5

    .line 1174
    add-int/lit8 v1, v1, 0x1

    .line 1175
    move v2, v1

    .line 1176
    :goto_3
    if-lt v1, v0, :cond_16

    .line 1194
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1196
    :cond_5
    return-void

    .line 1085
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1088
    if-ne v3, v7, :cond_a

    .line 1089
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_7

    .line 1090
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1091
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1092
    :cond_7
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1093
    const-string v5, "Path contains invalid escape sequence!"

    .line 1092
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1095
    :cond_8
    add-int/lit8 v1, v1, 0x2

    .line 1106
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1099
    :cond_a
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isPathCharacter(C)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1100
    if-eq v3, v8, :cond_2

    if-eq v3, v6, :cond_2

    .line 1103
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1104
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Path contains invalid character: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1103
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1114
    :cond_b
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1116
    if-eq v3, v8, :cond_2

    if-eq v3, v6, :cond_2

    .line 1121
    if-ne v3, v7, :cond_10

    .line 1122
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_c

    .line 1123
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1124
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1125
    :cond_c
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1126
    const-string v5, "Opaque part contains invalid escape sequence!"

    .line 1125
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1128
    :cond_d
    add-int/lit8 v1, v1, 0x2

    .line 1139
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 1113
    :cond_f
    if-lt v1, v0, :cond_b

    goto/16 :goto_1

    .line 1135
    :cond_10
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1136
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1137
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Opaque part contains invalid character: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1136
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1150
    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1151
    if-eq v3, v6, :cond_3

    .line 1154
    if-ne v3, v7, :cond_15

    .line 1155
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_12

    .line 1156
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1157
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1158
    :cond_12
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1159
    const-string v5, "Query string contains invalid escape sequence!"

    .line 1158
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1161
    :cond_13
    add-int/lit8 v1, v1, 0x2

    .line 1167
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1163
    :cond_15
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1164
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1165
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Query string contains invalid character: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1164
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1177
    :cond_16
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1179
    if-ne v3, v7, :cond_1a

    .line 1180
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_17

    .line 1181
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1182
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1183
    :cond_17
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1184
    const-string v5, "Fragment contains invalid escape sequence!"

    .line 1183
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1186
    :cond_18
    add-int/lit8 v1, v1, 0x2

    .line 1192
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 1188
    :cond_1a
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1189
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1190
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fragment contains invalid character: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1189
    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 6
    .param p1, "p_uriSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 844
    .local v3, "uriSpecLen":I
    const/4 v0, 0x0

    .line 845
    .local v0, "index":I
    const/4 v1, 0x0

    .line 846
    .local v1, "scheme":Ljava/lang/String;
    const/4 v2, 0x0

    .line 848
    .local v2, "testChar":C
    :goto_0
    if-lt v0, v3, :cond_1

    .line 856
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 859
    new-instance v4, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v5, "No scheme found in URI."

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 849
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 850
    const/16 v4, 0x3a

    if-eq v2, v4, :cond_0

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_0

    .line 851
    const/16 v4, 0x3f

    if-eq v2, v4, :cond_0

    const/16 v4, 0x23

    if-eq v2, v4, :cond_0

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    :cond_2
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/util/URI;->setScheme(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method private static isAlpha(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2085
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isAlphanum(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2094
    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "p_scheme"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1761
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return v3

    .line 1765
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isAlpha(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1770
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1771
    .local v1, "schemeLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 1778
    const/4 v3, 0x1

    goto :goto_0

    .line 1772
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1773
    .local v2, "testChar":C
    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isSchemeCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2066
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHex(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2076
    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPathCharacter(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2150
    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0xb2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isReservedCharacter(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2104
    const/16 v0, 0x5d

    if-gt p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSchemeCharacter(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2132
    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x34

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isURICharacter(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2123
    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x33

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .locals 5
    .param p0, "p_uric"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2162
    if-nez p0, :cond_1

    .line 2187
    :cond_0
    :goto_0
    return v3

    .line 2165
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2166
    .local v0, "end":I
    const/4 v2, 0x0

    .line 2167
    .local v2, "testChar":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 2187
    const/4 v3, 0x1

    goto :goto_0

    .line 2168
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2169
    const/16 v4, 0x25

    if-ne v2, v4, :cond_3

    .line 2170
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_0

    .line 2171
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2172
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2176
    add-int/lit8 v1, v1, 0x2

    .line 2167
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2180
    :cond_3
    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isURICharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2
.end method

.method private static isUnreservedCharacter(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2113
    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x32

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUserinfoCharacter(C)Z
    .locals 1
    .param p0, "p_char"    # C

    .prologue
    .line 2141
    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/URI;->fgLookupTable:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x3a

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRegistryBasedAuthority(Ljava/lang/String;)Z
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1030
    const/4 v1, 0x0

    .line 1031
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1034
    .local v0, "end":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1053
    const/4 v3, 0x1

    :cond_0
    :goto_1
    return v3

    .line 1035
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1038
    .local v2, "testChar":C
    const/16 v4, 0x25

    if-ne v2, v4, :cond_3

    .line 1039
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_0

    .line 1040
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1041
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1044
    add-int/lit8 v1, v1, 0x2

    .line 1051
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1048
    :cond_3
    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isPathCharacter(C)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1
.end method

.method private isValidServerBasedAuthority(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "userinfo"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 984
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return v3

    .line 992
    :cond_1
    const/4 v4, -0x1

    if-lt p2, v4, :cond_0

    const v4, 0xffff

    if-gt p2, v4, :cond_0

    .line 997
    if-eqz p3, :cond_2

    .line 1000
    const/4 v1, 0x0

    .line 1001
    .local v1, "index":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1002
    .local v0, "end":I
    const/4 v2, 0x0

    .line 1003
    .local v2, "testChar":C
    :goto_1
    if-lt v1, v0, :cond_3

    .line 1019
    .end local v0    # "end":I
    .end local v1    # "index":I
    .end local v2    # "testChar":C
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1004
    .restart local v0    # "end":I
    .restart local v1    # "index":I
    .restart local v2    # "testChar":C
    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1005
    const/16 v4, 0x25

    if-ne v2, v4, :cond_5

    .line 1006
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_0

    .line 1007
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1008
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1011
    add-int/lit8 v1, v1, 0x2

    .line 1016
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1013
    :cond_5
    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isUserinfoCharacter(C)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .locals 8
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    const/4 v5, 0x0

    .line 1794
    if-nez p0, :cond_1

    .line 1863
    :cond_0
    :goto_0
    return v5

    .line 1798
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1799
    .local v0, "addrLength":I
    if-eqz v0, :cond_0

    .line 1804
    const-string v6, "["

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1805
    invoke-static {p0}, Lmf/org/apache/xerces/util/URI;->isWellFormedIPv6Reference(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 1809
    :cond_2
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1810
    const-string v6, "-"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1811
    const-string v6, "-"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1818
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1819
    .local v2, "index":I
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1820
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1823
    :cond_3
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/URI;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1824
    invoke-static {p0}, Lmf/org/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 1834
    :cond_4
    const/16 v6, 0xff

    if-gt v0, v6, :cond_0

    .line 1841
    const/4 v3, 0x0

    .line 1843
    .local v3, "labelCharCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_5

    .line 1863
    const/4 v5, 0x1

    goto :goto_0

    .line 1844
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1845
    .local v4, "testChar":C
    if-ne v4, v7, :cond_8

    .line 1846
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1849
    add-int/lit8 v6, v1, 0x1

    if-ge v6, v0, :cond_6

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1852
    :cond_6
    const/4 v3, 0x0

    .line 1843
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1854
    :cond_8
    invoke-static {v4}, Lmf/org/apache/xerces/util/URI;->isAlphanum(C)Z

    move-result v6

    if-nez v6, :cond_9

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_0

    .line 1858
    :cond_9
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x3f

    if-le v3, v6, :cond_7

    goto/16 :goto_0
.end method

.method public static isWellFormedIPv4Address(Ljava/lang/String;)Z
    .locals 12
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x32

    const/16 v10, 0x35

    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 1879
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1881
    .local v0, "addrLength":I
    const/4 v4, 0x0

    .line 1882
    .local v4, "numDots":I
    const/4 v3, 0x0

    .line 1894
    .local v3, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 1926
    if-ne v4, v9, :cond_0

    const/4 v7, 0x1

    :cond_0
    :goto_1
    return v7

    .line 1895
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1896
    .local v6, "testChar":C
    const/16 v8, 0x2e

    if-ne v6, v8, :cond_5

    .line 1897
    if-lez v2, :cond_2

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lmf/org/apache/xerces/util/URI;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1898
    :cond_2
    add-int/lit8 v8, v2, 0x1

    if-ge v8, v0, :cond_3

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lmf/org/apache/xerces/util/URI;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1901
    :cond_3
    const/4 v3, 0x0

    .line 1902
    add-int/lit8 v4, v4, 0x1

    if-gt v4, v9, :cond_0

    .line 1894
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1906
    :cond_5
    invoke-static {v6}, Lmf/org/apache/xerces/util/URI;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1911
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v9, :cond_0

    .line 1915
    if-ne v3, v9, :cond_4

    .line 1916
    add-int/lit8 v8, v2, -0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1917
    .local v1, "first":C
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1918
    .local v5, "second":C
    if-lt v1, v11, :cond_4

    .line 1919
    if-ne v1, v11, :cond_0

    .line 1920
    if-lt v5, v10, :cond_4

    .line 1921
    if-ne v5, v10, :cond_0

    if-le v6, v10, :cond_4

    goto :goto_1
.end method

.method public static isWellFormedIPv6Reference(Ljava/lang/String;)Z
    .locals 12
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x3a

    const/16 v10, 0x8

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1946
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1947
    .local v0, "addrLength":I
    const/4 v3, 0x1

    .line 1948
    .local v3, "index":I
    add-int/lit8 v2, v0, -0x1

    .line 1951
    .local v2, "end":I
    const/4 v5, 0x2

    if-le v0, v5, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5b

    if-ne v5, v8, :cond_0

    .line 1952
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5d

    if-eq v5, v8, :cond_1

    :cond_0
    move v5, v6

    .line 2000
    :goto_0
    return v5

    .line 1957
    :cond_1
    new-array v1, v7, [I

    .line 1960
    .local v1, "counter":[I
    invoke-static {p0, v3, v2, v1}, Lmf/org/apache/xerces/util/URI;->scanHexSequence(Ljava/lang/String;II[I)I

    move-result v3

    .line 1961
    if-ne v3, v9, :cond_2

    move v5, v6

    .line 1962
    goto :goto_0

    .line 1965
    :cond_2
    if-ne v3, v2, :cond_4

    .line 1966
    aget v5, v1, v6

    if-ne v5, v10, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_0

    .line 1969
    :cond_4
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v2, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_8

    .line 1970
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_6

    .line 1972
    aget v5, v1, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v6

    if-le v5, v10, :cond_5

    move v5, v6

    .line 1973
    goto :goto_0

    .line 1975
    :cond_5
    add-int/lit8 v3, v3, 0x2

    .line 1977
    if-ne v3, v2, :cond_9

    move v5, v7

    .line 1978
    goto :goto_0

    .line 1985
    :cond_6
    aget v5, v1, v6

    const/4 v8, 0x6

    if-ne v5, v8, :cond_7

    .line 1986
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmf/org/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v7

    .line 1985
    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_0

    :cond_8
    move v5, v6

    .line 1990
    goto :goto_0

    .line 1994
    :cond_9
    aget v4, v1, v6

    .line 1995
    .local v4, "prevCount":I
    invoke-static {p0, v3, v2, v1}, Lmf/org/apache/xerces/util/URI;->scanHexSequence(Ljava/lang/String;II[I)I

    move-result v3

    .line 2000
    if-eq v3, v2, :cond_c

    .line 2001
    if-eq v3, v9, :cond_a

    .line 2002
    aget v5, v1, v6

    if-le v5, v4, :cond_b

    add-int/lit8 v5, v3, 0x1

    :goto_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2001
    invoke-static {v5}, Lmf/org/apache/xerces/util/URI;->isWellFormedIPv4Address(Ljava/lang/String;)Z

    move-result v5

    .line 2002
    if-nez v5, :cond_c

    :cond_a
    move v5, v6

    .line 2000
    goto :goto_0

    :cond_b
    move v5, v3

    .line 2002
    goto :goto_1

    :cond_c
    move v5, v7

    .line 2000
    goto :goto_0
.end method

.method private static scanHexSequence(Ljava/lang/String;II[I)I
    .locals 10
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "end"    # I
    .param p3, "counter"    # [I

    .prologue
    const/16 v9, 0x3a

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 2023
    const/4 v1, 0x0

    .line 2024
    .local v1, "numDigits":I
    move v2, p1

    .line 2029
    .local v2, "start":I
    :goto_0
    if-lt p1, p2, :cond_1

    .line 2056
    if-lez v1, :cond_9

    aget v5, p3, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, p3, v6

    if-gt v5, v8, :cond_9

    .end local p2    # "end":I
    :goto_1
    move v4, p2

    :cond_0
    :goto_2
    return v4

    .line 2030
    .restart local p2    # "end":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2031
    .local v3, "testChar":C
    if-ne v3, v9, :cond_6

    .line 2033
    if-lez v1, :cond_2

    aget v5, p3, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, p3, v6

    if-gt v5, v8, :cond_0

    .line 2037
    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v5, p1, 0x1

    if-ge v5, p2, :cond_4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_4

    :cond_3
    move v4, p1

    .line 2038
    goto :goto_2

    .line 2040
    :cond_4
    const/4 v1, 0x0

    .line 2029
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2044
    :cond_6
    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2045
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_0

    if-ge v1, v7, :cond_0

    if-lez v1, :cond_0

    aget v5, p3, v6

    const/4 v6, 0x6

    if-gt v5, v6, :cond_0

    .line 2046
    sub-int v4, p1, v1

    add-int/lit8 v0, v4, -0x1

    .line 2047
    .local v0, "back":I
    if-lt v0, v2, :cond_7

    .end local v0    # "back":I
    :goto_3
    move v4, v0

    goto :goto_2

    .restart local v0    # "back":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2052
    .end local v0    # "back":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    if-le v1, v7, :cond_5

    goto :goto_2

    .end local v3    # "testChar":C
    :cond_9
    move p2, v4

    .line 2056
    goto :goto_1
.end method


# virtual methods
.method public absolutize(Lmf/org/apache/xerces/util/URI;)V
    .locals 11
    .param p1, "p_base"    # Lmf/org/apache/xerces/util/URI;

    .prologue
    const/16 v10, 0x2f

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 722
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 723
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 724
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 725
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 726
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPort()I

    move-result v6

    iput v6, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 728
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 729
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 731
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 732
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 734
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 735
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 744
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 752
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 753
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 754
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPort()I

    move-result v6

    iput v6, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 756
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getRegBasedAuthority()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 763
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 764
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 770
    :cond_2
    const-string v3, ""

    .line 771
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "basePath":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 775
    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 776
    .local v2, "lastSlash":I
    if-eq v2, v9, :cond_3

    .line 777
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 785
    .end local v2    # "lastSlash":I
    :cond_3
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 788
    const/4 v1, -0x1

    .line 789
    .local v1, "index":I
    :goto_2
    const-string v6, "/./"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_7

    .line 794
    const-string v6, "/."

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 795
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 800
    :cond_4
    const/4 v1, 0x1

    .line 801
    const/4 v4, -0x1

    .line 802
    .local v4, "segIndex":I
    const/4 v5, 0x0

    .line 804
    .local v5, "tempString":Ljava/lang/String;
    :goto_3
    const-string v6, "/../"

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_8

    .line 823
    const-string v6, "/.."

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 824
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 825
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 826
    if-eq v4, v9, :cond_5

    .line 827
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 830
    :cond_5
    iput-object v3, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_0

    .line 780
    .end local v1    # "index":I
    .end local v4    # "segIndex":I
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 781
    const-string v3, "/"

    goto :goto_1

    .line 790
    .restart local v1    # "index":I
    :cond_7
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x3

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 805
    .restart local v4    # "segIndex":I
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_8
    const-string v6, "/../"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 806
    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 807
    if-eq v4, v9, :cond_a

    .line 808
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 809
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x4

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 810
    move v1, v4

    .line 811
    goto :goto_3

    .line 813
    :cond_9
    add-int/lit8 v1, v1, 0x4

    .line 815
    goto :goto_3

    .line 817
    :cond_a
    add-int/lit8 v1, v1, 0x4

    goto :goto_3
.end method

.method public appendPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "p_addToPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1578
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1582
    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1583
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1584
    const-string v1, "Path contains invalid character!"

    .line 1583
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 1588
    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1589
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1592
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1595
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1596
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1597
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1600
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1604
    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1605
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    .line 1608
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "p_test"    # Ljava/lang/Object;

    .prologue
    .line 1686
    instance-of v1, p1, Lmf/org/apache/xerces/util/URI;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 1687
    check-cast v0, Lmf/org/apache/xerces/util/URI;

    .line 1688
    .local v0, "testURI":Lmf/org/apache/xerces/util/URI;
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1689
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1690
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    iget-object v2, v0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1691
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1692
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1693
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    iget-object v2, v0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1694
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1695
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1696
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    iget-object v2, v0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1697
    :cond_5
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    iget v2, v0, Lmf/org/apache/xerces/util/URI;->m_port:I

    if-ne v1, v2, :cond_c

    .line 1698
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1699
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1700
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    iget-object v2, v0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1701
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1702
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1703
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    iget-object v2, v0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1704
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1705
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1706
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    iget-object v2, v0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1707
    :cond_b
    const/4 v1, 0x1

    .line 1710
    .end local v0    # "testURI":Lmf/org/apache/xerces/util/URI;
    :goto_0
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1299
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1300
    .local v0, "authority":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1301
    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1304
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1306
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1307
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1308
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1311
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1313
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1314
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1315
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1323
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1320
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "p_includeQueryString"    # Z
    .param p2, "p_includeFragment"    # Z

    .prologue
    .line 1342
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v0, "pathString":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1345
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1346
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1349
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1350
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1351
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1353
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRegBasedAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1216
    .local v0, "schemespec":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1217
    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1220
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1222
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1223
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1224
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1227
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1230
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1231
    iget v1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1240
    :cond_2
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1241
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1244
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1245
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1246
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1249
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1250
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1251
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1254
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1236
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    return-object v0
.end method

.method public isAbsoluteURI()Z
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGenericURI()Z
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "p_fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1657
    if-nez p1, :cond_0

    .line 1658
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1675
    :goto_0
    return-void

    .line 1660
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1661
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1662
    const-string v1, "Fragment can only be set for a generic URI!"

    .line 1661
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1665
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1666
    const-string v1, "Fragment cannot be set when path is null!"

    .line 1665
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_2
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1669
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1670
    const-string v1, "Fragment contains invalid character!"

    .line 1669
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1673
    :cond_3
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "p_host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1468
    :cond_0
    if-eqz p1, :cond_1

    .line 1469
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 1471
    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1472
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 1473
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 1481
    :goto_0
    return-void

    .line 1476
    :cond_2
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1477
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v1, "Host is not a well formed address!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1479
    :cond_3
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1480
    iput-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "p_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1553
    if-nez p1, :cond_0

    .line 1554
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_path:Ljava/lang/String;

    .line 1555
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1556
    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_fragment:Ljava/lang/String;

    .line 1561
    :goto_0
    return-void

    .line 1559
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/URI;->initializePath(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setPort(I)V
    .locals 2
    .param p1, "p_port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1495
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1496
    iget-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1497
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1498
    const-string v1, "Port cannot be set when host is null!"

    .line 1497
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1501
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1502
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v1, "Invalid port number!"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_1
    iput p1, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    .line 1505
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "p_queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1625
    if-nez p1, :cond_0

    .line 1626
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    .line 1643
    :goto_0
    return-void

    .line 1628
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1629
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1630
    const-string v1, "Query string can only be set for a generic URI!"

    .line 1629
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1633
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1634
    const-string v1, "Query string cannot be set when path is null!"

    .line 1633
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1636
    :cond_2
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1637
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1638
    const-string v1, "Query string contains invalid character!"

    .line 1637
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_3
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRegBasedAuthority(Ljava/lang/String;)V
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1521
    if-nez p1, :cond_0

    .line 1522
    iput-object v2, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 1536
    :goto_0
    return-void

    .line 1527
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1528
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/URI;->isValidRegistryBasedAuthority(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1529
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 1530
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v1, "Registry based authority is not well formed."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_2
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_regAuthority:Ljava/lang/String;

    .line 1533
    iput-object v2, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    .line 1534
    iput-object v2, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 1535
    iput v3, p0, Lmf/org/apache/xerces/util/URI;->m_port:I

    goto :goto_0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 2
    .param p1, "p_scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1398
    if-nez p1, :cond_0

    .line 1399
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1400
    const-string v1, "Cannot set scheme from null string!"

    .line 1399
    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/util/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1403
    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    const-string v1, "The scheme is not conformant."

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1406
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    .line 1407
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 6
    .param p1, "p_userinfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1419
    if-nez p1, :cond_0

    .line 1420
    const/4 v3, 0x0

    iput-object v3, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    .line 1452
    :goto_0
    return-void

    .line 1424
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/util/URI;->m_host:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1425
    new-instance v3, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1426
    const-string v4, "Userinfo cannot be set when host is null!"

    .line 1425
    invoke-direct {v3, v4}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1431
    :cond_1
    const/4 v1, 0x0

    .line 1432
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1433
    .local v0, "end":I
    const/4 v2, 0x0

    .line 1434
    .local v2, "testChar":C
    :goto_1
    if-lt v1, v0, :cond_2

    .line 1451
    iput-object p1, p0, Lmf/org/apache/xerces/util/URI;->m_userinfo:Ljava/lang/String;

    goto :goto_0

    .line 1435
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1436
    const/16 v3, 0x25

    if-ne v2, v3, :cond_4

    .line 1437
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_3

    .line 1438
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1439
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/URI;->isHex(C)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1440
    :cond_3
    new-instance v3, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1441
    const-string v4, "Userinfo contains invalid escape sequence!"

    .line 1440
    invoke-direct {v3, v4}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1444
    :cond_4
    invoke-static {v2}, Lmf/org/apache/xerces/util/URI;->isUserinfoCharacter(C)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1445
    new-instance v3, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    .line 1446
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Userinfo contains invalid character:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1445
    invoke-direct {v3, v4}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1448
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1719
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1721
    .local v0, "uriSpecString":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1722
    iget-object v1, p0, Lmf/org/apache/xerces/util/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1723
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1725
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1726
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
