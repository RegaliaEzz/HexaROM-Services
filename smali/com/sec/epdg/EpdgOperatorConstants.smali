.class public Lcom/sec/epdg/EpdgOperatorConstants;
.super Ljava/lang/Object;
.source "EpdgOperatorConstants.java"


# static fields
.field public static final ATTACH_APN_ID:I = 0x1

.field public static final CDMA_PROFILING:Z

.field public static final CHANGE_PREFERREDMODE_AT_ROAMING:Z

.field public static final DELAY_HO_TIMER_VALUE:I

.field public static final DELAY_HO_UNTIL_REGI_FINISHED:Z

.field public static final DELAY_L2W_AND_W2L:Z

.field public static final DISCONNECT_AFTER_DEREGI:Z

.field public static final DNS_RETRY_THROTTLE_COUNTER:I = 0x5

.field public static final EMERGENCY_CALLBACK_MODE:Z

.field public static final HAS_DIFFERENT_ROAMING_POLICY:Z

.field public static final IMS_APN_ID:I

.field public static final IMS_CALL_MONITORING:Z

.field public static final IMS_REGISTRATION_MONITORING:Z

.field public static final INTERNET_APN_ID:I

.field public static final IWLAN_INTERFACE_PREFIX:Ljava/lang/String; = "epdg"

.field public static final KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

.field public static final LTE_PROFILING:Z

.field public static final PDPD_CHECK_TIMEOUT:I

.field public static final SEPARATE_VIDEO_FROM_VOWIFI:Z

.field public static final SUPPORT_CDMA_NETWORK:Z

.field public static final SUPPORT_DOWNGRADED_VIDEO_CALL:Z

.field public static final SUPPORT_IMSI_FROM_IMPI:Z

.field public static final SUPPORT_KEEP_ALIVE:Z

.field public static final SUPPORT_MULTIPLE_EPDGIP:Z

.field public static final SUPPORT_VOLTE:Z

.field public static final SUPPORT_VOWIFI_PROVISIONING:Z

.field public static final SUPPORT_WEAK_WIFI_SIGNAL_WARNING:Z = false

.field public static final SUPPORT_WIFI_OVER_IPME:Z

.field public static final SUPPORT_WIFI_RSSI_POLLING:Z

.field public static final VOWIFI_BLACKLIST_BLOCKING:Z

.field public static final WIFI_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field public static final WIFI_RSSI_INTENT_DELAY_TIMER:I

.field public static final WIFI_THRESHOLD_BASED_HO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sput v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 72
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 73
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 74
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 75
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 76
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    .line 77
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 78
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 79
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 80
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 81
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 82
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 83
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 84
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 85
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 86
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 87
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 88
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 89
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 90
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 91
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 92
    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 93
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 94
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 95
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 96
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 97
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 98
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    .line 245
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 101
    sput v2, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 102
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 103
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 104
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 105
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    .line 106
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 107
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 108
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 109
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 110
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 111
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 112
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 113
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 114
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 115
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 116
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 117
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 118
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 119
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 120
    sput v5, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 121
    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 122
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 123
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 124
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 125
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 126
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 127
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    sput v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 130
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 131
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 132
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 133
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 134
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    .line 135
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 136
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 137
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 138
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 139
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 140
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 141
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 142
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 143
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 144
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 145
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 146
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 147
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 148
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 149
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 150
    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 151
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 152
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 153
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 154
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAVE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 155
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 156
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    goto/16 :goto_0

    .line 157
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    sput v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 159
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 160
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 161
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 162
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 163
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    .line 164
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 165
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 166
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 167
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 168
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 169
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 170
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 171
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 172
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 173
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 174
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 175
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 176
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 177
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 178
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 179
    const/16 v0, 0x9

    sput v0, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 180
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 181
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 182
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 183
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 184
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 185
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    goto/16 :goto_0

    .line 186
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVod()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    sput v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 188
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 189
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 190
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 191
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 192
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    .line 193
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 194
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 195
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 196
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 197
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 198
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 199
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 200
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 201
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 202
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 203
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 204
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 205
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 206
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 207
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 208
    const/16 v0, 0x1f

    sput v0, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 209
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 210
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 211
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 212
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 213
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 214
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    goto/16 :goto_0

    .line 216
    :cond_4
    sput v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    .line 217
    sput v3, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    .line 218
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    .line 219
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    .line 220
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    .line 221
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    .line 222
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    .line 223
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    .line 224
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    .line 225
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    .line 226
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CHANGE_PREFERREDMODE_AT_ROAMING:Z

    .line 227
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    .line 228
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    .line 229
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_CALL_MONITORING:Z

    .line 230
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_REGISTRATION_MONITORING:Z

    .line 231
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    .line 232
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    .line 233
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    .line 234
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    .line 235
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    .line 236
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    .line 237
    sput v4, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    .line 238
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    .line 239
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_DOWNGRADED_VIDEO_CALL:Z

    .line 240
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_MULTIPLE_EPDGIP:Z

    .line 241
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_OVER_IPME:Z

    .line 242
    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->KEEP_EPDG_CONNECTION_WHILE_VOWIFI_SESSION_ON:Z

    .line 243
    sput-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
