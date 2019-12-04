.class public final synthetic Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$PayHandlerInterator$CxMyMBrl2Hx61qUc42A_azXsMnE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SecNavigationBarView$OnInsetsChangedListener;


# instance fields
.field private final synthetic f$0:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$PayHandlerInterator$CxMyMBrl2Hx61qUc42A_azXsMnE;->f$0:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final onSPayHintVisibilityChanged(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$PayHandlerInterator$CxMyMBrl2Hx61qUc42A_azXsMnE;->f$0:Ljava/util/function/BiConsumer;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;->lambda$addCallback$0(Ljava/util/function/BiConsumer;ZI)V

    return-void
.end method
