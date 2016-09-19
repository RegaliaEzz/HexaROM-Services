.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMIMEIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1750
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1751
    .local v2, "action":Ljava/lang/String;
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received Intent - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const/16 v24, 0x0

    .line 1753
    .local v24, "userHandleId":I
    if-nez v2, :cond_1

    .line 1754
    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "failed. action is null."

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1757
    :cond_1
    const-string v3, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1758
    const-string/jumbo v3, "result"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1759
    .local v22, "status":I
    const-string v3, "account_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1760
    .local v6, "accId":J
    const-string v3, "certificate_result_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1761
    .local v18, "resultId":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v17

    .line 1762
    .local v17, "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    if-nez v17, :cond_2

    .line 1763
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed. no registed work. id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1767
    :cond_2
    const/4 v3, -0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 1768
    const-string/jumbo v3, "smime_type"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 1769
    .local v21, "smime_type":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    iget v4, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1770
    .local v4, "adminUid":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    iget v5, v3, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1771
    .local v5, "containerId":I
    const/16 v20, 0x0

    .line 1772
    .local v20, "ret":Z
    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_4

    .line 1773
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCertForEncryption"

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    .line 1774
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Enryption. ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_4
    const/4 v3, 0x3

    move/from16 v0, v21

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    .line 1777
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCertForSigning"

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    .line 1778
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Signing. ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_6
    if-eqz v20, :cond_7

    .line 1782
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to SMIME Certificate ."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1785
    :cond_7
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to SMIME Certificate ."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1788
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v6    # "accId":J
    .end local v17    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v18    # "resultId":J
    .end local v20    # "ret":Z
    .end local v21    # "smime_type":I
    .end local v22    # "status":I
    :cond_8
    const-string v3, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1789
    const-string v3, "ExchangeAccountPolicy"

    const-string v8, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    const-string/jumbo v3, "result"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1792
    .restart local v22    # "status":I
    const-string v3, "account_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1793
    .restart local v6    # "accId":J
    const-string/jumbo v3, "smime_type"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 1794
    .local v23, "type":I
    const-string v3, "certificate_result_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1796
    .restart local v18    # "resultId":J
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v17

    .line 1797
    .restart local v17    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    if-eqz v17, :cond_11

    .line 1798
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    iget v4, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1799
    .restart local v4    # "adminUid":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    iget v5, v3, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1800
    .restart local v5    # "containerId":I
    const/4 v3, -0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_b

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_b

    .line 1801
    const/16 v20, 0x0

    .line 1802
    .restart local v20    # "ret":Z
    if-nez v23, :cond_9

    .line 1803
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 1804
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    const/4 v13, 0x2

    const/4 v14, 0x1

    move-wide v10, v6

    move v12, v5

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z
    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v20

    .line 1805
    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "release SMIME Certificate for Enryption (Alias) by null."

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_9
    :goto_1
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    .line 1815
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 1816
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    const/4 v13, 0x3

    const/4 v14, 0x1

    move-wide v10, v6

    move v12, v5

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z
    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v20

    .line 1817
    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "release SMIME Certificate for Signing (Alias) by null."

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_a
    :goto_2
    if-eqz v20, :cond_f

    .line 1824
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 1825
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to release SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1843
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v17    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v20    # "ret":Z
    :cond_b
    :goto_3
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v16, "intentRec":Landroid/content/Intent;
    const-string v3, "account_id"

    const-string v8, "account_id"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1845
    const-string/jumbo v3, "result"

    const-string/jumbo v8, "result"

    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1846
    const-string v3, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    const-string/jumbo v8, "smime_type"

    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v3

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1808
    .end local v16    # "intentRec":Landroid/content/Intent;
    .restart local v4    # "adminUid":I
    .restart local v5    # "containerId":I
    .restart local v17    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .restart local v20    # "ret":Z
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCertForEncryption"

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    .line 1809
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Enryption (Alias). ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1839
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v17    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v20    # "ret":Z
    :catch_0
    move-exception v15

    .line 1840
    .local v15, "e":Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string v8, "Failed to apply SMIME Alis Policy on success."

    invoke-static {v3, v8, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1819
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v4    # "adminUid":I
    .restart local v5    # "containerId":I
    .restart local v17    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .restart local v20    # "ret":Z
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCertForSigning"

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    .line 1820
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Signing (Alias). ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1827
    :cond_e
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1830
    :cond_f
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 1831
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to release SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1833
    :cond_10
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to SMIME Certificate (Alias)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1837
    .end local v4    # "adminUid":I
    .end local v5    # "containerId":I
    .end local v20    # "ret":Z
    :cond_11
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed. no registed work. id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 1851
    .end local v6    # "accId":J
    .end local v17    # "mCert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v18    # "resultId":J
    .end local v22    # "status":I
    .end local v23    # "type":I
    :cond_12
    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "no Defined Intent."

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
