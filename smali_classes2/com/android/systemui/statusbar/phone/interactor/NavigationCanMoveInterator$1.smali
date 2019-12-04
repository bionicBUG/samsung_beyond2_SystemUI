.class Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator$1;
.super Ljava/lang/Object;
.source "NavigationCanMoveInterator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;->addCallback(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;

.field final synthetic val$callback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;Ljava/util/function/Consumer;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator$1;->this$0:Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationCanMoveChanged(Z)V
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator$1;->val$callback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    return-void
.end method
