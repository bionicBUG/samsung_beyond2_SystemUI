.class public final synthetic Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$NavigationModeInterator$ttCFyK-Eh1F6P86Hevr5wAYeT5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$NavigationModeInterator$ttCFyK-Eh1F6P86Hevr5wAYeT5Y;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/-$$Lambda$NavigationModeInterator$ttCFyK-Eh1F6P86Hevr5wAYeT5Y;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/interactor/NavigationModeInterator;->lambda$addCallback$0(Ljava/util/function/Consumer;I)V

    return-void
.end method
