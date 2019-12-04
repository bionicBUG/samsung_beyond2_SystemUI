.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$koX1GFjasg--3ggTh4yCj7Y26wE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QSClock$KeyguardServiceBoxCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$koX1GFjasg--3ggTh4yCj7Y26wE;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-void
.end method


# virtual methods
.method public final onTimeTextChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$koX1GFjasg--3ggTh4yCj7Y26wE;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateClockAnimator()V

    return-void
.end method
