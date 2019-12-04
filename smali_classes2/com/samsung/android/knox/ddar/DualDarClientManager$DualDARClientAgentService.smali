.class Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "DualDarClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ddar/DualDarClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DualDARClientAgentService"
.end annotation


# instance fields
.field private mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;Lcom/samsung/android/knox/ddar/DualDarClientManager$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string p1, "dual_dar_response"

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-class v1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "ORIGINATING_SECURE_CLIENT_ID"

    .line 140
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "CLEAR_RESET_PASSWORD_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "ON_PASSWORD2_AUTH"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "ON_BRINGUP"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_3
    const-string v3, "ON_WORKSPACE_CREATION"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_1

    :sswitch_4
    const-string v3, "ON_DATA_LOCK_STATE_CHANGE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto :goto_1

    :sswitch_5
    const-string v3, "RESET_PASSWORD_WITH_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v3, "IS_SUPPORTED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_1

    :sswitch_7
    const-string v3, "ON_PASSWORD2_CHANGE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_8
    const-string v3, "SET_RESET_PASSWORD_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_9
    const-string v3, "ON_WORKSPACE_DESTROY"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    move p2, v5

    :goto_1
    const-string v3, "RESET_PASSWORD_TOKEN"

    const-string v6, "NEW_PASSWORD"

    const-string v7, "EXISTING_PASSWORD"

    const-string v8, "RESET_PASSWORD_TOKEN_HANDLE"

    const-string v9, "user_id"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 214
    :pswitch_0
    :try_start_1
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "is_data_locked"

    .line 215
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 216
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDataLockStateChange(IZ)V

    .line 217
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_1
    const-string p2, "FEATURE"

    .line 208
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 209
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->isSupported(I)Z

    move-result p0

    .line 210
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 197
    :pswitch_2
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 198
    iget-object v4, p0, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 199
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 200
    iget-object v4, p0, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 201
    iget-object v3, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v4, p2

    move-object v5, v10

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onResetPasswordWithToken(I[BJ[B)Z

    move-result p0

    .line 202
    invoke-static {v10}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    .line 203
    invoke-static {p3}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    .line 204
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 189
    :pswitch_3
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 190
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 191
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClearResetPasswordToken(IJ)V

    .line 193
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 178
    :pswitch_4
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 179
    iget-object v4, p0, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 180
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 181
    iget-object v4, p0, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 182
    iget-object v3, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v4, p2

    move-object v5, v10

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onSetResetPasswordToken(I[BJ[B)Z

    move-result p0

    .line 183
    invoke-static {v10}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    .line 184
    invoke-static {p3}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    .line 185
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 168
    :pswitch_5
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 169
    iget-object v3, p0, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 170
    iget-object v4, p0, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 171
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, v3, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordChange(I[B[B)Z

    move-result p0

    .line 172
    invoke-static {v3}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    .line 173
    invoke-static {p3}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    .line 174
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 160
    :pswitch_6
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 161
    iget-object v3, p0, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v3, v1, p3}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 162
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordAuth(I[B)Z

    move-result p0

    .line 163
    invoke-static {p3}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    .line 164
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 154
    :pswitch_7
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 155
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARDestroyForUser(I)Z

    move-result p0

    .line 156
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 148
    :pswitch_8
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 149
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARSetupForUser(I)Z

    move-result p0

    .line 150
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 144
    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClientBringup()Z

    move-result p0

    .line 145
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p2, "DualDarClientManager"

    const-string p3, "Failed to decrypt function params or complete the function invocation"

    .line 221
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6b189c50 -> :sswitch_9
        -0x5bcb73de -> :sswitch_8
        -0x43c5e5a8 -> :sswitch_7
        -0x3c070447 -> :sswitch_6
        -0x40f8dcc -> :sswitch_5
        0x156556dd -> :sswitch_4
        0x36e621c9 -> :sswitch_3
        0x4f85492d -> :sswitch_2
        0x54a37250 -> :sswitch_1
        0x60847f17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
