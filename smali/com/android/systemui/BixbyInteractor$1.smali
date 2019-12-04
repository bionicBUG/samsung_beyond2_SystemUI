.class Lcom/android/systemui/BixbyInteractor$1;
.super Ljava/lang/Object;
.source "BixbyInteractor.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BixbyInteractor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BixbyInteractor;


# direct methods
.method constructor <init>(Lcom/android/systemui/BixbyInteractor;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/BixbyInteractor$1;->onPluginConnected(Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;Landroid/content/Context;)V
    .locals 1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPluginConnected    mControllerFactory = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iget-object v0, v0, Lcom/android/systemui/BixbyInteractor;->mControllerFactory:Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BixbyInteractor"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p2, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iput-object p1, p2, Lcom/android/systemui/BixbyInteractor;->mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    .line 35
    iget-object p1, p2, Lcom/android/systemui/BixbyInteractor;->mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    iget-object v0, p2, Lcom/android/systemui/BixbyInteractor;->mControllerFactory:Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;

    iget-object p2, p2, Lcom/android/systemui/BixbyInteractor;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p2}, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;->init(Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;Landroid/content/Context;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    iget-object p0, p0, Lcom/android/systemui/BixbyInteractor;->mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;->start()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/BixbyInteractor$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;I)V
    .locals 0

    const-string p1, "BixbyInteractor"

    const-string p2, "onPluginDisconnected"

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p0, p0, Lcom/android/systemui/BixbyInteractor$1;->this$0:Lcom/android/systemui/BixbyInteractor;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/BixbyInteractor;->mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    return-void
.end method
