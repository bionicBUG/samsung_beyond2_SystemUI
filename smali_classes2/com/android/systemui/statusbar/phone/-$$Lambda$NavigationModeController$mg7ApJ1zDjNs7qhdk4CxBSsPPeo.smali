.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$mg7ApJ1zDjNs7qhdk4CxBSsPPeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$mg7ApJ1zDjNs7qhdk4CxBSsPPeo;->f$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$mg7ApJ1zDjNs7qhdk4CxBSsPPeo;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$mg7ApJ1zDjNs7qhdk4CxBSsPPeo;->f$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$mg7ApJ1zDjNs7qhdk4CxBSsPPeo;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->lambda$updateCurrentInteractionMode$2$NavigationModeController(I)V

    return-void
.end method
