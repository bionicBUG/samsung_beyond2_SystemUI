.class final Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;
.super Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService$Stub;
.source "UcmAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UcmAgentServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;


# direct methods
.method private constructor <init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$1;)V
    .locals 0

    .line 1020
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;-><init>(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;)V

    return-void
.end method


# virtual methods
.method public APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1239
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "UcmAgentService"

    const-string p1, "Not Supported"

    .line 1157
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "booleanresponse"

    const/4 p2, 0x0

    .line 1159
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "errorresponse"

    const/4 p2, 0x3

    .line 1160
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->access$300(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->access$400(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string p0, "UcmAgentService"

    const-string p1, "params is null"

    .line 1107
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "callerUid"

    .line 1111
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1112
    new-instance v1, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyGenParameterSpec;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p4, :cond_1

    const-string v0, "extraArgs"

    .line 1113
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    move-object v10, v0

    move-object v2, v1

    move-object v3, p1

    move v4, p3

    move v5, v8

    move-object v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyGenParameterSpec;-><init>(Ljava/lang/String;IIZIILjava/lang/String;Landroid/os/Bundle;)V

    .line 1114
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, v1, p4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->access$700(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1122
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->access$800(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateWrappedDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1024
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->access$100(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1069
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1219
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDetailErrorMessage(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    :try_start_0
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UcmAgentService"

    const-string v0, "AbstractMethodError in getDetailErrorMessage"

    .line 1247
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInfo()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1234
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1204
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1097
    new-instance v4, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyParameter;

    if-eqz p4, :cond_0

    const-string v0, "extraArgs"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2, v0}, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyParameter;-><init>(IZLandroid/os/Bundle;)V

    .line 1098
    iget-object v0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->access$600(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[B[BLcom/sec/enterprise/knox/ucm/plugin/keystore/KeyParameter;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public notifyChange(ILandroid/os/Bundle;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1057
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "UcmAgentService"

    const-string p1, "Not Supported"

    .line 1170
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "bytearrayresponse"

    const/4 p2, 0x0

    .line 1172
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "errorresponse"

    const/4 p2, 0x3

    .line 1173
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public resetUid(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "UcmAgentService"

    const-string p1, "Not Supported"

    .line 1144
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "booleanresponse"

    const/4 v0, 0x0

    .line 1146
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "errorresponse"

    const/4 v0, 0x3

    .line 1147
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public resetUser(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "UcmAgentService"

    const-string p1, "Not Supported"

    .line 1131
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "booleanresponse"

    const/4 v0, 0x0

    .line 1133
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "errorresponse"

    const/4 v0, 0x3

    .line 1134
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1088
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->access$500(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "UcmAgentService"

    const-string p1, "Not Supported"

    .line 1043
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "booleanresponse"

    const/4 p2, 0x0

    .line 1045
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "errorresponse"

    const/4 p2, 0x3

    .line 1046
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setState(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1194
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->access$200(Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public unwrapDek([B)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1224
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
