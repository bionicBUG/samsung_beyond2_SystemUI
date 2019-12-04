.class public Lcom/android/systemui/BixbyInteractor;
.super Ljava/lang/Object;
.source "BixbyInteractor.java"


# instance fields
.field mCapsuleInteractor:Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

.field mContext:Landroid/content/Context;

.field mControllerFactory:Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/BixbyInteractor;->mContext:Landroid/content/Context;

    .line 20
    new-instance p1, Lcom/android/systemui/SystemControllerFactory;

    invoke-direct {p1}, Lcom/android/systemui/SystemControllerFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/BixbyInteractor;->mControllerFactory:Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BixbyInteractor mControllerFactory = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/BixbyInteractor;->mControllerFactory:Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BixbyInteractor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    const-string v0, "BixbyInteractor"

    const-string/jumbo v1, "start"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-class v0, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginManager;

    new-instance v1, Lcom/android/systemui/BixbyInteractor$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/BixbyInteractor$1;-><init>(Lcom/android/systemui/BixbyInteractor;)V

    const-class p0, Lcom/samsung/systemui/splugins/bixby2/CapsuleInteractor;

    const/4 v2, 0x0

    .line 29
    invoke-interface {v0, v1, p0, v2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method
