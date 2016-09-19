.class public Lcom/android/server/enterprise/otp/engine/common/OTPEnums;
.super Ljava/lang/Object;
.source "OTPEnums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$1;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;,
        Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static final keyUsageToStr(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;)Ljava/lang/String;
    .locals 3
    .param p0, "keyusage"    # Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    .prologue
    .line 40
    sget-object v1, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$1;->$SwitchMap$com$android$server$enterprise$otp$engine$common$OTPEnums$KeyUsage:[I

    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 87
    const-string v0, "Unknown"

    .line 91
    .local v0, "p":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 42
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_0
    const-string v0, "OTP"

    .line 43
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CR"

    .line 47
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 50
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Encrypt"

    .line 51
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Integrity"

    .line 55
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_4
    const-string v0, "Verify"

    .line 59
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_5
    const-string v0, "Unlock"

    .line 63
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_6
    const-string v0, "Decrypt"

    .line 67
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_7
    const-string v0, "KeyWrap"

    .line 71
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_8
    const-string v0, "Unwrap"

    .line 75
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_9
    const-string v0, "Derive"

    .line 79
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0    # "p":Ljava/lang/String;
    :pswitch_a
    const-string v0, "Generate"

    .line 83
    .restart local v0    # "p":Ljava/lang/String;
    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static strToKeyUsage(Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;
    .locals 1
    .param p0, "keyusage"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, "OTP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->OTP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    .line 118
    :goto_0
    return-object v0

    .line 97
    :cond_0
    const-string v0, "CR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->CR:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "Encrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->ENCRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "Integrity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->INTEGRITY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "Verify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->VERIFY:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "Unlock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNLOCK:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 107
    :cond_5
    const-string v0, "Decrypt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DECRYPT:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 109
    :cond_6
    const-string v0, "KeyWrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->KEYWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 111
    :cond_7
    const-string v0, "Unwrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNWRAP:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 113
    :cond_8
    const-string v0, "Derive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->DERIVE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 115
    :cond_9
    const-string v0, "Generate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 116
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->GENERATE:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0

    .line 118
    :cond_a
    sget-object v0, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->UNKNOWN:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    goto :goto_0
.end method
