.class public Lmf/org/apache/xml/resolver/apps/resolver;
.super Ljava/lang/Object;
.source "resolver.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 29
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v9, 0x0

    .line 82
    .local v9, "debuglevel":I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 83
    .local v6, "catalogFiles":Ljava/util/Vector;
    const/16 v17, 0x0

    .line 84
    .local v17, "resType":I
    const/16 v18, 0x0

    .line 85
    .local v18, "resTypeStr":Ljava/lang/String;
    const/4 v15, 0x0

    .line 86
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 87
    .local v16, "publicId":Ljava/lang/String;
    const/16 v23, 0x0

    .line 88
    .local v23, "systemId":Ljava/lang/String;
    const/16 v24, 0x0

    .line 89
    .local v24, "uri":Ljava/lang/String;
    const/4 v4, 0x0

    .line 91
    .local v4, "absoluteSystem":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v14, v0, :cond_7

    .line 144
    if-nez v18, :cond_0

    .line 145
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    .line 148
    :cond_0
    const-string v26, "doctype"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 149
    sget v17, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    .line 150
    if-nez v16, :cond_1

    if-nez v23, :cond_1

    .line 151
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "DOCTYPE requires public or system identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    .line 191
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 192
    const/4 v5, 0x0

    .line 193
    .local v5, "base":Ljava/net/URL;
    const/16 v21, 0x0

    .line 198
    .local v21, "sysid":Ljava/net/URL;
    :try_start_0
    const-string v26, "basename"

    invoke-static/range {v26 .. v26}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 207
    :goto_2
    :try_start_1
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v5, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 208
    .end local v21    # "sysid":Ljava/net/URL;
    .local v22, "sysid":Ljava/net/URL;
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v23

    .line 218
    .end local v5    # "base":Ljava/net/URL;
    .end local v22    # "sysid":Ljava/net/URL;
    :cond_2
    :goto_3
    new-instance v7, Lmf/org/apache/xml/resolver/tools/CatalogResolver;

    invoke-direct {v7}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;-><init>()V

    .line 219
    .local v7, "catalogResolver":Lmf/org/apache/xml/resolver/tools/CatalogResolver;
    invoke-virtual {v7}, Lmf/org/apache/xml/resolver/tools/CatalogResolver;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v19

    .line 221
    .local v19, "resolver":Lmf/org/apache/xml/resolver/Catalog;
    const/4 v8, 0x0

    .local v8, "count":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_17

    .line 225
    const/16 v20, 0x0

    .line 227
    .local v20, "result":Ljava/lang/String;
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 228
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve DOCTYPE (name, publicid, systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    if-eqz v15, :cond_3

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "       name: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    :cond_3
    if-eqz v16, :cond_4

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  public id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :cond_4
    if-eqz v23, :cond_5

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    :cond_5
    if-eqz v24, :cond_6

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "        uri: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 267
    :goto_5
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Result: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    return-void

    .line 92
    .end local v7    # "catalogResolver":Lmf/org/apache/xml/resolver/tools/CatalogResolver;
    .end local v8    # "count":I
    .end local v19    # "resolver":Lmf/org/apache/xml/resolver/Catalog;
    .end local v20    # "result":Ljava/lang/String;
    :cond_7
    aget-object v26, p0, v14

    const-string v27, "-c"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 93
    add-int/lit8 v14, v14, 0x1

    .line 94
    aget-object v26, p0, v14

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_8
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 98
    :cond_9
    aget-object v26, p0, v14

    const-string v27, "-p"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 99
    add-int/lit8 v14, v14, 0x1

    .line 100
    aget-object v16, p0, v14

    .line 101
    goto :goto_6

    .line 104
    :cond_a
    aget-object v26, p0, v14

    const-string v27, "-s"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 105
    add-int/lit8 v14, v14, 0x1

    .line 106
    aget-object v23, p0, v14

    .line 107
    goto :goto_6

    .line 110
    :cond_b
    aget-object v26, p0, v14

    const-string v27, "-n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 111
    add-int/lit8 v14, v14, 0x1

    .line 112
    aget-object v15, p0, v14

    .line 113
    goto :goto_6

    .line 116
    :cond_c
    aget-object v26, p0, v14

    const-string v27, "-u"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 117
    add-int/lit8 v14, v14, 0x1

    .line 118
    aget-object v24, p0, v14

    .line 119
    goto :goto_6

    .line 122
    :cond_d
    aget-object v26, p0, v14

    const-string v27, "-a"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 123
    const/4 v4, 0x1

    .line 124
    goto :goto_6

    .line 127
    :cond_e
    aget-object v26, p0, v14

    const-string v27, "-d"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 128
    add-int/lit8 v14, v14, 0x1

    .line 129
    aget-object v10, p0, v14

    .line 131
    .local v10, "debugstr":Ljava/lang/String;
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 132
    if-lez v9, :cond_8

    .line 133
    sget-object v26, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 135
    :catch_0
    move-exception v26

    goto :goto_6

    .line 141
    .end local v10    # "debugstr":Ljava/lang/String;
    :cond_f
    aget-object v18, p0, v14

    goto :goto_6

    .line 154
    :cond_10
    const-string v26, "document"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 155
    sget v17, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    .line 156
    goto/16 :goto_1

    :cond_11
    const-string v26, "entity"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 157
    sget v17, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    .line 158
    if-nez v16, :cond_1

    if-nez v23, :cond_1

    if-nez v15, :cond_1

    .line 159
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "ENTITY requires name or public or system identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    .line 162
    :cond_12
    const-string v26, "notation"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 163
    sget v17, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    .line 164
    if-nez v16, :cond_1

    if-nez v23, :cond_1

    if-nez v15, :cond_1

    .line 165
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "NOTATION requires name or public or system identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    .line 168
    :cond_13
    const-string v26, "public"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 169
    sget v17, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    .line 170
    if-nez v16, :cond_1

    .line 171
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "PUBLIC requires public identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    .line 174
    :cond_14
    const-string v26, "system"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 175
    sget v17, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    .line 176
    if-nez v23, :cond_1

    .line 177
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "SYSTEM requires system identifier."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    .line 180
    :cond_15
    const-string v26, "uri"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 181
    sget v17, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    .line 182
    if-nez v24, :cond_1

    .line 183
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "URI requires a uri."

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    .line 187
    :cond_16
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " is not a recognized keyword."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_1

    .line 199
    .restart local v5    # "base":Ljava/net/URL;
    .restart local v21    # "sysid":Ljava/net/URL;
    :catch_1
    move-exception v11

    .line 200
    .local v11, "e":Ljava/net/MalformedURLException;
    const-string v26, "user.dir"

    invoke-static/range {v26 .. v26}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 201
    .local v25, "userdir":Ljava/lang/String;
    const/16 v26, 0x5c

    const/16 v27, 0x2f

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v25

    .line 202
    sget-object v26, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/16 v27, 0x1

    const-string v28, "Malformed URL on cwd"

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 209
    .end local v11    # "e":Ljava/net/MalformedURLException;
    .end local v25    # "userdir":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 211
    .restart local v11    # "e":Ljava/net/MalformedURLException;
    :goto_7
    :try_start_4
    new-instance v21, Ljava/net/URL;

    .end local v21    # "sysid":Ljava/net/URL;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "file:///"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3

    .restart local v21    # "sysid":Ljava/net/URL;
    goto/16 :goto_3

    .line 212
    .end local v21    # "sysid":Ljava/net/URL;
    :catch_3
    move-exception v12

    .line 213
    .local v12, "e2":Ljava/net/MalformedURLException;
    sget-object v26, Lmf/org/apache/xml/resolver/apps/resolver;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/16 v27, 0x1

    const-string v28, "Malformed URL on system id"

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 222
    .end local v5    # "base":Ljava/net/URL;
    .end local v11    # "e":Ljava/net/MalformedURLException;
    .end local v12    # "e2":Ljava/net/MalformedURLException;
    .restart local v7    # "catalogResolver":Lmf/org/apache/xml/resolver/tools/CatalogResolver;
    .restart local v8    # "count":I
    .restart local v19    # "resolver":Lmf/org/apache/xml/resolver/Catalog;
    :cond_17
    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 223
    .local v13, "file":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 234
    .end local v13    # "file":Ljava/lang/String;
    .restart local v20    # "result":Ljava/lang/String;
    :cond_18
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 235
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve DOCUMENT ():"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xml/resolver/Catalog;->resolveDocument()Ljava/lang/String;

    move-result-object v20

    .line 237
    goto/16 :goto_5

    :cond_19
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 238
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve ENTITY (name, publicid, systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    if-eqz v15, :cond_1a

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "       name: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    :cond_1a
    if-eqz v16, :cond_1b

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  public id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :cond_1b
    if-eqz v23, :cond_1c

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    :cond_1c
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 243
    goto/16 :goto_5

    :cond_1d
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    .line 244
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve NOTATION (name, publicid, systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    if-eqz v15, :cond_1e

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "       name: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    :cond_1e
    if-eqz v16, :cond_1f

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  public id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :cond_1f
    if-eqz v23, :cond_20

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    :cond_20
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 249
    goto/16 :goto_5

    :cond_21
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_24

    .line 250
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve PUBLIC (publicid, systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    if-eqz v16, :cond_22

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  public id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    :cond_22
    if-eqz v23, :cond_23

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    :cond_23
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 254
    goto/16 :goto_5

    :cond_24
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_26

    .line 255
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve SYSTEM (systemid):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    if-eqz v23, :cond_25

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  system id: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    :cond_25
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 258
    goto/16 :goto_5

    :cond_26
    sget v26, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_28

    .line 259
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "Resolve URI (uri):"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    if-eqz v24, :cond_27

    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "        uri: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    :cond_27
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 262
    goto/16 :goto_5

    .line 263
    :cond_28
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v27, "resType is wrong!? This can\'t happen!"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lmf/org/apache/xml/resolver/apps/resolver;->usage()V

    goto/16 :goto_5

    .line 209
    .end local v7    # "catalogResolver":Lmf/org/apache/xml/resolver/tools/CatalogResolver;
    .end local v8    # "count":I
    .end local v19    # "resolver":Lmf/org/apache/xml/resolver/Catalog;
    .end local v20    # "result":Ljava/lang/String;
    .restart local v5    # "base":Ljava/net/URL;
    .restart local v22    # "sysid":Ljava/net/URL;
    :catch_4
    move-exception v11

    move-object/from16 v21, v22

    .end local v22    # "sysid":Ljava/net/URL;
    .restart local v21    # "sysid":Ljava/net/URL;
    goto/16 :goto_7
.end method

.method public static usage()V
    .locals 2

    .prologue
    .line 271
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: resolver [options] keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Where:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-c catalogfile  Loads a particular catalog file."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-n name         Sets the name."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-p publicId     Sets the public identifier."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-s systemId     Sets the system identifier."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-a              Makes the system URI absolute before resolution"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-u uri          Sets the URI."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-d integer      Set the debug level."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "keyword         Identifies the type of resolution to perform:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                doctype, document, entity, notation, public, system,"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                or uri."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 287
    return-void
.end method
