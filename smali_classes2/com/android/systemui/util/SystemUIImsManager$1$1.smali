.class Lcom/android/systemui/util/SystemUIImsManager$1$1;
.super Ljava/lang/Object;
.source "SystemUIImsManager.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/SystemUIImsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/util/SystemUIImsManager$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/SystemUIImsManager$1;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected mImsManager : slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$200(Lcom/android/systemui/util/SystemUIImsManager;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 87
    iget-object v0, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    new-instance v3, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    iget-object v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-direct {v3, v1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;-><init>(Lcom/android/systemui/util/SystemUIImsManager;)V

    aput-object v3, v0, v2

    .line 88
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    iget-object v0, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    new-instance v3, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    iget-object v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;-><init>(Lcom/android/systemui/util/SystemUIImsManager;Lcom/android/systemui/util/SystemUIImsManager$1;)V

    aput-object v3, v0, v2

    .line 90
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->setSlotId(I)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v2

    iget-object v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v1}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnected mImsManager : slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v2

    iget-object v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v1}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v2, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 100
    iget-object v0, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aput-object v3, v0, v2

    .line 101
    iget-object v0, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aput-object v3, v0, v2

    .line 102
    iget-object v0, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$200(Lcom/android/systemui/util/SystemUIImsManager;)[Z

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    const/4 v1, 0x0

    aput-boolean v1, v0, p0

    return-void
.end method
