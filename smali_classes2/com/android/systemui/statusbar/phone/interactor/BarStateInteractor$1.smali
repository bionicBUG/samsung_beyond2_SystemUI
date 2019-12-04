.class Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor$1;
.super Ljava/lang/Object;
.source "BarStateInteractor.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor;->addCallback(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor;

.field final synthetic val$callback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor;Ljava/util/function/Consumer;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor$1;->this$0:Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor$1;->val$callback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
