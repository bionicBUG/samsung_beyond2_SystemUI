.class Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;
.super Landroid/app/UserSwitchObserver;
.source "ActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/systemui/splugins/ActivityManagerProxy;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;


# direct methods
.method constructor <init>(Lcom/samsung/systemui/splugins/ActivityManagerProxy;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    iput p1, v0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    .line 34
    invoke-static {}, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy$1;->this$0:Lcom/samsung/systemui/splugins/ActivityManagerProxy;

    iget p0, p0, Lcom/samsung/systemui/splugins/ActivityManagerProxy;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
