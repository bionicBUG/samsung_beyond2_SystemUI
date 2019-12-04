.class Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "SystemUIImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SystemUIImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationListener"
.end annotation


# instance fields
.field private mSlotId:I

.field final synthetic this$0:Lcom/android/systemui/util/SystemUIImsManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;Lcom/android/systemui/util/SystemUIImsManager$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;-><init>(Lcom/android/systemui/util/SystemUIImsManager;)V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result p2

    const-string v0, "RegistrationListener onDeregistered["

    const-string v1, "SystemUIImsManager"

    const/16 v2, 0xf

    if-ne p2, v2, :cond_0

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : TYPE_MOBILE_EMERGENCY "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p2, "mmtel"

    .line 371
    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 372
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object p1, p1, p2

    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$802(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 373
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object p1, p1, p2

    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 374
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object p1, p1, p2

    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : voice profiles are Disconnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    .line 378
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {p1}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object p1, p1, p2

    invoke-static {p1, v2}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : VoWifi is Disconnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : non- MMTEL_VOICE "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SystemUIImsManager;->fireImsRegStateChangedCallback(I)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    const-string v1, "RegistrationListener onRegistered["

    const-string v2, "SystemUIImsManager"

    const/16 v3, 0xf

    if-ne v0, v3, :cond_0

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : TYPE_MOBILE_EMERGENCY "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "mmtel"

    .line 334
    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-eqz v0, :cond_4

    .line 335
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v5, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 343
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v4

    invoke-static {v0, v5}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$702(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v4

    invoke-static {v0, v3}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : MMTEL_VOICE. But, NetworkType is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 338
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v3

    invoke-static {v0, v5}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : VoWifi is Connected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    :cond_4
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 350
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v4

    invoke-static {v0, v3}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$602(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : VoWifi is Disconnected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : non- MMTEL_VOICE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_1
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_WIFI_CALLING_ICON:Z

    if-eqz v0, :cond_6

    .line 357
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$802(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;Z)Z

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] : mEpdgRegState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;->access$800(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SystemUIImsManager;->fireImsRegStateChangedCallback(I)V

    return-void
.end method

.method public setSlotId(I)V
    .locals 0

    .line 324
    iput p1, p0, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->mSlotId:I

    return-void
.end method
