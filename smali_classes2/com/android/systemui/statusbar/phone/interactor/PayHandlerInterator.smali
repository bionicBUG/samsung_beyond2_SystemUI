.class public Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;
.super Ljava/lang/Object;
.source "PayHandlerInterator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/Interactor;


# instance fields
.field mListener:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;

.field mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$addCallback$0(Ljava/util/function/BiConsumer;ZI)V
    .locals 0

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$PayHandlerInterator$CxMyMBrl2Hx61qUc42A_azXsMnE;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$PayHandlerInterator$CxMyMBrl2Hx61qUc42A_azXsMnE;-><init>(Ljava/util/function/BiConsumer;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;->mListener:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;->mListener:Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setInsetsChangedListener(Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;)V

    return-void
.end method

.method public setView(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setInsetsChangedListener(Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;)V

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;->mView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    return-void
.end method
