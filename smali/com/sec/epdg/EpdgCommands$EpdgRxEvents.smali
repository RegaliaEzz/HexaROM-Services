.class public Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgRxEvents"
.end annotation


# static fields
.field public static final CALL_STATUS_CHANGE:I = 0x3e

.field public static final DATA_RETRY_TIMER_EXPIRED:I = 0x21

.field public static final EPDG_IMS_READY:I = 0x4c

.field public static final EPDG_SETTINGS_READ:I = 0x1d

.field public static final EPDG_WFCPROFILE_READ:I = 0x4b

.field public static final HANDLE_DNS_QUERY_REQUEST:I = 0x34

.field public static final HANDLE_FQDN_QUERY_FAILED:I = 0x36

.field public static final HANDLE_FQDN_QUERY_RETRY:I = 0x37

.field public static final IMS_REG_STATUS_CHANGE:I = 0x40

.field public static final IPME_STATUS_CHANGE:I = 0x4e

.field public static final IPSEC_CONNECTED:I = 0x2d

.field public static final IPSEC_CONNECTION_RESET:I = 0x31

.field public static final IPSEC_CONNECTION_SETUP_FAILURE:I = 0x30

.field public static final IPSEC_CONNECT_INIT:I = 0x33

.field public static final IPSEC_DISCONNECTED:I = 0x2e

.field public static final IPSEC_ERROR:I = 0x32

.field public static final IPSEC_PEER_DISCONNECTED:I = 0x2f

.field public static final MAPCON_CHANGED:I = 0x1c

.field public static final NATT_KEEPALIVE_TIMER_EXPIRED:I = 0x4f

.field public static final NOTIFY_REGISTRANTS:I = 0x1e

.field public static final PERIODIC_DPD_TIMER_EXPIRED:I = 0x44

.field public static final RETRY_L2W_IF_REQUIRED:I = 0x1f

.field public static final RIL_CONNECT_REQ:I = 0x2b

.field public static final RIL_DISCONNECT_REQ:I = 0x2c

.field public static final RIL_EPDG_STATUS_QUERY:I = 0x35

.field public static final RIL_HANDOVER_RESULT:I = 0x2a

.field public static final RIL_IIL_SSAC_INFO_UPDATE:I = 0x4a

.field public static final SEND_DELAYED_EPDG_REGISTER:I = 0x46

.field public static final SEND_EPDG_DEREGISTER:I = 0x47

.field public static final SEND_EPDG_NOTAVAILABLE_FOR_ONDEMAND_FAILURE:I = 0x25

.field public static final SM_DISCONNECT_REQ:I = 0x29

.field public static final SM_ENABLE_EPDG_FAILURE:I = 0x23

.field public static final SM_TRANSITIONTO:I = 0x28

.field public static final SM_TRIGGER_HO:I = 0x22

.field public static final SM_UPDATE_CONN_STATUS:I = 0x26

.field public static final START_STOP_WIFI_RSSI_INTENT_DELAY_TIMER:I = 0x49

.field public static final START_TIMER_TEPDGHODELAY:I = 0x3d

.field public static final TIMER_TEPDG1X_EXPIRED:I = 0x3b

.field public static final TIMER_TEPDG1X_SCAN_EXPIRED:I = 0x41

.field public static final TIMER_TEPDGHODELAYWIFI_EXPIRED:I = 0x3a

.field public static final TIMER_TEPDGHODELAY_EXPIRED:I = 0x3c

.field public static final TIMER_TEPDGLTE_EXPIRED:I = 0x39

.field public static final TIMER_TEPDGWIFIRSSIDELAY_EXPIRED:I = 0x48

.field public static final TIMER_TEPDG_EXPIRED:I = 0x38

.field public static final TIMER_TEPDG_WIFI_IPCONFIG_EXPIRED:I = 0x4d

.field public static final VOLTE_PROVISIONING_CHANGED:I = 0x42

.field public static final VOLTE_SETTING_CHANGED:I = 0x3f

.field public static final VOPS_STATUS_CHANGED:I = 0x45

.field public static final VOWIFI_PROVISIONING_CHANGED:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3
    .param p0, "event"    # I

    .prologue
    .line 225
    packed-switch p0, :pswitch_data_0

    .line 325
    :pswitch_0
    const-string v0, "[EPDGCommands]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add log for event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 227
    :pswitch_1
    const-string v0, "SM_TRIGGER_HO"

    goto :goto_0

    .line 229
    :pswitch_2
    const-string v0, "SM_ENABLE_EPDG_FAILURE"

    goto :goto_0

    .line 231
    :pswitch_3
    const-string v0, "SEND_EPDG_NOTAVAILABLE_FOR_ONDEMAND_FAILURE"

    goto :goto_0

    .line 233
    :pswitch_4
    const-string v0, "SM_UPDATE_CONN_STATUS"

    goto :goto_0

    .line 235
    :pswitch_5
    const-string v0, "SM_TRANSITIONTO"

    goto :goto_0

    .line 237
    :pswitch_6
    const-string v0, "SM_DISCONNECT_REQ"

    goto :goto_0

    .line 239
    :pswitch_7
    const-string v0, "NOTIFY_REGISTRANTS"

    goto :goto_0

    .line 241
    :pswitch_8
    const-string v0, "EPDG_SETTINGS_READ"

    goto :goto_0

    .line 243
    :pswitch_9
    const-string v0, "RETRY_L2W_IF_REQUIRED"

    goto :goto_0

    .line 245
    :pswitch_a
    const-string v0, "DATA_RETRY_TIMER_EXPIRED"

    goto :goto_0

    .line 247
    :pswitch_b
    const-string v0, "RIL_HANDOVER_RESULT"

    goto :goto_0

    .line 249
    :pswitch_c
    const-string v0, "RIL_CONNECT_REQ"

    goto :goto_0

    .line 251
    :pswitch_d
    const-string v0, "RIL_DISCONNECT_REQ"

    goto :goto_0

    .line 253
    :pswitch_e
    const-string v0, "IPSEC_CONNECTED"

    goto :goto_0

    .line 255
    :pswitch_f
    const-string v0, "IPSEC_DISCONNECTED"

    goto :goto_0

    .line 257
    :pswitch_10
    const-string v0, "IPSEC_PEER_DISCONNECTED"

    goto :goto_0

    .line 259
    :pswitch_11
    const-string v0, "IPSEC_CONNECTION_SETUP_FAILURE"

    goto :goto_0

    .line 261
    :pswitch_12
    const-string v0, "IPSEC_CONNECTION_RESET"

    goto :goto_0

    .line 263
    :pswitch_13
    const-string v0, "IPSEC_ERROR"

    goto :goto_0

    .line 265
    :pswitch_14
    const-string v0, "IPSEC_CONNECT_INIT"

    goto :goto_0

    .line 267
    :pswitch_15
    const-string v0, "HANDLE_DNS_QUERY_REQUEST"

    goto :goto_0

    .line 269
    :pswitch_16
    const-string v0, "MAPCON_CHANGED"

    goto :goto_0

    .line 271
    :pswitch_17
    const-string v0, "RIL_EPDG_STATUS_QUERY"

    goto :goto_0

    .line 273
    :pswitch_18
    const-string v0, "HANDLE_FQDN_QUERY_FAILED"

    goto :goto_0

    .line 275
    :pswitch_19
    const-string v0, "HANDLE_FQDN_QUERY_RETRY"

    goto :goto_0

    .line 277
    :pswitch_1a
    const-string v0, "TIMER_TEPDG_EXPIRED"

    goto :goto_0

    .line 279
    :pswitch_1b
    const-string v0, "TIMER_TEPDGLTE_EXPIRED"

    goto :goto_0

    .line 281
    :pswitch_1c
    const-string v0, "TIMER_TEPDGHODELAYWIFI_EXPIRED"

    goto :goto_0

    .line 283
    :pswitch_1d
    const-string v0, "TIMER_TEPDG1X_EXPIRED"

    goto :goto_0

    .line 285
    :pswitch_1e
    const-string v0, "TIMER_TEPDGHODELAY_EXPIRED"

    goto :goto_0

    .line 287
    :pswitch_1f
    const-string v0, "START_TIMER_TEPDGHODELAY"

    goto :goto_0

    .line 289
    :pswitch_20
    const-string v0, "CALL_STATUS_CHANGE"

    goto :goto_0

    .line 291
    :pswitch_21
    const-string v0, "IPME_STATUS_CHANGE"

    goto :goto_0

    .line 293
    :pswitch_22
    const-string v0, "VOLTE_SETTING_CHANGED"

    goto :goto_0

    .line 295
    :pswitch_23
    const-string v0, "IMS_REG_STATUS_CHANGE"

    goto :goto_0

    .line 297
    :pswitch_24
    const-string v0, "TIMER_TEPDG1X_SCAN_EXPIRED"

    goto :goto_0

    .line 299
    :pswitch_25
    const-string v0, "PERIODIC_DPD_TIMER_EXPIRED"

    goto :goto_0

    .line 301
    :pswitch_26
    const-string v0, "VOLTE_PROVISIONING_CHANGED"

    goto :goto_0

    .line 303
    :pswitch_27
    const-string v0, "VOWIFI_PROVISIONING_CHANGED"

    goto :goto_0

    .line 305
    :pswitch_28
    const-string v0, "VOPS_STATUS_CHANGED"

    goto :goto_0

    .line 307
    :pswitch_29
    const-string v0, "SEND_DELAYED_EPDG_REGISTER"

    goto :goto_0

    .line 309
    :pswitch_2a
    const-string v0, "SEND_EPDG_DEREGISTER"

    goto :goto_0

    .line 311
    :pswitch_2b
    const-string v0, "TIMER_TEPDGWIFIRSSIDELAY_EXPIRED"

    goto/16 :goto_0

    .line 313
    :pswitch_2c
    const-string v0, "START_STOP_WIFI_RSSI_INTENT_DELAY_TIMER"

    goto/16 :goto_0

    .line 315
    :pswitch_2d
    const-string v0, "RIL_IIL_SSAC_INFO_UPDATE"

    goto/16 :goto_0

    .line 317
    :pswitch_2e
    const-string v0, "EPDG_WFCPROFILE_READ"

    goto/16 :goto_0

    .line 319
    :pswitch_2f
    const-string v0, "EPDG_IMS_READY"

    goto/16 :goto_0

    .line 321
    :pswitch_30
    const-string v0, "TIMER_TEPDG_WIFI_IPCONFIG_EXPIRED"

    goto/16 :goto_0

    .line 323
    :pswitch_31
    const-string v0, "NATT_KEEPALIVE_TIMER_EXPIRED"

    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_16
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_25
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_21
        :pswitch_31
    .end packed-switch
.end method
