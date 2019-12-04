.class Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor$1;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLinkInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;->addCallback(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;

.field final synthetic val$callback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;Ljava/util/function/Consumer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor$1;->this$0:Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "mlstatus"

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor$1;->val$callback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
