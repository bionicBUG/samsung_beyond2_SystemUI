.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
.super Ljava/lang/Object;
.source "DiagMonConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
    }
.end annotation


# instance fields
.field private mAgreeAsString:Ljava/lang/String;

.field private mAgreement:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field private mServiceVer:Ljava/lang/String;

.field private mTrackingId:Ljava/lang/String;

.field private oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;


# virtual methods
.method public getAgree()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getAgree()Z

    move-result p0

    return p0

    .line 138
    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    return p0
.end method

.method public getAgreeAsString()Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getAgreeAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceVer()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceVer:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getTrackingId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-object p0
.end method
