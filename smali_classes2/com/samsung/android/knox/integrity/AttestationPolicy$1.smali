.class Lcom/samsung/android/knox/integrity/AttestationPolicy$1;
.super Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
.source "AttestationPolicy.java"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;


# virtual methods
.method public run()V
    .locals 7

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->nonce:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->access$000(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.android.knox.intent.action.KNOX_ATTESTATION_RESULT"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    invoke-static {v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->access$100(Lcom/samsung/android/knox/integrity/AttestationPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 131
    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;->callingUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 132
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 133
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v5, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    invoke-static {v5}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->access$100(Lcom/samsung/android/knox/integrity/AttestationPolicy;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
