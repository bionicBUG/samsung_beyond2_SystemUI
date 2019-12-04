.class public Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;
.super Ljava/lang/Object;
.source "NavigationCanMoveInterator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/Interactor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 12
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator$1;-><init>(Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    return-void
.end method
