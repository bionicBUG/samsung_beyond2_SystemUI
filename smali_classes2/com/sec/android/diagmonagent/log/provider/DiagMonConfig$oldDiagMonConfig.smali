.class Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
.super Ljava/lang/Object;
.source "DiagMonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "oldDiagMonConfig"
.end annotation


# instance fields
.field private mAgreeAsString:Ljava/lang/String;

.field private mAgreement:Z

.field private mAuthorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceId:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mTrackingId:Ljava/lang/String;


# virtual methods
.method public getAgree()Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    return p0
.end method

.method public getAgreeAsString()Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthorityList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAuthorityList:Ljava/util/List;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getLogList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mLogList:Ljava/util/List;

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-object p0
.end method

.method public setLogList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mLogList:Ljava/util/List;

    return-void
.end method
