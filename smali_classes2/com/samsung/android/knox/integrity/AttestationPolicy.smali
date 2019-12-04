.class public Lcom/samsung/android/knox/integrity/AttestationPolicy;
.super Ljava/lang/Object;
.source "AttestationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static synthetic access$000(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/integrity/AttestationPolicy;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private attestationInternal([BI)Landroid/content/Intent;
    .locals 5

    const/4 v0, -0x2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p1, p2}, Landroid/service/tima/ITimaService;->attestation([BI)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 174
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 178
    aget-byte v1, p1, p2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    .line 179
    invoke-direct {p0, v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->checkExitCode(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 181
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 184
    :cond_1
    array-length v1, p1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v1, v1, [B

    .line 185
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, v3, v1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    aget-byte p1, v1, p2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, -0x3

    .line 191
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 193
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 196
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeSuccessReturnIntent([B)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const-string p1, "Blob from TIMA is invalid"

    .line 175
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, "Failed talking with attestation policy"

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private checkExitCode(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_1

    const/16 p0, 0x5b

    if-eq p1, p0, :cond_0

    const/4 p0, -0x2

    goto :goto_0

    :cond_0
    const/4 p0, -0x5

    goto :goto_0

    :cond_1
    const/4 p0, -0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getByteArray(Ljava/lang/String;)[B
    .locals 6

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 235
    :cond_0
    div-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 237
    div-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 238
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 237
    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    .line 157
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, -0x5

    if-nez p1, :cond_1

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 164
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_2

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 168
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->attestationInternal([BI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 244
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x5

    const-string v1, "com.samsung.android.knox.intent.extra.RESULT"

    if-eq p1, v0, :cond_3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const-string v0, "com.samsung.android.knox.intent.extra.ERROR_MSG"

    const/4 v2, -0x2

    if-eq p1, v2, :cond_1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 p1, -0x4

    .line 263
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_4

    .line 265
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_4

    .line 255
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    :goto_0
    return-object p0
.end method

.method private makeSuccessReturnIntent([B)Landroid/content/Intent;
    .locals 2

    .line 204
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.knox.intent.extra.RESULT"

    const/4 v1, 0x0

    .line 205
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.ATTESTATION_DATA"

    .line 206
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object p0
.end method
